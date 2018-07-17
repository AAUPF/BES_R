class ProductionProductivity10sController < ApplicationController
  before_action :set_production_productivity10, only: [:show, :edit, :update, :destroy]

  # GET /production_productivity10s
  def index
    @production_productivity10s = ProductionProductivity10.all
  end

  # GET /production_productivity10s/1
  def show
  end

  # GET /production_productivity10s/new
  def new
    @production_productivity10 = ProductionProductivity10.new
  end

def test
  ji = [ :Mango_Area, :Mango_Production, :Guava_Area, :Guava_Production, :Litchi_Area, :Litchi_Production, :Banana_Area, :Banana_Production]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   ji1 = [ :Districts, :Mango_Area, :Mango_Production, :Guava_Area, :Guava_Production, :Litchi_Area, :Litchi_Production, :Banana_Area, :Banana_Production]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = ProductionProductivity10.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = ProductionProductivity10.map(b,params[:year],rain_fall_type,views)
         else
          b = ProductionProductivity10.map_search(params[:search],compare,year,rain_fall_type)
          a = ProductionProductivity10.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = ProductionProductivity10.search(params[:search],compare,year,rain_fall_type)
        a = ProductionProductivity10.table(b,rain_fall_type,year,ji1,compare)
      else
        @ProductionProductivity10s = ProductionProductivity10.search(params[:search],compare,year,rain_fall_type)
        a = ProductionProductivity10.query(@ProductionProductivity10s,params[:year],rain_fall_type,views,ji,compare)
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
    ProductionProductivity10.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /production_productivity10s/1/edit
  def edit
  end

  # POST /production_productivity10s
  def create
    @production_productivity10 = ProductionProductivity10.new(production_productivity10_params)

    if @production_productivity10.save
      redirect_to @production_productivity10, notice: 'Production productivity10 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /production_productivity10s/1
  def update
    if @production_productivity10.update(production_productivity10_params)
      redirect_to @production_productivity10, notice: 'Production productivity10 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /production_productivity10s/1
  def destroy
    @production_productivity10.destroy
    redirect_to production_productivity10s_url, notice: 'Production productivity10 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_production_productivity10
      @production_productivity10 = ProductionProductivity10.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def production_productivity10_params
      params.require(:production_productivity10).permit(:Districts, :Mango_Area, :Mango_Production, :Guava_Area, :Guava_Production, :Litchi_Area, :Litchi_Production, :Banana_Area, :Banana_Production, :Year)
    end
end
