class PairsController < ApplicationController
  before_filter :login_required
  # GET /pairs
  # GET /pairs.xml
  def index
    @pairs = Pair.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pairs }
    end
  end

  # GET /pairs/1
  # GET /pairs/1.xml
  def show
    @pair = Pair.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pair }
    end
  end

  # GET /pairs/new
  # GET /pairs/new.xml
  def new
    @pair = Pair.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pair }
    end
  end

  # GET /pairs/1/edit
  def edit
    @pair = Pair.find(params[:id])
  end

  # POST /pairs
  # POST /pairs.xml
  def create 
    @device = Device.find(params[:device_id])
    @device_2 = Device.find(params[:pair]['device_pair_id'])
    @pair = Pair.new(:device1_id => params[:pair]['device_pair_id'], :device2_id => params[:device_id])
    
    ## Create Ticket ##
      event = Event.create(:title => 'Pair Created', :body => "Pair created #{Device.find(@pair.device1_id).label_name}
                   and #{Device.find(@pair.device2_id).label_name}")
      event2 = Event.create(:title => 'Pair Created', :body => "Pair created #{Device.find(@pair.device1_id).label_name}
                   and #{Device.find(@pair.device2_id).label_name}")
      @device.events << event
      @device_2.events << event2
    ####

    respond_to do |format|
      if @pair.save
        flash[:notice] = 'Pair was successfully created.'
        format.html { redirect_to(@device) }
        format.xml  { render :xml => @pair, :status => :created, :location => @pair }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pair.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pairs/1
  # PUT /pairs/1.xml
  def update
    @pair = Pair.find(params[:id])

    respond_to do |format|
      if @pair.update_attributes(params[:pair])
        flash[:notice] = 'Pair was successfully updated.'
        format.html { redirect_to(@pair) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pair.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pairs/1
  # DELETE /pairs/1.xml
  def destroy
    @pair = Pair.find(params[:id])
    device1 = Device.find(@pair.device1_id)
    device2 = Device.find(@pair.device2_id)
    
    #device = Device.find(params[:device_id])
    
    
    
    ## Create Ticket ##
      # event = Event.create(:title => 'Pair deleted', :body => "Pair deleted #{Device.find(@pair.device1_id).label_name}
              # and #{Device.find(@pair.device2_id).label_name}")
      event1 = Event.create(:title => 'Pair deleted', :body => "Pair deleted #{device1.label_name}
              and #{device2.label_name}")
      event2 = Event.create(:title => 'Pair deleted', :body => "Pair deleted #{device1.label_name}
              and #{device2.label_name}")
      device1.events << event1
      device2.events << event2
    ####
    
    @pair.destroy

    respond_to do |format|
      format.html { redirect_to request.env["HTTP_REFERER"] }
      format.xml  { head :ok }
    end
  end
end
