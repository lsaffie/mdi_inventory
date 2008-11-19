class RatePlansController < ApplicationController
  # GET /rate_plans
  # GET /rate_plans.xml
  def index
    @rate_plans = RatePlan.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @rate_plans }
    end
  end

  # GET /rate_plans/1
  # GET /rate_plans/1.xml
  def show
    @rate_plan = RatePlan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @rate_plan }
    end
  end

  # GET /rate_plans/new
  # GET /rate_plans/new.xml
  def new
    @rate_plan = RatePlan.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @rate_plan }
    end
  end

  # GET /rate_plans/1/edit
  def edit
    @rate_plan = RatePlan.find(params[:id])
  end

  # POST /rate_plans
  # POST /rate_plans.xml
  def create
    @rate_plan = RatePlan.new(params[:rate_plan])

    respond_to do |format|
      if @rate_plan.save
        flash[:notice] = 'RatePlan was successfully created.'
        format.html { redirect_to(@rate_plan) }
        format.xml  { render :xml => @rate_plan, :status => :created, :location => @rate_plan }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @rate_plan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rate_plans/1
  # PUT /rate_plans/1.xml
  def update
    @rate_plan = RatePlan.find(params[:id])

    respond_to do |format|
      if @rate_plan.update_attributes(params[:rate_plan])
        flash[:notice] = 'RatePlan was successfully updated.'
        format.html { redirect_to(@rate_plan) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @rate_plan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rate_plans/1
  # DELETE /rate_plans/1.xml
  def destroy
    @rate_plan = RatePlan.find(params[:id])
    @rate_plan.destroy

    respond_to do |format|
      format.html { redirect_to(rate_plans_url) }
      format.xml  { head :ok }
    end
  end
end
