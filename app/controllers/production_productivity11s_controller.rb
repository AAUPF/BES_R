class ProductionProductivity11sController < ApplicationController
  before_action :set_production_productivity11, only: [:show, :edit, :update, :destroy]

  # GET /production_productivity11s
  def index
    @production_productivity11s = ProductionProductivity11.all
  end

  # GET /production_productivity11s/1
  def show
  end

  # GET /production_productivity11s/new
  def new
    @production_productivity11 = ProductionProductivity11.new
  end

def test
  ji = [:Potato_Area, :Potato_Production, :Onion_Area, :Onion_Production, :Cauliflower_Area, :Cauliflower_Production, :Brinjal_Area, :Brinjal_Production]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

   ji1 = [:Districts, :Potato_Area, :Potato_Production, :Onion_Area, :Onion_Production, :Cauliflower_Area, :Cauliflower_Production, :Brinjal_Area, :Brinjal_Production, :Year]

   units = [{Potato_Area: "000 Hectare" },{Onion_Area: "000 Hectare" },{Cauliflower_Area: "000 Hectare" },{Brinjal_Area:  "000 Hectare" },{Potato_Production: "'000 tonnes" },{Onion_Production: "'000 tonnes" },{Cauliflower_Production: "'000 tonnes" },{Brinjal_Production: "'000 tonnes" }]


   if rain_fall_type == "Potato_Area"
        unit1 =  units[0][:Potato_Area]
        ranges = NewricesHelper.ranges1(85,20,10,7,5,3,0)
      elsif rain_fall_type == "Onion_Area"
        unit1 =  units[1][:Onion_Area]
        ranges = NewricesHelper.ranges1(6,3,2,1.5,1,0.5,0)
      elsif rain_fall_type == "Cauliflower_Area"
        unit1 =  units[2][:Cauliflower_Area]
        ranges = NewricesHelper.ranges1(6,3,2,1.5,1,0.5,0)
      elsif rain_fall_type == "Brinjal_Area"
        unit1 =  units[3][:Brinjal_Area]
        ranges = NewricesHelper.ranges1(7,3,2,1.5,1,0.5,0)
      elsif rain_fall_type == "Potato_Production"
        unit1 =  units[4][:Potato_Production]
        ranges = NewricesHelper.ranges1(600,350,250,200,150,100,0)
      elsif rain_fall_type == "Onion_Production"
        unit1 =  units[5][:Onion_Production]
        ranges = NewricesHelper.ranges1(160,83,60,40,20,10,0)
      elsif rain_fall_type == "Cauliflower_Production"
        unit1 =  units[6][:Cauliflower_Production]
        ranges = NewricesHelper.ranges1(100,60,50,40,30,20,0)
      elsif rain_fall_type == "Brinjal_Production"
        unit1 =  units[7][:Brinjal_Production]
        ranges = NewricesHelper.ranges1(145,60,50,40,30,20,0)
      else
   end


  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = ProductionProductivity11.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = ProductionProductivity11.map(b,params[:year],rain_fall_type,views)
         else
          b = ProductionProductivity11.map_search(params[:search],compare,year,rain_fall_type)
          a = ProductionProductivity11.map(b,rain_fall_type,year,ji,unit1,ranges)
         end
      elsif views == "Table"  
        b = ProductionProductivity11.search(params[:search],compare,year,rain_fall_type)
        a = ProductionProductivity11.table(b,rain_fall_type,year,ji1,compare)
      else
        @ProductionProductivity11s = ProductionProductivity11.search(params[:search],compare,year,rain_fall_type)
        a = ProductionProductivity11.query(@ProductionProductivity11s,params[:year],rain_fall_type,views,ji,compare)
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
    ProductionProductivity11.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /production_productivity11s/1/edit
  def edit
  end

  # POST /production_productivity11s
  def create
    @production_productivity11 = ProductionProductivity11.new(production_productivity11_params)

    if @production_productivity11.save
      redirect_to @production_productivity11, notice: 'Production productivity11 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /production_productivity11s/1
  def update
    if @production_productivity11.update(production_productivity11_params)
      redirect_to @production_productivity11, notice: 'Production productivity11 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /production_productivity11s/1
  def destroy
    @production_productivity11.destroy
    redirect_to production_productivity11s_url, notice: 'Production productivity11 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_production_productivity11
      @production_productivity11 = ProductionProductivity11.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def production_productivity11_params
      params.require(:production_productivity11).permit(:Districts, :Potato_Area, :Potato_Production, :Onion_Area, :Onion_Production, :Cauliflower_Area, :Cauliflower_Production, :Brinjal_Area, :Brinjal_Production, :Year, :Potato_Area_Colour, :Potato_Production_Colour, :Onion_Area_Colour, :Onion_Production_Colour, :Cauliflower_Area_Colour, :Cauliflower_Production_Colour, :Brinjal_Area_Colour, :Brinjal_Production_Colour)
    end
end
