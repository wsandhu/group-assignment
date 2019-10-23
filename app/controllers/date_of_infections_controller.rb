class DateOfInfectionsController < ApplicationController
  before_action :set_date_of_infection, only: [:show, :edit, :update, :destroy]

  # GET /date_of_infections
  # GET /date_of_infections.json
  def index
    @date_of_infections = DateOfInfection.all
  end

  # GET /date_of_infections/1
  # GET /date_of_infections/1.json
  def show
  end

  # GET /date_of_infections/new
  def new
    @date_of_infection = DateOfInfection.new
  end

  # GET /date_of_infections/1/edit
  def edit
  end

  # POST /date_of_infections
  # POST /date_of_infections.json
  def create
    @date_of_infection = DateOfInfection.new(date_of_infection_params)

    respond_to do |format|
      if @date_of_infection.save
        format.html { redirect_to @date_of_infection, notice: 'Date of infection was successfully created.' }
        format.json { render :show, status: :created, location: @date_of_infection }
      else
        format.html { render :new }
        format.json { render json: @date_of_infection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /date_of_infections/1
  # PATCH/PUT /date_of_infections/1.json
  def update
    respond_to do |format|
      if @date_of_infection.update(date_of_infection_params)
        format.html { redirect_to @date_of_infection, notice: 'Date of infection was successfully updated.' }
        format.json { render :show, status: :ok, location: @date_of_infection }
      else
        format.html { render :edit }
        format.json { render json: @date_of_infection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /date_of_infections/1
  # DELETE /date_of_infections/1.json
  def destroy
    @date_of_infection.destroy
    respond_to do |format|
      format.html { redirect_to date_of_infections_url, notice: 'Date of infection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_date_of_infection
      @date_of_infection = DateOfInfection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def date_of_infection_params
      params.require(:date_of_infection).permit(:date, :animal_id)
    end
end
