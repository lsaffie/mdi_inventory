class MakersController < ApplicationController
  # GET /makers
  # GET /makers.xml
  def index
    @makers = Maker.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @makers }
    end
  end

  # GET /makers/1
  # GET /makers/1.xml
  def show
    @maker = Maker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @maker }
    end
  end

  # GET /makers/new
  # GET /makers/new.xml
  def new
    @maker = Maker.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @maker }
    end
  end

  # GET /makers/1/edit
  def edit
    @maker = Maker.find(params[:id])
  end

  # POST /makers
  # POST /makers.xml
  def create
    @maker = Maker.new(params[:maker])
    #@maker.models << params[:]

    respond_to do |format|
      if @maker.save
        flash[:notice] = 'Maker was successfully created.'
        format.html { redirect_to(@maker) }
        format.xml  { render :xml => @maker, :status => :created, :location => @maker }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @maker.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /makers/1
  # PUT /makers/1.xml
  def update
    @maker = Maker.find(params[:id])
    @maker.models << Model.find(params[:name]['model_id'])

    respond_to do |format|
      if @maker.update_attributes(params[:maker])
        flash[:notice] = 'Maker was successfully updated.'
        format.html { redirect_to(@maker) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @maker.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /makers/1
  # DELETE /makers/1.xml
  def destroy
    @maker = Maker.find(params[:id])
    @maker.destroy

    respond_to do |format|
      format.html { redirect_to(makers_url) }
      format.xml  { head :ok }
    end
  end
end
