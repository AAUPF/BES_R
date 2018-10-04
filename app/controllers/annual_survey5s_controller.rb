class AnnualSurvey5sController < ApplicationController
  before_action :set_annual_survey5, only: [:show, :edit, :update, :destroy]

  # GET /annual_survey5s
  def index
    @annual_survey5s = AnnualSurvey5.all
  end

  # GET /annual_survey5s/1
  def show
  end

  # GET /annual_survey5s/new
  def new
    @annual_survey5 = AnnualSurvey5.new
  end

def test
  ji = [:India, :Bihar]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Characteristics"
   remove = ""
  #  ji1 = [:Characteristics, :India, :Bihar, :Year]
   if year == "All"
    ji1 = [:Characteristics,:"2012-13",:"2013-14",:"2014-15"]
   else
    if rain_fall_type != "All"
      ji1 = [:Characteristics, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:Characteristics, :India, :Bihar, :Year]
    end
    
   end
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = AnnualSurvey5.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = AnnualSurvey5.map(b,params[:year],rain_fall_type,views)
         else
          b = AnnualSurvey5.map_search(params[:search],compare,year,rain_fall_type)
          a = AnnualSurvey5.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = AnnualSurvey5.search(params[:search],compare,year,rain_fall_type,legend)
        a = AnnualSurvey5.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @AnnualSurvey5s = AnnualSurvey5.search(params[:search],compare,year,rain_fall_type,legend)
        a = AnnualSurvey5.query(@AnnualSurvey5s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    AnnualSurvey5.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /annual_survey5s/1/edit
  def edit
  end

  # POST /annual_survey5s
  def create
    @annual_survey5 = AnnualSurvey5.new(annual_survey5_params)

    if @annual_survey5.save
      redirect_to @annual_survey5, notice: 'Annual survey5 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /annual_survey5s/1
  def update
    if @annual_survey5.update(annual_survey5_params)
      redirect_to @annual_survey5, notice: 'Annual survey5 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /annual_survey5s/1
  def destroy
    @annual_survey5.destroy
    redirect_to annual_survey5s_url, notice: 'Annual survey5 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_annual_survey5
      @annual_survey5 = AnnualSurvey5.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def annual_survey5_params
      params.require(:annual_survey5).permit(:Characteristics, :India, :Bihar, :Year)
    end
end
