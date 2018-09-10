class SixthEconomicCensus2sController < ApplicationController
  before_action :set_sixth_economic_census2, only: [:show, :edit, :update, :destroy]

  # GET /sixth_economic_census2s
  def index
    @sixth_economic_census2s = SixthEconomicCensus2.all
  end

  # GET /sixth_economic_census2s/1
  def show
  end

  # GET /sixth_economic_census2s/new
  def new
    @sixth_economic_census2 = SixthEconomicCensus2.new
  end

def test
  ji = [:Number_of_Establishments_Rural, :Number_of_Establishments_Urban, :Total_Number_of_Establishments, :Percentage_Share_Establishments, :Percentage_Share_Population]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   ji1 = [:District, :Number_of_Establishments_Rural, :Number_of_Establishments_Urban, :Total_Number_of_Establishments, :Percentage_Share_Establishments, :Percentage_Share_Population]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = SixthEconomicCensus2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = SixthEconomicCensus2.map(b,params[:year],rain_fall_type,views)
         else
          b = SixthEconomicCensus2.map_search(params[:search],compare,year,rain_fall_type)
          a = SixthEconomicCensus2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = SixthEconomicCensus2.search(params[:search],compare,year,rain_fall_type)
        a = SixthEconomicCensus2.table(b,rain_fall_type,year,ji1,compare)
      else
        @SixthEconomicCensus2s = SixthEconomicCensus2.search(params[:search],compare,year,rain_fall_type)
        a = SixthEconomicCensus2.query(@SixthEconomicCensus2s,params[:year],rain_fall_type,views,ji,compare)
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
    SixthEconomicCensus2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /sixth_economic_census2s/1/edit
  def edit
  end

  # POST /sixth_economic_census2s
  def create
    @sixth_economic_census2 = SixthEconomicCensus2.new(sixth_economic_census2_params)

    if @sixth_economic_census2.save
      redirect_to @sixth_economic_census2, notice: 'Sixth economic census2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sixth_economic_census2s/1
  def update
    if @sixth_economic_census2.update(sixth_economic_census2_params)
      redirect_to @sixth_economic_census2, notice: 'Sixth economic census2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sixth_economic_census2s/1
  def destroy
    @sixth_economic_census2.destroy
    redirect_to sixth_economic_census2s_url, notice: 'Sixth economic census2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sixth_economic_census2
      @sixth_economic_census2 = SixthEconomicCensus2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sixth_economic_census2_params
      params.require(:sixth_economic_census2).permit(:District, :Number_of_Establishments_Rural, :Number_of_Establishments_Urban, :Total_Number_of_Establishments, :Percentage_Share_Establishments, :Percentage_Share_Population)
    end
end
