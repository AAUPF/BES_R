class ProductionProductivity4sController < ApplicationController
  before_action :set_production_productivity4, only: [:show, :edit, :update, :destroy]

  # GET /production_productivity4s
  def index
    @production_productivity4s = ProductionProductivity4.all
  end

  # GET /production_productivity4s/1
  def show
  end

  # GET /production_productivity4s/new
  def new
    @production_productivity4 = ProductionProductivity4.new
  end

def test
  ji = [:Area, :Production]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

   ji1 = [:Fruits, :Area, :Production, :Year]


  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = ProductionProductivity4.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = ProductionProductivity4.map(b,params[:year],rain_fall_type,views)
         else
          b = ProductionProductivity4.map_search(params[:search],compare,year,rain_fall_type)
          a = ProductionProductivity4.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = ProductionProductivity4.search(params[:search],compare,year,rain_fall_type)
        a = ProductionProductivity4.table(b,rain_fall_type,year,ji1,compare)
      else
        @ProductionProductivity4s = ProductionProductivity4.search(params[:search],compare,year,rain_fall_type)
        a = ProductionProductivity4.query(@ProductionProductivity4s,params[:year],rain_fall_type,views,ji,compare)
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
    ProductionProductivity4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /production_productivity4s/1/edit
  def edit
  end

  # POST /production_productivity4s
  def create
    @production_productivity4 = ProductionProductivity4.new(production_productivity4_params)

    if @production_productivity4.save
      redirect_to @production_productivity4, notice: 'Production productivity4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /production_productivity4s/1
  def update
    if @production_productivity4.update(production_productivity4_params)
      redirect_to @production_productivity4, notice: 'Production productivity4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /production_productivity4s/1
  def destroy
    @production_productivity4.destroy
    redirect_to production_productivity4s_url, notice: 'Production productivity4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_production_productivity4
      @production_productivity4 = ProductionProductivity4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def production_productivity4_params
      params.require(:production_productivity4).permit(:Fruits, :Area, :Production, :Year)
    end
end
