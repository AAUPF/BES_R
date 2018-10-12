class AnnualSurvey3sController < ApplicationController
  before_action :set_annual_survey3, only: [:show, :edit, :update, :destroy]

  # GET /annual_survey3s
  def index
    @annual_survey3s = AnnualSurvey3.all
  end

  # GET /annual_survey3s/1
  def show
  end

  # GET /annual_survey3s/new
  def new
    @annual_survey3 = AnnualSurvey3.new
  end

def test
  ji = [:Number_of_Factories_Agro_based, :Number_of_Factories_Non_Agro_based, :Total_Number_of_Factories, :Number_of_Factories_in_Operation_Agro_based, :Number_of_Factories_in_Operation_Non_Agro_Based, :Total_Number_of_Factories_in_Operation, :Percentage_of_Agro_based, :Percentage_of_Non_Agro_based, :Percentage_of_Total_Factories, :Percentage_of_Operation_Agro_based, :Percentage_of_Operation_Non_Agro_Based, :Percentage_of_Total_Factories_in_Operation]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
ji1 =   ji = [:Year, :Number_of_Factories_Agro_based, :Number_of_Factories_Non_Agro_based, :Total_Number_of_Factories, :Number_of_Factories_in_Operation_Agro_based, :Number_of_Factories_in_Operation_Non_Agro_Based, :Total_Number_of_Factories_in_Operation, :Percentage_of_Agro_based, :Percentage_of_Non_Agro_based, :Percentage_of_Total_Factories, :Percentage_of_Operation_Agro_based, :Percentage_of_Operation_Non_Agro_Based, :Percentage_of_Total_Factories_in_Operation, :Indicator]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = AnnualSurvey3.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = AnnualSurvey3.map(b,params[:year],rain_fall_type,views)
         else
          b = AnnualSurvey3.map_search(params[:search],compare,year,rain_fall_type)
          a = AnnualSurvey3.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = AnnualSurvey3.search(params[:search],compare,year,rain_fall_type)
        a = AnnualSurvey3.table(b,rain_fall_type,year,ji1,compare)
      else
        @AnnualSurvey3s = AnnualSurvey3.search(params[:search],compare,year,rain_fall_type)
        a = AnnualSurvey3.query(@AnnualSurvey3s,params[:year],rain_fall_type,views,ji,compare)
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
    AnnualSurvey3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /annual_survey3s/1/edit
  def edit
  end

  # POST /annual_survey3s
  def create
    @annual_survey3 = AnnualSurvey3.new(annual_survey3_params)

    if @annual_survey3.save
      redirect_to @annual_survey3, notice: 'Annual survey3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /annual_survey3s/1
  def update
    if @annual_survey3.update(annual_survey3_params)
      redirect_to @annual_survey3, notice: 'Annual survey3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /annual_survey3s/1
  def destroy
    @annual_survey3.destroy
    redirect_to annual_survey3s_url, notice: 'Annual survey3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_annual_survey3
      @annual_survey3 = AnnualSurvey3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def annual_survey3_params
      params.require(:annual_survey3).permit(:Year, :Number_of_Factories_Agro_based, :Number_of_Factories_Non_Agro_based, :Total_Number_of_Factories, :Number_of_Factories_in_Operation_Agro_based, :Number_of_Factories_in_Operation_Non_Agro_Based, :Total_Number_of_Factories_in_Operation, :Percentage_of_Agro_based, :Percentage_of_Non_Agro_based, :Percentage_of_Total_Factories, :Percentage_of_Operation_Agro_based, :Percentage_of_Operation_Non_Agro_Based, :Percentage_of_Total_Factories_in_Operation, :Indicator)
    end
end
