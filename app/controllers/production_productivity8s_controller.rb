class ProductionProductivity8sController < ApplicationController
  before_action :set_production_productivity8, only: [:show, :edit, :update, :destroy]

  # GET /production_productivity8s
  def index
    @production_productivity8s = ProductionProductivity8.all
  end

  # GET /production_productivity8s/1
  def show
  end

  # GET /production_productivity8s/new
  def new
    @production_productivity8 = ProductionProductivity8.new
  end

def test
  ji = [ :Area, :Production, :Productivity]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]


   ji1 = [:Districts, :Area, :Production, :Productivity, :Year]
   units = [{Area: "000 Hectare" },{Production: "000 tonnes" },{Productivity: "Quintal/Hac" }]


   if rain_fall_type == "Area"
        unit1 =  units[0][:Area]
      elsif rain_fall_type == "Production"
        unit1 =  units[1][:Production]
      elsif rain_fall_type == "Productivity"
        unit1 =  units[2][:Productivity]
        
      else
   end



  if year == '2015'

    if rain_fall_type == 'Area'
      ranges = NewricesHelper.ranges1(60,55,45,35,25,10,0)
    elsif rain_fall_type == 'Production'
      ranges =  NewricesHelper.ranges1(360,230,150,100,50,25,0)
    elsif rain_fall_type == 'Productivity'
      ranges =  NewricesHelper.ranges1(8000,5000,4500,3500,2500,2000,1000)
    end

  elsif year == '2016'
    if rain_fall_type == 'Area'
      ranges = NewricesHelper.ranges1(89,60,45,35,25,10,0)
    elsif rain_fall_type == 'Production'
      ranges =  NewricesHelper.ranges1(89,60,45,35,25,10,0)
    elsif rain_fall_type == 'Productivity'
      ranges =  NewricesHelper.ranges1(8000,5000,4500,3500,2500,2000,400)
    end
  end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = ProductionProductivity8.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = ProductionProductivity8.map(b,params[:year],rain_fall_type,views)
         else
          b = ProductionProductivity8.map_search(params[:search],compare,year,rain_fall_type)
          a = ProductionProductivity8.map(b,rain_fall_type,year,ji,unit1,ranges)
         end
      elsif views == "Table"  
        b = ProductionProductivity8.search(params[:search],compare,year,rain_fall_type)
        a = ProductionProductivity8.table(b,rain_fall_type,year,ji1,compare)
      else
        @ProductionProductivity8s = ProductionProductivity8.search(params[:search],compare,year,rain_fall_type)
        a = ProductionProductivity8.query(@ProductionProductivity8s,params[:year],rain_fall_type,views,ji,compare)
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
    ProductionProductivity8.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /production_productivity8s/1/edit
  def edit
  end

  # POST /production_productivity8s
  def create
    @production_productivity8 = ProductionProductivity8.new(production_productivity8_params)

    if @production_productivity8.save
      redirect_to @production_productivity8, notice: 'Production productivity8 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /production_productivity8s/1
  def update
    if @production_productivity8.update(production_productivity8_params)
      redirect_to @production_productivity8, notice: 'Production productivity8 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /production_productivity8s/1
  def destroy
    @production_productivity8.destroy
    redirect_to production_productivity8s_url, notice: 'Production productivity8 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_production_productivity8
      @production_productivity8 = ProductionProductivity8.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def production_productivity8_params
      params.require(:production_productivity8).permit(:Districts, :Area, :Production, :Productivity, :Year, :Area_Colour, :Production_Colour, :Productivity_Colour)
    end
end
