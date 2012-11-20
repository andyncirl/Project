class JerseysController < ApplicationController
  # GET /jerseys
  # GET /jerseys.json
  def index
    @jerseys = Jersey.search(params[:search_query])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jerseys }
    end
  end

  # GET /jerseys/1
  # GET /jerseys/1.json
  def show
    @jersey = Jersey.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json:@jersey }
    end
  end

  # GET /jerseys/new

  # GET /jerseys/new.json
  def new
    @jersey = Jersey.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @jersey }
    end
  end

  # GET /jerseys/1/edit
  def edit
    @jersey = Jersey.find(params[:id])
  end

  # POST /jerseys
  # POST /jerseys.json
  def create
    @jersey = Jersey.new(params[:jersey])

    respond_to do |format|
      if @jersey.save
        format.html { redirect_to @jersey, notice: 'Jersey was successfully created.' }
        format.json { render json: @jersey, status: :created, location: @jersey }
      else
        format.html { render action: "new" }
        format.json { render json: @jersey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jerseys/1
  # PUT /jerseys/1.json
  def update
    @jersey = Jersey.find(params[:id])

    respond_to do |format|
      if @jersey.update_attributes(params[:jersey])
        format.html { redirect_to @jersey, notice: 'Jersey was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @jersey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jerseys/1
  # DELETE /jerseys/1.json
  def destroy
    @jersey = Jersey.find(params[:id])
    @jersey.destroy

    respond_to do |format|
      format.html { redirect_to jerseys_url }
      format.json { head :ok }
    end
  end
end
