class AnnualSurvey7sController < ApplicationController
  before_action :set_annual_survey7, only: [:show, :edit, :update, :destroy]

  # GET /annual_survey7s
  def index
    @annual_survey7s = AnnualSurvey7.all
  end

  # GET /annual_survey7s/1
  def show
  end

  # GET /annual_survey7s/new
  def new
    @annual_survey7 = AnnualSurvey7.new
  end

def test
  ji = [:Industrial_Group, :India, :Bihar, :Indicator, :Indicator1]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

   search = params[:compare]

   legend = "Industrial_Group"
   remove = ""

   ji1 = [:Industrial_Group, :India, :Bihar, :Bihar_Percentage_Share, :Indicator, :Indicator1]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = AnnualSurvey7.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = AnnualSurvey7.map(b,params[:year],rain_fall_type,views)
         else
          b = AnnualSurvey7.map_search(params[:search],compare,year,rain_fall_type)
          a = AnnualSurvey7.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = AnnualSurvey7.search(params[:search],compare,year,rain_fall_type,legend)
        a = AnnualSurvey7.table(b,rain_fall_type,year,ji1,compare, legend)
      else
        @AnnualSurvey7s = AnnualSurvey7.search(params[:search],compare,year,rain_fall_type,legend)
        a = AnnualSurvey7.query(@AnnualSurvey7s,params[:year],rain_fall_type,views,ji,compare, search, legend, remove)
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
    AnnualSurvey7.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /annual_survey7s/1/edit
  def edit
  end

  # POST /annual_survey7s
  def create
    @annual_survey7 = AnnualSurvey7.new(annual_survey7_params)

    if @annual_survey7.save
      redirect_to @annual_survey7, notice: 'Annual survey7 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /annual_survey7s/1
  def update
    if @annual_survey7.update(annual_survey7_params)
      redirect_to @annual_survey7, notice: 'Annual survey7 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /annual_survey7s/1
  def destroy
    @annual_survey7.destroy
    redirect_to annual_survey7s_url, notice: 'Annual survey7 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_annual_survey7
      @annual_survey7 = AnnualSurvey7.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def annual_survey7_params
      params.require(:annual_survey7).permit(:Industrial_Group, :India, :Bihar, :Indicator, :Indicator1)
    end
end
