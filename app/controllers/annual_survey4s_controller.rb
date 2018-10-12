class AnnualSurvey4sController < ApplicationController
  before_action :set_annual_survey4, only: [:show, :edit, :update, :destroy]

  # GET /annual_survey4s
  def index
    @annual_survey4s = AnnualSurvey4.all
  end

  # GET /annual_survey4s/1
  def show
  end

  # GET /annual_survey4s/new
  def new
    @annual_survey4 = AnnualSurvey4.new
  end

def test
  ji = [:India, :Bihar]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Indicator"
   remove = ""
  #  ji1 = [:Characteristics, :India, :Bihar, :Year]
   if year == "All"
    ji1 = [:Indicator,"2005-06",
      "2006-07",
      "2007-08",
      "2008-09",
      "2009-10",
      "2010-11",
      "2011-12",
      "2012-13",
      "2013-14",
      "2014-15",
      "CAGR",]
   else
    if rain_fall_type != "All"
      ji1 = [:Indicator, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:Indicator, :India, :Bihar, :Year]
    end
    
   end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = AnnualSurvey4.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = AnnualSurvey4.map(b,params[:year],rain_fall_type,views)
         else
          b = AnnualSurvey4.map_search(params[:search],compare,year,rain_fall_type)
          a = AnnualSurvey4.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = AnnualSurvey4.search(params[:search],compare,year,rain_fall_type,legend)
        a = AnnualSurvey4.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @AnnualSurvey4s = AnnualSurvey4.search(params[:search],compare,year,rain_fall_type,legend)
        a = AnnualSurvey4.query(@AnnualSurvey4s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    AnnualSurvey4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /annual_survey4s/1/edit
  def edit
  end

  # POST /annual_survey4s
  def create
    @annual_survey4 = AnnualSurvey4.new(annual_survey4_params)

    if @annual_survey4.save
      redirect_to @annual_survey4, notice: 'Annual survey4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /annual_survey4s/1
  def update
    if @annual_survey4.update(annual_survey4_params)
      redirect_to @annual_survey4, notice: 'Annual survey4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /annual_survey4s/1
  def destroy
    @annual_survey4.destroy
    redirect_to annual_survey4s_url, notice: 'Annual survey4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_annual_survey4
      @annual_survey4 = AnnualSurvey4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def annual_survey4_params
      params.require(:annual_survey4).permit(:Year, :India, :Bihar, :Indicator)
    end
end
