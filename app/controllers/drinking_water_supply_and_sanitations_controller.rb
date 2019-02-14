class DrinkingWaterSupplyAndSanitationsController < ApplicationController
  before_action :set_drinking_water_supply_and_sanitation, only: [:show, :edit, :update, :destroy]

  # GET /drinking_water_supply_and_sanitations
  def index
    @drinking_water_supply_and_sanitations = DrinkingWaterSupplyAndSanitation.all
  end

  # GET /drinking_water_supply_and_sanitations/1
  def show
  end

  # GET /drinking_water_supply_and_sanitations/new
  def new
    @drinking_water_supply_and_sanitation = DrinkingWaterSupplyAndSanitation.new
  end

  def test
    ji = [:Contaminants, :Affected_Districts]
    rain_fall_type = params[:rain_fall_type]
     views  = params[:views]
     year  = params[:year]
     compare = params[:compare]
     search = params[:search]
     legend = "Contaminants"
  
  if rain_fall_type != "All"
    ji1 = [:Contaminants, "#{rain_fall_type}"]
  else
    ji1 = [:Contaminants, :Affected_Districts]
  end
    if rain_fall_type || views
  
         b = DrinkingWaterSupplyAndSanitation.search(params[:search],compare,year,rain_fall_type,legend)
          a = DrinkingWaterSupplyAndSanitation.table(b,rain_fall_type,year,ji1,compare,legend)
       
        respond_to do |format|
          format.html { render json:a }
      end
  
    else
      respond_to do |format|
        format.html { render json: "error"}
    end
    end
  
  end


  def import
    # Module1.import(params[:file])
    DrinkingWaterSupplyAndSanitation.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /drinking_water_supply_and_sanitations/1/edit
  def edit
  end

  # POST /drinking_water_supply_and_sanitations
  def create
    @drinking_water_supply_and_sanitation = DrinkingWaterSupplyAndSanitation.new(drinking_water_supply_and_sanitation_params)

    if @drinking_water_supply_and_sanitation.save
      redirect_to @drinking_water_supply_and_sanitation, notice: 'Drinking water supply and sanitation was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /drinking_water_supply_and_sanitations/1
  def update
    if @drinking_water_supply_and_sanitation.update(drinking_water_supply_and_sanitation_params)
      redirect_to @drinking_water_supply_and_sanitation, notice: 'Drinking water supply and sanitation was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /drinking_water_supply_and_sanitations/1
  def destroy
    @drinking_water_supply_and_sanitation.destroy
    redirect_to drinking_water_supply_and_sanitations_url, notice: 'Drinking water supply and sanitation was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drinking_water_supply_and_sanitation
      @drinking_water_supply_and_sanitation = DrinkingWaterSupplyAndSanitation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def drinking_water_supply_and_sanitation_params
      params.require(:drinking_water_supply_and_sanitation).permit(:Contaminants, :Affected_Districts)
    end
end
