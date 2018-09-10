class AnnualSurvey2sController < ApplicationController
  before_action :set_annual_survey2, only: [:show, :edit, :update, :destroy]

  # GET /annual_survey2s
  def index
    @annual_survey2s = AnnualSurvey2.all
  end

  # GET /annual_survey2s/1
  def show
  end

  # GET /annual_survey2s/new
  def new
    @annual_survey2 = AnnualSurvey2.new
  end

def test
  ji = [:Cotribution]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   
   if year == "All"
    ji1 = [:State,:"2014-15",:"2015-16",:"2016-17"]
   else
    ji1 = [:State, :Contribution, :Year]
   end
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = AnnualSurvey2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = AnnualSurvey2.map(b,params[:year],rain_fall_type,views)
         else
          b = AnnualSurvey2.map_search(params[:search],compare,year,rain_fall_type)
          a = AnnualSurvey2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = AnnualSurvey2.search(params[:search],compare,year,rain_fall_type)
        a = AnnualSurvey2.table(b,rain_fall_type,year,ji1,compare)
      else
        @AnnualSurvey2s = AnnualSurvey2.search(params[:search],compare,year,rain_fall_type)
        a = AnnualSurvey2.query(@AnnualSurvey2s,params[:year],rain_fall_type,views,ji,compare,search)
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
    AnnualSurvey2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /annual_survey2s/1/edit
  def edit
  end

  # POST /annual_survey2s
  def create
    @annual_survey2 = AnnualSurvey2.new(annual_survey2_params)

    if @annual_survey2.save
      redirect_to @annual_survey2, notice: 'Annual survey2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /annual_survey2s/1
  def update
    if @annual_survey2.update(annual_survey2_params)
      redirect_to @annual_survey2, notice: 'Annual survey2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /annual_survey2s/1
  def destroy
    @annual_survey2.destroy
    redirect_to annual_survey2s_url, notice: 'Annual survey2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_annual_survey2
      @annual_survey2 = AnnualSurvey2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def annual_survey2_params
      params.require(:annual_survey2).permit(:State, :Cotribution, :Year)
    end
end
