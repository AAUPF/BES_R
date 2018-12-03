class DrinkingWaterSupplyAndSanitation3sController < ApplicationController
  before_action :set_drinking_water_supply_and_sanitation3, only: [:show, :edit, :update, :destroy]

  # GET /drinking_water_supply_and_sanitation3s
  def index
    @drinking_water_supply_and_sanitation3s = DrinkingWaterSupplyAndSanitation3.all
  end

  # GET /drinking_water_supply_and_sanitation3s/1
  def show
  end

  # GET /drinking_water_supply_and_sanitation3s/new
  def new
    @drinking_water_supply_and_sanitation3 = DrinkingWaterSupplyAndSanitation3.new
  end

# def test
#   ji = [:Year, :Outlay, :Expenditure, :Outlay_as_Percent_of_Expenditure]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = DrinkingWaterSupplyAndSanitation3.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = DrinkingWaterSupplyAndSanitation3.map(b,params[:year],rain_fall_type,views)
#          else
#           b = DrinkingWaterSupplyAndSanitation3.map_search(params[:search],compare,year,rain_fall_type)
#           a = DrinkingWaterSupplyAndSanitation3.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = DrinkingWaterSupplyAndSanitation3.search(params[:search],compare,year,rain_fall_type)
#         a = DrinkingWaterSupplyAndSanitation3.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @DrinkingWaterSupplyAndSanitation3s = DrinkingWaterSupplyAndSanitation3.search(params[:search],compare,year,rain_fall_type)
#         a = DrinkingWaterSupplyAndSanitation3.query(@DrinkingWaterSupplyAndSanitation3s,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [:Outlay, :Expenditure, :Outlay_as_Percent_of_Expenditure]
  rain_fall_type = params[:rain_fall_type]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Year"
   ji1 = [:Year, :Outlay, :Expenditure, :Outlay_as_Percent_of_Expenditure]
   rain_fall_type = params[:rain_fall_type]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = DrinkingWaterSupplyAndSanitation3.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = DrinkingWaterSupplyAndSanitation3.map(b,params[:year],rain_fall_type,views)
         else
          b = DrinkingWaterSupplyAndSanitation3.map_search(params[:search],compare,year,rain_fall_type)
          a = DrinkingWaterSupplyAndSanitation3.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = DrinkingWaterSupplyAndSanitation3.search(params[:search],compare,year,rain_fall_type,legend)
        a = DrinkingWaterSupplyAndSanitation3.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @DrinkingWaterSupplyAndSanitation3s = DrinkingWaterSupplyAndSanitation3.search(params[:search],compare,year,rain_fall_type,legend)
        a = DrinkingWaterSupplyAndSanitation3.query(@DrinkingWaterSupplyAndSanitation3s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    DrinkingWaterSupplyAndSanitation3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /drinking_water_supply_and_sanitation3s/1/edit
  def edit
  end

  # POST /drinking_water_supply_and_sanitation3s
  def create
    @drinking_water_supply_and_sanitation3 = DrinkingWaterSupplyAndSanitation3.new(drinking_water_supply_and_sanitation3_params)

    if @drinking_water_supply_and_sanitation3.save
      redirect_to @drinking_water_supply_and_sanitation3, notice: 'Drinking water supply and sanitation3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /drinking_water_supply_and_sanitation3s/1
  def update
    if @drinking_water_supply_and_sanitation3.update(drinking_water_supply_and_sanitation3_params)
      redirect_to @drinking_water_supply_and_sanitation3, notice: 'Drinking water supply and sanitation3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /drinking_water_supply_and_sanitation3s/1
  def destroy
    @drinking_water_supply_and_sanitation3.destroy
    redirect_to drinking_water_supply_and_sanitation3s_url, notice: 'Drinking water supply and sanitation3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drinking_water_supply_and_sanitation3
      @drinking_water_supply_and_sanitation3 = DrinkingWaterSupplyAndSanitation3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def drinking_water_supply_and_sanitation3_params
      params.require(:drinking_water_supply_and_sanitation3).permit(:Year, :Outlay, :Expenditure, :Outlay_as_Percent_of_Expenditure)
    end
end
