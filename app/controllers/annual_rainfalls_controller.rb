class AnnualRainfallsController < ApplicationController
  before_action :set_annual_rainfall, only: [:show, :edit, :update, :destroy]

  # GET /annual_rainfalls
  def index
    @annual_rainfalls = AnnualRainfall.all
  end

  # GET /annual_rainfalls/1
  def show
  end

  # GET /annual_rainfalls/new
  def new
    @annual_rainfall = AnnualRainfall.new
  end

def test
  ji = [:Districts, :January, :February, :March, :April, :May, :June, :July, :August, :September, :October, :November, :December, :Year]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   month = params[:month]
   search = params[:search]



  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = AnnualRainfall.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = AnnualRainfall.map(b,params[:year],rain_fall_type,views)
         else
          b = AnnualRainfall.map_search(params[:search],compare,year,rain_fall_type)
          a = AnnualRainfall.map(b,rain_fall_type,year,ji,unit1)
         end
      elsif views == "Table"  
        b = AnnualRainfall.search(params[:search],compare,year,rain_fall_type,month)
        a = AnnualRainfall.table(b,rain_fall_type,year,ji,compare)
      else
        @AnnualRainfalls = AnnualRainfall.search(params[:search],compare,year,rain_fall_type,month)
        a = AnnualRainfall.query(@AnnualRainfalls,params[:year],rain_fall_type,views,ji,compare,month,search)
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
    AnnualRainfall.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /annual_rainfalls/1/edit
  def edit
  end

  # POST /annual_rainfalls
  def create
    @annual_rainfall = AnnualRainfall.new(annual_rainfall_params)

    if @annual_rainfall.save
      redirect_to @annual_rainfall, notice: 'Annual rainfall was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /annual_rainfalls/1
  def update
    if @annual_rainfall.update(annual_rainfall_params)
      redirect_to @annual_rainfall, notice: 'Annual rainfall was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /annual_rainfalls/1
  def destroy
    @annual_rainfall.destroy
    redirect_to annual_rainfalls_url, notice: 'Annual rainfall was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_annual_rainfall
      @annual_rainfall = AnnualRainfall.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def annual_rainfall_params
      params.require(:annual_rainfall).permit(:Districts, :January, :February, :March, :April, :May, :June, :July, :August, :September, :October, :November, :December, :Year)
    end
end
