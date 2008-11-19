class PurchasersController < ApplicationController
  # GET /purchasers
  # GET /purchasers.xml
  def index
    @purchasers = Purchaser.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @purchasers }
    end
  end

  # GET /purchasers/1
  # GET /purchasers/1.xml
  def show
    @purchaser = Purchaser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @purchaser }
    end
  end

  # GET /purchasers/new
  # GET /purchasers/new.xml
  def new
    @purchaser = Purchaser.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @purchaser }
    end
  end

  # GET /purchasers/1/edit
  def edit
    @purchaser = Purchaser.find(params[:id])
  end

  # POST /purchasers
  # POST /purchasers.xml
  def create
    @purchaser = Purchaser.new(params[:purchaser])

    respond_to do |format|
      if @purchaser.save
        flash[:notice] = 'Purchaser was successfully created.'
        format.html { redirect_to(@purchaser) }
        format.xml  { render :xml => @purchaser, :status => :created, :location => @purchaser }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @purchaser.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /purchasers/1
  # PUT /purchasers/1.xml
  def update
    @purchaser = Purchaser.find(params[:id])

    respond_to do |format|
      if @purchaser.update_attributes(params[:purchaser])
        flash[:notice] = 'Purchaser was successfully updated.'
        format.html { redirect_to(@purchaser) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @purchaser.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /purchasers/1
  # DELETE /purchasers/1.xml
  def destroy
    @purchaser = Purchaser.find(params[:id])
    @purchaser.destroy

    respond_to do |format|
      format.html { redirect_to(purchasers_url) }
      format.xml  { head :ok }
    end
  end
end
