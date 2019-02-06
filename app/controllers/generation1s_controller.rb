class Generation1sController < ApplicationController
  before_action :set_generation1, only: [:show, :edit, :update, :destroy]

  # GET /generation1s
  def index
    @generation1s = Generation1.all
  end

  # GET /generation1s/1
  def show
  end

  # GET /generation1s/new
  def new
    @generation1 = Generation1.new
  end


def test
  ji = [ :Thermal_Coal, :Thermal_Gas, :Thermal_Diesel, :Thermal_Total, :Nuclear, :Hydro_Renewable, :RES_MNRE, :Grand_Total]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   ji1 = [:Sector, :Thermal_Coal, :Thermal_Gas, :Thermal_Diesel, :Thermal_Total, :Nuclear, :Hydro_Renewable, :RES_MNRE, :Grand_Total]
legend = "Sector"

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Generation1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Generation1.map(b,params[:year],rain_fall_type,views)
         else
          b = Generation1.map_search(params[:search],compare,year,rain_fall_type)
          a = Generation1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Generation1.search(params[:search],compare,year,rain_fall_type,legend)
        a = Generation1.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @Generation1s = Generation1.search(params[:search],compare,year,rain_fall_type,legend)
        a = Generation1.query(@Generation1s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    Generation1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /generation1s/1/edit
  def edit
  end

  # POST /generation1s
  def create
    @generation1 = Generation1.new(generation1_params)

    if @generation1.save
      redirect_to @generation1, notice: 'Generation1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /generation1s/1
  def update
    if @generation1.update(generation1_params)
      redirect_to @generation1, notice: 'Generation1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /generation1s/1
  def destroy
    @generation1.destroy
    redirect_to generation1s_url, notice: 'Generation1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generation1
      @generation1 = Generation1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def generation1_params
      params.require(:generation1).permit(:Sector, :Thermal_Coal, :Thermal_Gas, :Thermal_Diesel, :Thermal_Total, :Nuclear, :Hydro_Renewable, :RES_MNRE, :Grand_Total)
    end
end
