class AnnualSurvey1sController < ApplicationController
  before_action :set_annual_survey1, only: [:show, :edit, :update, :destroy]

  # GET /annual_survey1s
  def index
    @annual_survey1s = AnnualSurvey1.all
  end

  # GET /annual_survey1s/1
  def show
  end

  # GET /annual_survey1s/new
  def new
    @annual_survey1 = AnnualSurvey1.new
  end

def test
  ji = [:Annual_Growth_Rate]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
# ji1 = [:Sector, :Annual_Growth_Rate, :Year]
if year == "All"
  ji1 = [:Sector, :"2012-13", :"2013-14",:"2014-15",:"2015-16",:"2016-17"]
 else
  ji1 = [:Sector, :Annual_Growth_Rate, :Year]
 end
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = AnnualSurvey1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = AnnualSurvey1.map(b,params[:year],rain_fall_type,views)
         else
          b = AnnualSurvey1.map_search(params[:search],compare,year,rain_fall_type)
          a = AnnualSurvey1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = AnnualSurvey1.search(params[:search],compare,year,rain_fall_type)
        a = AnnualSurvey1.table(b,rain_fall_type,year,ji1,compare)
      else
        @AnnualSurvey1s = AnnualSurvey1.search(params[:search],compare,year,rain_fall_type)
        a = AnnualSurvey1.query(@AnnualSurvey1s,params[:year],rain_fall_type,views,ji,compare,search)
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
    AnnualSurvey1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /annual_survey1s/1/edit
  def edit
  end

  # POST /annual_survey1s
  def create
    @annual_survey1 = AnnualSurvey1.new(annual_survey1_params)

    if @annual_survey1.save
      redirect_to @annual_survey1, notice: 'Annual survey1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /annual_survey1s/1
  def update
    if @annual_survey1.update(annual_survey1_params)
      redirect_to @annual_survey1, notice: 'Annual survey1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /annual_survey1s/1
  def destroy
    @annual_survey1.destroy
    redirect_to annual_survey1s_url, notice: 'Annual survey1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_annual_survey1
      @annual_survey1 = AnnualSurvey1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def annual_survey1_params
      params.require(:annual_survey1).permit(:Sector, :Annual_Growth_Rate, :Year)
    end
end
