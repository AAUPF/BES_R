class AnnualSurvey6sController < ApplicationController
  before_action :set_annual_survey6, only: [:show, :edit, :update, :destroy]

  # GET /annual_survey6s
  def index
    @annual_survey6s = AnnualSurvey6.all
  end

  # GET /annual_survey6s/1
  def show
  end

  # GET /annual_survey6s/new
  def new
    @annual_survey6 = AnnualSurvey6.new
  end

def test
  ji = [:Number_of_Factories_in_Operation, :GVO, :GVA, :GVA_Percentage_Share_in_total, :GVA_as_Percentage_of_GVO, :Number_of_Persons_Engaged, :Persons_engaged_as_Percentage_Share_in_total, :Persons_engaged_as_Employment_per_Factory, :Wages_Salaries_and_Bonus_per_Person_annually_in_Rs]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]

   ji1 = [:Districts, :Number_of_Factories_in_Operation, :GVO, :GVA, :GVA_Percentage_Share_in_total, :GVA_as_Percentage_of_GVO, :Number_of_Persons_Engaged, :Persons_engaged_as_Percentage_Share_in_total, :Persons_engaged_as_Employment_per_Factory, :Wages_Salaries_and_Bonus_per_Person_annually_in_Rs]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = AnnualSurvey6.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = AnnualSurvey6.map(b,params[:year],rain_fall_type,views)
         else
          b = AnnualSurvey6.map_search(params[:search],compare,year,rain_fall_type)
          a = AnnualSurvey6.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = AnnualSurvey6.search(params[:search],compare,year,rain_fall_type)
        a = AnnualSurvey6.table(b,rain_fall_type,year,ji1,compare)
      else
        @AnnualSurvey6s = AnnualSurvey6.search(params[:search],compare,year,rain_fall_type)
        a = AnnualSurvey6.query(@AnnualSurvey6s,params[:year],rain_fall_type,views,ji,compare,search)
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
    AnnualSurvey6.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /annual_survey6s/1/edit
  def edit
  end

  # POST /annual_survey6s
  def create
    @annual_survey6 = AnnualSurvey6.new(annual_survey6_params)

    if @annual_survey6.save
      redirect_to @annual_survey6, notice: 'Annual survey6 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /annual_survey6s/1
  def update
    if @annual_survey6.update(annual_survey6_params)
      redirect_to @annual_survey6, notice: 'Annual survey6 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /annual_survey6s/1
  def destroy
    @annual_survey6.destroy
    redirect_to annual_survey6s_url, notice: 'Annual survey6 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_annual_survey6
      @annual_survey6 = AnnualSurvey6.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def annual_survey6_params
      params.require(:annual_survey6).permit(:Districts, :Number_of_Factories_in_Operation, :GVO, :GVA, :GVA_Percentage_Share_in_total, :GVA_as_Percentage_of_GVO, :Number_of_Persons_Engaged, :Persons_engaged_as_Percentage_Share_in_total, :Persons_engaged_as_Employment_per_Factory, :Wages_Salaries_and_Bonus_per_Person_annually_in_Rs)
    end
end
