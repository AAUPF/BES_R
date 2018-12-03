class DrinkingWaterSupplyAndSanitation2sController < ApplicationController
  before_action :set_drinking_water_supply_and_sanitation2, only: [:show, :edit, :update, :destroy]

  # GET /drinking_water_supply_and_sanitation2s
  def index
    @drinking_water_supply_and_sanitation2s = DrinkingWaterSupplyAndSanitation2.all
  end

  # GET /drinking_water_supply_and_sanitation2s/1
  def show
  end

  # GET /drinking_water_supply_and_sanitation2s/new
  def new
    @drinking_water_supply_and_sanitation2 = DrinkingWaterSupplyAndSanitation2.new
  end

# def test
#   ji = [:Year, :Outlay, :Expenditure, :Percentage_of_Utilisation]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = DrinkingWaterSupplyAndSanitation2.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = DrinkingWaterSupplyAndSanitation2.map(b,params[:year],rain_fall_type,views)
#          else
#           b = DrinkingWaterSupplyAndSanitation2.map_search(params[:search],compare,year,rain_fall_type)
#           a = DrinkingWaterSupplyAndSanitation2.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = DrinkingWaterSupplyAndSanitation2.search(params[:search],compare,year,rain_fall_type)
#         a = DrinkingWaterSupplyAndSanitation2.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @DrinkingWaterSupplyAndSanitation2s = DrinkingWaterSupplyAndSanitation2.search(params[:search],compare,year,rain_fall_type)
#         a = DrinkingWaterSupplyAndSanitation2.query(@DrinkingWaterSupplyAndSanitation2s,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [:Outlay, :Expenditure, :Percentage_of_Utilisation]
  rain_fall_type = params[:rain_fall_type]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Year"
   ji1 = [:Year, :Outlay, :Expenditure, :Percentage_of_Utilisation]
   rain_fall_type = params[:rain_fall_type]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = DrinkingWaterSupplyAndSanitation2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = DrinkingWaterSupplyAndSanitation2.map(b,params[:year],rain_fall_type,views)
         else
          b = DrinkingWaterSupplyAndSanitation2.map_search(params[:search],compare,year,rain_fall_type)
          a = DrinkingWaterSupplyAndSanitation2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = DrinkingWaterSupplyAndSanitation2.search(params[:search],compare,year,rain_fall_type,legend)
        a = DrinkingWaterSupplyAndSanitation2.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @DrinkingWaterSupplyAndSanitation2s = DrinkingWaterSupplyAndSanitation2.search(params[:search],compare,year,rain_fall_type,legend)
        a = DrinkingWaterSupplyAndSanitation2.query(@DrinkingWaterSupplyAndSanitation2s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    DrinkingWaterSupplyAndSanitation2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /drinking_water_supply_and_sanitation2s/1/edit
  def edit
  end

  # POST /drinking_water_supply_and_sanitation2s
  def create
    @drinking_water_supply_and_sanitation2 = DrinkingWaterSupplyAndSanitation2.new(drinking_water_supply_and_sanitation2_params)

    if @drinking_water_supply_and_sanitation2.save
      redirect_to @drinking_water_supply_and_sanitation2, notice: 'Drinking water supply and sanitation2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /drinking_water_supply_and_sanitation2s/1
  def update
    if @drinking_water_supply_and_sanitation2.update(drinking_water_supply_and_sanitation2_params)
      redirect_to @drinking_water_supply_and_sanitation2, notice: 'Drinking water supply and sanitation2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /drinking_water_supply_and_sanitation2s/1
  def destroy
    @drinking_water_supply_and_sanitation2.destroy
    redirect_to drinking_water_supply_and_sanitation2s_url, notice: 'Drinking water supply and sanitation2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drinking_water_supply_and_sanitation2
      @drinking_water_supply_and_sanitation2 = DrinkingWaterSupplyAndSanitation2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def drinking_water_supply_and_sanitation2_params
      params.require(:drinking_water_supply_and_sanitation2).permit(:Year, :Outlay, :Expenditure, :Percentage_of_Utilisation)
    end
end
