class SixthEconomicCensus1sController < ApplicationController
  before_action :set_sixth_economic_census1, only: [:show, :edit, :update, :destroy]

  # GET /sixth_economic_census1s
  def index
    @sixth_economic_census1s = SixthEconomicCensus1.all
  end

  # GET /sixth_economic_census1s/1
  def show
  end

  # GET /sixth_economic_census1s/new
  def new
    @sixth_economic_census1 = SixthEconomicCensus1.new
  end

def test
  ji = [:Number_2005, :Number_2013, :Percentage_Increase]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]

   data = []
   ji1 = [:Sector,:Indicator,:Number_2005, :Number_2013, :Percentage_Increase]

   jip = [:Number_2005, :Number_2013, :Percentage_Increase]


  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = SixthEconomicCensus1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = SixthEconomicCensus1.map(b,params[:year],rain_fall_type,views)
         else
          b = SixthEconomicCensus1.map_search(params[:search],compare,year,rain_fall_type)
          a = SixthEconomicCensus1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = SixthEconomicCensus1.search(params[:search],compare,year,rain_fall_type)
        a = SixthEconomicCensus1.table(b,rain_fall_type,year,ji1,compare, search, data)
      else
        @SixthEconomicCensus1s = SixthEconomicCensus1.search(params[:search],compare,year,rain_fall_type)
        a = SixthEconomicCensus1.query(@SixthEconomicCensus1s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    SixthEconomicCensus1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /sixth_economic_census1s/1/edit
  def edit
  end

  # POST /sixth_economic_census1s
  def create
    @sixth_economic_census1 = SixthEconomicCensus1.new(sixth_economic_census1_params)

    if @sixth_economic_census1.save
      redirect_to @sixth_economic_census1, notice: 'Sixth economic census1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sixth_economic_census1s/1
  def update
    if @sixth_economic_census1.update(sixth_economic_census1_params)
      redirect_to @sixth_economic_census1, notice: 'Sixth economic census1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sixth_economic_census1s/1
  def destroy
    @sixth_economic_census1.destroy
    redirect_to sixth_economic_census1s_url, notice: 'Sixth economic census1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sixth_economic_census1
      @sixth_economic_census1 = SixthEconomicCensus1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sixth_economic_census1_params
      params.require(:sixth_economic_census1).permit(:Variable1, :Variable2, :Number_2005, :Number_2013, :Percentage_Increase)
    end
end
