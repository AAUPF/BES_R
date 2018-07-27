class ProductionProductivity12sController < ApplicationController
  before_action :set_production_productivity12, only: [:show, :edit, :update, :destroy]

  # GET /production_productivity12s
  def index
    @production_productivity12s = ProductionProductivity12.all
  end

  # GET /production_productivity12s/1
  def show
  end

  # GET /production_productivity12s/new
  def new
    @production_productivity12 = ProductionProductivity12.new
  end

def test
  ji = [:Districts, :Area, :Production, :Yield]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   ji1 = [:Districts, :Area, :Production, :Yield, :Year]
   units = [{Area: "000 Hectare" },{Production: "000 tonnes" },{Yield: "Ton/Hac" }]


   if rain_fall_type == "Area"
        unit1 =  units[0][:Area]
      elsif rain_fall_type == "Production"
        unit1 =  units[1][:Production]
      elsif rain_fall_type == "Yield"
        unit1 =  units[2][:Yield]
        
      else
   end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = ProductionProductivity12.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = ProductionProductivity12.map(b,params[:year],rain_fall_type,views)
         else
          b = ProductionProductivity12.map_search(params[:search],compare,year,rain_fall_type)
          a = ProductionProductivity12.map(b,rain_fall_type,year,ji,unit1)
         end
      elsif views == "Table"  
        b = ProductionProductivity12.search(params[:search],compare,year,rain_fall_type)
        a = ProductionProductivity12.table(b,rain_fall_type,year,ji1,compare)
      else
        @ProductionProductivity12s = ProductionProductivity12.search(params[:search],compare,year,rain_fall_type)
        a = ProductionProductivity12.query(@ProductionProductivity12s,params[:year],rain_fall_type,views,ji,compare)
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
    ProductionProductivity12.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /production_productivity12s/1/edit
  def edit
  end

  # POST /production_productivity12s
  def create
    @production_productivity12 = ProductionProductivity12.new(production_productivity12_params)

    if @production_productivity12.save
      redirect_to @production_productivity12, notice: 'Production productivity12 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /production_productivity12s/1
  def update
    if @production_productivity12.update(production_productivity12_params)
      redirect_to @production_productivity12, notice: 'Production productivity12 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /production_productivity12s/1
  def destroy
    @production_productivity12.destroy
    redirect_to production_productivity12s_url, notice: 'Production productivity12 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_production_productivity12
      @production_productivity12 = ProductionProductivity12.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def production_productivity12_params
      params.require(:production_productivity12).permit(:Districts, :Area, :Production, :Yield, :Year, :Area_Colour, :Production_Colour, :Yield_Colour)
    end
end
