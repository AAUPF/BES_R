class RainfallsController < ApplicationController
  before_action :set_rainfall, only: [:show, :edit, :update, :destroy]

  # GET /rainfalls
  # GET /rainfalls.json
  def index
    @rainfalls = Rainfall.all
    respond_to do |format|
        format.html { render json: @rainfalls} 
    end
  end 
  def test
    ji = [:WinterRain, :HotWeatherRain, :SouthWestMonsoonRain, :NorthWestMonsoonRain]
    rain_fall_type = params[:rain_fall_type]
     views  = params[:views]
     year  = params[:year]
     compare = params[:compare]

    if rain_fall_type || views

        if views == "Map View"
          l =  rain_fall_type.gsub(" ","")           
           if rain_fall_type  ==  "All"
            b = Rainfall.map_search("All",compare,year,rain_fall_type)
            u = "Total"
            a = Rainfall.map(b,params[:year],rain_fall_type,views)
           else
            b = Rainfall.map_search(params[:search],compare,year,rain_fall_type)
            a = Rainfall.map(b,rain_fall_type,year,ji)
           end
        elsif views == "Table"  
          b = Rainfall.search(params[:search],compare,year)
          a = Rainfall.table(b,rain_fall_type,year)
        else
          @rainfalls = Rainfall.search(params[:search],compare,year,rain_fall_type)
          a = Rainfall.query(@rainfalls,params[:year],rain_fall_type,views,ji)
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
  # GET /rainfalls/1
  # GET /rainfalls/1.json
  def show
  end
  # GET /rainfalls/new
  def new
    @rainfall = Rainfall.new
  end
  # GET /rainfalls/1/edit
  def edit
  end
  def import
    # Module1.import(params[:file])
    Rainfall.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end
  # POST /rainfalls
  # POST /rainfalls.json
  def create
    @rainfall = Rainfall.new(rainfall_params)
    respond_to do |format|
      if @rainfall.save
        format.html { redirect_to @rainfall, notice: 'Rainfall was successfully created.' }
        format.json { render :show, status: :created, location: @rainfall }
      else
        format.html { render :new }
        format.json { render json: @rainfall.errors, status: :unprocessable_entity }
      end
    end
  end
  # PATCH/PUT /rainfalls/1
  # PATCH/PUT /rainfalls/1.json
  def update
    respond_to do |format|
      if @rainfall.update(rainfall_params)
        format.html { redirect_to @rainfall, notice: 'Rainfall was successfully updated.' }
        format.json { render :show, status: :ok, location: @rainfall }
      else
        format.html { render :edit }
        format.json { render json: @rainfall.errors, status: :unprocessable_entity }
      end
    end
  end
  # DELETE /rainfalls/1
  # DELETE /rainfalls/1.json
  def destroy
    @rainfall.destroy
    respond_to do |format|
      format.html { redirect_to rainfalls_url, notice: 'Rainfall was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rainfall
      @rainfall = Rainfall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rainfall_params
      params.require(:rainfall).permit(:Districts, :WinterRain_2016, :HotWeatherRain_2016, :SouthWestMonsoonRain_2016, :NorthWestMonsoonRain_2016, :TotalRainfall_2016, :WinterRain_2017, :HotWeatherRain_2017, :SouthWestMonsoonRain_2017, :Total_2017)
    end
end
