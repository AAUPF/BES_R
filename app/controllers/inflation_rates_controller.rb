class InflationRatesController < ApplicationController
  before_action :set_inflation_rate, only: [:show, :edit, :update, :destroy]

  # GET /inflation_rates
  def index
    @inflation_rates = InflationRate.all
  end

  # GET /inflation_rates/1
  def show
  end

  # GET /inflation_rates/new
  def new
    @inflation_rate = InflationRate.new
  end

def test
  ji = [:State, :Sector, :Oct_16_Index_Final, :Oct_17_Index_Provisional, :Inflation_Rate_in_percentage]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = InflationRate.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = InflationRate.map(b,params[:year],rain_fall_type,views)
         else
          b = InflationRate.map_search(params[:search],compare,year,rain_fall_type)
          a = InflationRate.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = InflationRate.search(params[:search],compare,year,rain_fall_type)
        a = InflationRate.table(b,rain_fall_type,year,ji1,compare)
      else
        @InflationRates = InflationRate.search(params[:search],compare,year,rain_fall_type)
        a = InflationRate.query(@InflationRates,params[:year],rain_fall_type,views,ji,compare)
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
    InflationRate.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /inflation_rates/1/edit
  def edit
  end

  # POST /inflation_rates
  def create
    @inflation_rate = InflationRate.new(inflation_rate_params)

    if @inflation_rate.save
      redirect_to @inflation_rate, notice: 'Inflation rate was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /inflation_rates/1
  def update
    if @inflation_rate.update(inflation_rate_params)
      redirect_to @inflation_rate, notice: 'Inflation rate was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /inflation_rates/1
  def destroy
    @inflation_rate.destroy
    redirect_to inflation_rates_url, notice: 'Inflation rate was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inflation_rate
      @inflation_rate = InflationRate.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def inflation_rate_params
      params.require(:inflation_rate).permit(:State, :Sector, :Oct_16_Index_Final, :Oct_17_Index_Provisional, :Inflation_Rate_in_percentage)
    end
end
