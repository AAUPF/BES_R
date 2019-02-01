class EducationArtCulture8sController < ApplicationController
  before_action :set_education_art_culture8, only: [:show, :edit, :update, :destroy]

  # GET /education_art_culture8s
  def index
    @education_art_culture8s = EducationArtCulture8.all
  end

  # GET /education_art_culture8s/1
  def show
  end

  # GET /education_art_culture8s/new
  def new
    @education_art_culture8 = EducationArtCulture8.new
  end

def test
  ji = [:Reading_Std_II_Level_Textn_in_Bihar, :Reading_Std_II_Level_Textn_in_India, :Simple_Subtraction_Bihar, :Simple_Subtraction_India]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Type_of_School"
   remove = ""
  #  ji1 = [:Characteristics, :India, :Bihar, :Year]
   if year == "All"
    ji1 = [:Type_of_School, :"2010", :"2012", :"2014",:"2016"]
   else
    if rain_fall_type != "All"
      ji1 = [:Type_of_School, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:Year, :Type_of_School, :Reading_Std_II_Level_Textn_in_Bihar, :Reading_Std_II_Level_Textn_in_India, :Simple_Subtraction_Bihar, :Simple_Subtraction_India, :Indicators]
    end
    
   end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = EducationArtCulture8.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = EducationArtCulture8.map(b,params[:year],rain_fall_type,views)
         else
          b = EducationArtCulture8.map_search(params[:search],compare,year,rain_fall_type)
          a = EducationArtCulture8.map(b,rain_fall_type,year,ji,unit1)
         end
      elsif views == "Table"  
        b = EducationArtCulture8.search(params[:search],compare,year,rain_fall_type,legend)
        a = EducationArtCulture8.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @EducationArtCulture8s = EducationArtCulture8.search(params[:search],compare,year,rain_fall_type,legend)
        a = EducationArtCulture8.query(@EducationArtCulture8s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    EducationArtCulture8.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /education_art_culture8s/1/edit
  def edit
  end

  # POST /education_art_culture8s
  def create
    @education_art_culture8 = EducationArtCulture8.new(education_art_culture8_params)

    if @education_art_culture8.save
      redirect_to @education_art_culture8, notice: 'Education art culture8 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /education_art_culture8s/1
  def update
    if @education_art_culture8.update(education_art_culture8_params)
      redirect_to @education_art_culture8, notice: 'Education art culture8 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /education_art_culture8s/1
  def destroy
    @education_art_culture8.destroy
    redirect_to education_art_culture8s_url, notice: 'Education art culture8 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_education_art_culture8
      @education_art_culture8 = EducationArtCulture8.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def education_art_culture8_params
      params.require(:education_art_culture8).permit(:Year, :Type_of_School, :Reading_Std_II_Level_Textn_in_Bihar, :Reading_Std_II_Level_Textn_in_India, :Simple_Subtraction_Bihar, :Simple_Subtraction_India, :Indicators)
    end
end
