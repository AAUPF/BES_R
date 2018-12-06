class EducationArtCulture7sController < ApplicationController
  before_action :set_education_art_culture7, only: [:show, :edit, :update, :destroy]

  # GET /education_art_culture7s
  def index
    @education_art_culture7s = EducationArtCulture7.all
  end

  # GET /education_art_culture7s/1
  def show
  end

  # GET /education_art_culture7s/new
  def new
    @education_art_culture7 = EducationArtCulture7.new
  end

def test
  ji = [:APPROVED_AWP_and_B, :Fund_Released_by_GOI, :Fund_Released_by_GOB, :Total_Fund_Released, :Total_Expenditure, :Expenditure_as_Percentage_of_AWP_and_B]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Programmes"
   remove = "Total"
  #  ji1 = [:Characteristics, :India, :Bihar, :Year]
   if year == "All"
    ji1 = [:Programmes,:"2015-16",:"2016-17"]
   else
    if rain_fall_type != "All"
      ji1 = [:Programmes, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:Programmes, :APPROVED_AWP_and_B, :Fund_Released_by_GOI, :Fund_Released_by_GOB, :Total_Fund_Released, :Total_Expenditure, :Expenditure_as_Percentage_of_AWP_and_B, :Year]
    end
    
   end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = EducationArtCulture7.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = EducationArtCulture7.map(b,params[:year],rain_fall_type,views)
         else
          b = EducationArtCulture7.map_search(params[:search],compare,year,rain_fall_type)
          a = EducationArtCulture7.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = EducationArtCulture7.search(params[:search],compare,year,rain_fall_type,legend)
        a = EducationArtCulture7.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @EducationArtCulture7s = EducationArtCulture7.search(params[:search],compare,year,rain_fall_type,legend)
        a = EducationArtCulture7.query(@EducationArtCulture7s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    EducationArtCulture7.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /education_art_culture7s/1/edit
  def edit
  end

  # POST /education_art_culture7s
  def create
    @education_art_culture7 = EducationArtCulture7.new(education_art_culture7_params)

    if @education_art_culture7.save
      redirect_to @education_art_culture7, notice: 'Education art culture7 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /education_art_culture7s/1
  def update
    if @education_art_culture7.update(education_art_culture7_params)
      redirect_to @education_art_culture7, notice: 'Education art culture7 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /education_art_culture7s/1
  def destroy
    @education_art_culture7.destroy
    redirect_to education_art_culture7s_url, notice: 'Education art culture7 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_education_art_culture7
      @education_art_culture7 = EducationArtCulture7.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def education_art_culture7_params
      params.require(:education_art_culture7).permit(:Programmes, :APPROVED_AWP_and_B, :Fund_Released_by_GOI, :Fund_Released_by_GOB, :Total_Fund_Released, :Total_Expenditure, :Expenditure_as_Percentage_of_AWP_and_B, :Year)
    end
end
