class DevicesController < ApplicationController
  before_filter :login_required
  # GET /devices
  # GET /devices.xml
  def index
    @devices = Device.find(:all, :order => :label_name)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @devices }
    end
  end

  # GET /devices/1
  # GET /devices/1.xml
  def show
    @device = Device.find(params[:id])
    @event = Event.new
    @pairs = Pair.find(:all, :conditions => ['device1_id = ? or device2_id = ?', @device.id,@device.id])
    @search = params[:search]

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @device }
    end
  end

  # GET /devices/new
  # GET /devices/new.xml
  def new
    @device = Device.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @device }
    end
  end

  # GET /devices/1/edit
  def edit
    @device = Device.find(params[:id])
  end

  # POST /devices
  # POST /devices.xml
  def create
    @device = Device.new(params[:device])
    @device.maker = Maker.find(params[:maker]['maker_id'])
    @device.model = Model.find(params[:model]['model_id'])
    @device.type = Type.find(params[:type]['type_id'])
    @device.study = Study.find(params[:study]['study_id'])
    @device.owner = Owner.find(params[:owner]['owner_id'])

    respond_to do |format|
      if @device.save
        flash[:notice] = 'Device was successfully created.'
        format.html { redirect_to(@device) }
        format.xml  { render :xml => @device, :status => :created, :location => @device }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @device.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /devices/1
  # PUT /devices/1.xml
  def update
    @device = Device.find(params[:id])
    
    ## CREATING TICKETS IF NECESSARY
    new_owner = Owner.find(params[:owner]['owner_id'])
    if @device.owner != new_owner
      event = Event.create(:title => 'User change', :body => "The user has changed from #{@device.owner.name} to #{new_owner.name}")
      @device.events << event
    end
    
    new_study = Study.find(params[:study]['study_id'])
    if @device.study != new_study
      event = Event.create(:title => 'Study change', :body => "The study has changed from #{@device.study.name} to #{new_study.name}")
      @device.events << event
    end
    
    if @device.activated != params[:device]['activated']
      event = Event.create(:title => 'activation change', :body => "The activation has changed from #{@device.activated?} to #{params[:device]['activated']}")
      @device.events << event
    end
    
    dt = DateTime.new(params[:device]['activation_date(1i)'].to_i,params[:device]['activation_date(2i)'].to_i,params[:device]['activation_date(3i)'].to_i,params[:device]['activation_date(4i)'].to_i,params[:device]['activation_date(5i)'].to_i)
    if @device.activation_date != dt
      event = Event.create(:title => 'activation date change', :body => "The activation date has changed from #{@device.activation_date} to #{dt}")
      @device.events << event
    end  
    ###############
        
    @device.maker = Maker.find(params[:maker]['maker_id'])
    @device.type = Type.find(params[:type]['type_id'])
    @device.study = Study.find(params[:study]['study_id'])
    @device.owner = Owner.find(params[:owner]['owner_id'])

    respond_to do |format|
      if @device.update_attributes(params[:device])
        flash[:notice] = 'Device was successfully updated.'
        format.html { redirect_to(@device) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @device.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /devices/1
  # DELETE /devices/1.xml
  def destroy
    @device = Device.find(params[:id])
    @device.destroy

    respond_to do |format|
      format.html { redirect_to(devices_url) }
      format.xml  { head :ok }
    end
  end
end
