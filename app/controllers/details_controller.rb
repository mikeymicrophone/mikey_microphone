class DetailsController < ApplicationController
  # GET /details
  # GET /details.xml
  def index
    @details = Detail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @details }
    end
  end

  # GET /details/1
  # GET /details/1.xml
  def show
    @detail = Detail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @detail }
    end
  end

  # GET /details/new
  # GET /details/new.xml
  def new
    @detail = Detail.new params[:detail]

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @detail }
    end
  end

  # GET /details/1/edit
  def edit
    @detail = Detail.find(params[:id])
  end

  # POST /details
  # POST /details.xml
  def create
    @detail = Detail.new(params[:detail])

    respond_to do |format|
      if @detail.save
        format.html { redirect_to(@detail, :notice => 'Detail was successfully created.') }
        format.xml  { render :xml => @detail, :status => :created, :location => @detail }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /details/1
  # PUT /details/1.xml
  def update
    @detail = Detail.find(params[:id])

    respond_to do |format|
      if @detail.update_attributes(params[:detail])
        format.html { redirect_to(@detail, :notice => 'Detail was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /details/1
  # DELETE /details/1.xml
  def destroy
    @detail = Detail.find(params[:id])
    @detail.destroy

    respond_to do |format|
      format.html { redirect_to(details_url) }
      format.xml  { head :ok }
    end
  end
end
