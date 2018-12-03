class DrinkingWaterSupplyAndSanitation4sController < ApplicationController
  before_action :set_drinking_water_supply_and_sanitation4, only: [:show, :edit, :update, :destroy]

  # GET /drinking_water_supply_and_sanitation4s
  def index
    @drinking_water_supply_and_sanitation4s = DrinkingWaterSupplyAndSanitation4.all
  end

  # GET /drinking_water_supply_and_sanitation4s/1
  def show
  end

  # GET /drinking_water_supply_and_sanitation4s/new
  def new
    @drinking_water_supply_and_sanitation4 = DrinkingWaterSupplyAndSanitation4.new
  end

# def test
#   ji = [:Sector, :Target, :Achievement, :Achievement_Percentage, :Year]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = DrinkingWaterSupplyAndSanitation4.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = DrinkingWaterSupplyAndSanitation4.map(b,params[:year],rain_fall_type,views)
#          else
#           b = DrinkingWaterSupplyAndSanitation4.map_search(params[:search],compare,year,rain_fall_type)
#           a = DrinkingWaterSupplyAndSanitation4.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = DrinkingWaterSupplyAndSanitation4.search(params[:search],compare,year,rain_fall_type)
#         a = DrinkingWaterSupplyAndSanitation4.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @DrinkingWaterSupplyAndSanitation4s = DrinkingWaterSupplyAndSanitation4.search(params[:search],compare,year,rain_fall_type)
#         a = DrinkingWaterSupplyAndSanitation4.query(@DrinkingWaterSupplyAndSanitation4s,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [:Target, :Achievement, :Achievement_Percentage]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Sector"
   remove = ""
  #  ji1 = [:Characteristics, :India, :Bihar, :Year]
   if year == "All"
    ji1 = [:Sector,:"2012-13",:"2013-14",:"2014-15",:"2015-16",:"2016-17"]
   else
    if rain_fall_type != "All"
      ji1 = [:Sector, "#{rain_fall_type}", :Year]
      
    else
      ji1 =[:Sector, :Target, :Achievement, :Achievement_Percentage, :Year]
    end
    
   end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = DrinkingWaterSupplyAndSanitation4.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = DrinkingWaterSupplyAndSanitation4.map(b,params[:year],rain_fall_type,views)
         else
          b = DrinkingWaterSupplyAndSanitation4.map_search(params[:search],compare,year,rain_fall_type)
          a = DrinkingWaterSupplyAndSanitation4.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = DrinkingWaterSupplyAndSanitation4.search(params[:search],compare,year,rain_fall_type,legend)
        a = DrinkingWaterSupplyAndSanitation4.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @DrinkingWaterSupplyAndSanitation4s = DrinkingWaterSupplyAndSanitation4.search(params[:search],compare,year,rain_fall_type,legend)
        a = DrinkingWaterSupplyAndSanitation4.query(@DrinkingWaterSupplyAndSanitation4s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    DrinkingWaterSupplyAndSanitation4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /drinking_water_supply_and_sanitation4s/1/edit
  def edit
  end

  # POST /drinking_water_supply_and_sanitation4s
  def create
    @drinking_water_supply_and_sanitation4 = DrinkingWaterSupplyAndSanitation4.new(drinking_water_supply_and_sanitation4_params)

    if @drinking_water_supply_and_sanitation4.save
      redirect_to @drinking_water_supply_and_sanitation4, notice: 'Drinking water supply and sanitation4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /drinking_water_supply_and_sanitation4s/1
  def update
    if @drinking_water_supply_and_sanitation4.update(drinking_water_supply_and_sanitation4_params)
      redirect_to @drinking_water_supply_and_sanitation4, notice: 'Drinking water supply and sanitation4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /drinking_water_supply_and_sanitation4s/1
  def destroy
    @drinking_water_supply_and_sanitation4.destroy
    redirect_to drinking_water_supply_and_sanitation4s_url, notice: 'Drinking water supply and sanitation4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drinking_water_supply_and_sanitation4
      @drinking_water_supply_and_sanitation4 = DrinkingWaterSupplyAndSanitation4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def drinking_water_supply_and_sanitation4_params
      params.require(:drinking_water_supply_and_sanitation4).permit(:Sector, :Target, :Achievement, :Achievement_Percentage, :Year)
    end
end
