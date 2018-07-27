class LandsController < ApplicationController
  before_action :set_land, only: [:show, :edit, :update, :destroy]

  # GET /lands
  def index
    @lands = Land.all
  end

  # GET /lands/1
  def show
  end

  # GET /lands/new
  def new
    @land = Land.new
  end

def test
  ji = [:Geographical_area, :Forest, :Barren_unculturable_land, :Non_Agriculture_Land_area, :Non_Agriculture_Perennial_Water_Area, :Non_Agriculture_Temporary_Water_Area, :Culturable_Waste_Land, :Permanent_Pastures, :Tree_Crops, :Fallow_land, :Current_Fallow, :Total_Uncultivable_Land, :Net_Area_Sown, :Gross_Crop_Area, :Cropping_Intensity]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

   ji1 = [:Districts, :Geographical_area, :Forest, :Barren_unculturable_land, :Non_Agriculture_Land_area, :Non_Agriculture_Perennial_Water_Area, :Non_Agriculture_Temporary_Water_Area, :Culturable_Waste_Land, :Permanent_Pastures, :Tree_Crops, :Fallow_land, :Current_Fallow, :Total_Uncultivable_Land, :Net_Area_Sown, :Gross_Crop_Area, :Cropping_Intensity]

   unit1 =  "000 Hectares"


  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Land.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Land.map(b,params[:year],rain_fall_type,views)
         else
          b = Land.map_search(params[:search],compare,year,rain_fall_type)
          a = Land.map(b,rain_fall_type,year,ji,unit1)
         end
      elsif views == "Table"  
        b = Land.search(params[:search],compare,year,rain_fall_type)
        a = Land.table(b,rain_fall_type,year,ji1,compare)
      else
        @Lands = Land.search(params[:search],compare,year,rain_fall_type)
        a = Land.query(@Lands,params[:year],rain_fall_type,views,ji,compare)
      end
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
    Land.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /lands/1/edit
  def edit
  end

  # POST /lands
  def create
    @land = Land.new(land_params)

    if @land.save
      redirect_to @land, notice: 'Land was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /lands/1
  def update
    if @land.update(land_params)
      redirect_to @land, notice: 'Land was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /lands/1
  def destroy
    @land.destroy
    redirect_to lands_url, notice: 'Land was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_land
      @land = Land.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def land_params
      params.require(:land).permit(:Districts, :Geographical_area, :Forest, :Barren_unculturable_land, :Non_Agriculture_Land_area, :Non_Agriculture_Perennial_Water_Area, :Non_Agriculture_Temporary_Water_Area, :Culturable_Waste_Land, :Permanent_Pastures, :Tree_Crops, :Fallow_land, :Current_Fallow, :Total_Uncultivable_Land, :Net_Area_Sown, :Gross_Crop_Area, :Cropping_Intensity, :Geographical_area_Colour, :Forest_Colour, :Barren_unculturable_land_Colour, :Non_Agriculture_Land_area_Colour, :Non_Agriculture_Perennial_Water_Area_Colour, :Non_Agriculture_Temporary_Water_Area_Colour, :Culturable_Waste_Land_Colour, :Permanent_Pastures_Colour, :Tree_Crops_Colour, :_ColourFallow_land, :Current_Fallow_Colour, :Total_Uncultivable_Land_Colour, :Net_Area_Sown_Colour, :Gross_Crop_Area_Colour, :Cropping_Intensity_Colour)
    end
end
