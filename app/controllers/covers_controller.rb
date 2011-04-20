class CoversController < ApplicationController
  # GET /covers
  # GET /covers.xml
  def index
    @covers = Cover.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @covers }
    end
  end

  # GET /covers/1
  # GET /covers/1.xml
  def show
    @cover = Cover.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cover }
    end
  end

  # GET /covers/new
  # GET /covers/new.xml
  def new
    @cover = Cover.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cover }
    end
  end

  # GET /covers/1/edit
  def edit
    @cover = Cover.find(params[:id])
  end

  # POST /covers
  # POST /covers.xml
  def create
    @cover = Cover.new(params[:cover])

    respond_to do |format|
      if @cover.save
        format.html { redirect_to(@cover, :notice => 'Cover was successfully created.') }
        format.xml  { render :xml => @cover, :status => :created, :location => @cover }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cover.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /covers/1
  # PUT /covers/1.xml
  def update
    @cover = Cover.find(params[:id])

    respond_to do |format|
      if @cover.update_attributes(params[:cover])
        format.html { redirect_to(@cover, :notice => 'Cover was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cover.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /covers/1
  # DELETE /covers/1.xml
  def destroy
    @cover = Cover.find(params[:id])
    @cover.destroy

    respond_to do |format|
      format.html { redirect_to(covers_url) }
      format.xml  { head :ok }
    end
  end
end
