class GameroomsController < ApplicationController
  # GET /gamerooms
  # GET /gamerooms.xml
  def index
    @gamerooms = Gameroom.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gamerooms }
    end
  end

  # GET /gamerooms/1
  # GET /gamerooms/1.xml
  def show
    @gameroom = Gameroom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @gameroom }
    end
  end

  # GET /gamerooms/new
  # GET /gamerooms/new.xml
  def new
    @gameroom = Gameroom.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gameroom }
    end
  end

  # GET /gamerooms/1/edit
  def edit
    @gameroom = Gameroom.find(params[:id])
  end

  # POST /gamerooms
  # POST /gamerooms.xml
  def create
    @gameroom = Gameroom.new(params[:gameroom])

    respond_to do |format|
      if @gameroom.save
        format.html { redirect_to(@gameroom, :notice => 'Gameroom was successfully created.') }
        format.xml  { render :xml => @gameroom, :status => :created, :location => @gameroom }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @gameroom.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gamerooms/1
  # PUT /gamerooms/1.xml
  def update
    @gameroom = Gameroom.find(params[:id])

    respond_to do |format|
      if @gameroom.update_attributes(params[:gameroom])
        format.html { redirect_to(@gameroom, :notice => 'Gameroom was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gameroom.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gamerooms/1
  # DELETE /gamerooms/1.xml
  def destroy
    @gameroom = Gameroom.find(params[:id])
    @gameroom.destroy

    respond_to do |format|
      format.html { redirect_to(gamerooms_url) }
      format.xml  { head :ok }
    end
  end
end
