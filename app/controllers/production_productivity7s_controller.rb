class ProductionProductivity7sController < ApplicationController
  before_action :set_production_productivity7, only: [:show, :edit, :update, :destroy]

  # GET /production_productivity7s
  def index
    @production_productivity7s = ProductionProductivity7.all
  end

  # GET /production_productivity7s/1
  def show
  end

  # GET /production_productivity7s/new
  def new
    @production_productivity7 = ProductionProductivity7.new
  end

def test
  ji = [:Area, :Production, :Productivity]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

   ji1 = [:Districts, :Area, :Production, :Productivity, :Year]
   units = [{Area: "000 Hectare" },{Production: "000 tonnes" },{Productivity: "Kg/Hac" }]


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
      ranges = NewricesHelper.ranges1(130,120,90,70,50,30,0)
    elsif rain_fall_type == 'Production'
      ranges =  NewricesHelper.ranges1(280,200,150,100,50,30,0)
    elsif rain_fall_type == 'Productivity'
      ranges =  NewricesHelper.ranges1(3400,3200,2700,2400,2000,1600,1000)
    end

  elsif year == '2016'
    if rain_fall_type == 'Area'
      ranges = NewricesHelper.ranges1(130,118,90,70,50,30,0)
    elsif rain_fall_type == 'Production'
      ranges =  NewricesHelper.ranges1(460,300,250,175,129,80,0)
    elsif rain_fall_type == 'Productivity'
      ranges =  NewricesHelper.ranges1(3700,3400,3000,2700,2400,2200,1900)
    end
  end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = ProductionProductivity7.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = ProductionProductivity7.map(b,params[:year],rain_fall_type,views)
         else
          b = ProductionProductivity7.map_search(params[:search],compare,year,rain_fall_type)
          a = ProductionProductivity7.map(b,rain_fall_type,year,ji,unit1,ranges)
         end
      elsif views == "Table"  
        b = ProductionProductivity7.search(params[:search],compare,year,rain_fall_type)
        a = ProductionProductivity7.table(b,rain_fall_type,year,ji1,compare)
      else
        @ProductionProductivity7s = ProductionProductivity7.search(params[:search],compare,year,rain_fall_type)
        a = ProductionProductivity7.query(@ProductionProductivity7s,params[:year],rain_fall_type,views,ji,compare)
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
    ProductionProductivity7.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /production_productivity7s/1/edit
  def edit
  end

  # POST /production_productivity7s
  def create
    @production_productivity7 = ProductionProductivity7.new(production_productivity7_params)

    if @production_productivity7.save
      redirect_to @production_productivity7, notice: 'Production productivity7 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /production_productivity7s/1
  def update
    if @production_productivity7.update(production_productivity7_params)
      redirect_to @production_productivity7, notice: 'Production productivity7 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /production_productivity7s/1
  def destroy
    @production_productivity7.destroy
    redirect_to production_productivity7s_url, notice: 'Production productivity7 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_production_productivity7
      @production_productivity7 = ProductionProductivity7.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def production_productivity7_params
      params.require(:production_productivity7).permit(:Districts, :Area, :Production, :Productivity, :Year, :Area_Colour, :Production_Colour, :Productivity_Colour)
    end
end
