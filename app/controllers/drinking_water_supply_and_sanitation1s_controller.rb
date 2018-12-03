class DrinkingWaterSupplyAndSanitation1sController < ApplicationController
  before_action :set_drinking_water_supply_and_sanitation1, only: [:show, :edit, :update, :destroy]

  # GET /drinking_water_supply_and_sanitation1s
  def index
    @drinking_water_supply_and_sanitation1s = DrinkingWaterSupplyAndSanitation1.all
  end

  # GET /drinking_water_supply_and_sanitation1s/1
  def show
  end

  # GET /drinking_water_supply_and_sanitation1s/new
  def new
    @drinking_water_supply_and_sanitation1 = DrinkingWaterSupplyAndSanitation1.new
  end

# def test
#   ji = [:Year, :Handpumps_Installed, :Slipped_back_Habitations_or_Water_quality_problems_covered, :IHHL_constructed_under_APL, :IHHL_constructed_under_BPL, :Total_IHHL_constructed]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = DrinkingWaterSupplyAndSanitation1.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = DrinkingWaterSupplyAndSanitation1.map(b,params[:year],rain_fall_type,views)
#          else
#           b = DrinkingWaterSupplyAndSanitation1.map_search(params[:search],compare,year,rain_fall_type)
#           a = DrinkingWaterSupplyAndSanitation1.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = DrinkingWaterSupplyAndSanitation1.search(params[:search],compare,year,rain_fall_type)
#         a = DrinkingWaterSupplyAndSanitation1.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @DrinkingWaterSupplyAndSanitation1s = DrinkingWaterSupplyAndSanitation1.search(params[:search],compare,year,rain_fall_type)
#         a = DrinkingWaterSupplyAndSanitation1.query(@DrinkingWaterSupplyAndSanitation1s,params[:year],rain_fall_type,views,ji,compare)
#       end
#       respond_to do |format|
#         format.html { render json:a }
#     end

#   else
#     respond_to do |format|
#       format.html { render json: "error"}
#   end
#   end

# end



def test
  ji = [:Handpumps_Installed, :Slipped_back_Habitations_or_Water_quality_problems_covered, :IHHL_constructed_under_APL, :IHHL_constructed_under_BPL, :Total_IHHL_constructed]
  rain_fall_type = params[:rain_fall_type]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Year"
   ji1 = [:Year, :Handpumps_Installed, :Slipped_back_Habitations_or_Water_quality_problems_covered, :IHHL_constructed_under_APL, :IHHL_constructed_under_BPL, :Total_IHHL_constructed]
   rain_fall_type = params[:rain_fall_type]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = DrinkingWaterSupplyAndSanitation1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = DrinkingWaterSupplyAndSanitation1.map(b,params[:year],rain_fall_type,views)
         else
          b = DrinkingWaterSupplyAndSanitation1.map_search(params[:search],compare,year,rain_fall_type)
          a = DrinkingWaterSupplyAndSanitation1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = DrinkingWaterSupplyAndSanitation1.search(params[:search],compare,year,rain_fall_type,legend)
        a = DrinkingWaterSupplyAndSanitation1.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @DrinkingWaterSupplyAndSanitation1s = DrinkingWaterSupplyAndSanitation1.search(params[:search],compare,year,rain_fall_type,legend)
        a = DrinkingWaterSupplyAndSanitation1.query(@DrinkingWaterSupplyAndSanitation1s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    DrinkingWaterSupplyAndSanitation1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /drinking_water_supply_and_sanitation1s/1/edit
  def edit
  end

  # POST /drinking_water_supply_and_sanitation1s
  def create
    @drinking_water_supply_and_sanitation1 = DrinkingWaterSupplyAndSanitation1.new(drinking_water_supply_and_sanitation1_params)

    if @drinking_water_supply_and_sanitation1.save
      redirect_to @drinking_water_supply_and_sanitation1, notice: 'Drinking water supply and sanitation1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /drinking_water_supply_and_sanitation1s/1
  def update
    if @drinking_water_supply_and_sanitation1.update(drinking_water_supply_and_sanitation1_params)
      redirect_to @drinking_water_supply_and_sanitation1, notice: 'Drinking water supply and sanitation1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /drinking_water_supply_and_sanitation1s/1
  def destroy
    @drinking_water_supply_and_sanitation1.destroy
    redirect_to drinking_water_supply_and_sanitation1s_url, notice: 'Drinking water supply and sanitation1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drinking_water_supply_and_sanitation1
      @drinking_water_supply_and_sanitation1 = DrinkingWaterSupplyAndSanitation1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def drinking_water_supply_and_sanitation1_params
      params.require(:drinking_water_supply_and_sanitation1).permit(:Year, :Handpumps_Installed, :Slipped_back_Habitations_or_Water_quality_problems_covered, :IHHL_constructed_under_APL, :IHHL_constructed_under_BPL, :Total_IHHL_constructed)
    end
end
