class EducationArtCulture9sController < ApplicationController
  before_action :set_education_art_culture9, only: [:show, :edit, :update, :destroy]

  # GET /education_art_culture9s
  def index
    @education_art_culture9s = EducationArtCulture9.all
  end

  # GET /education_art_culture9s/1
  def show
  end

  # GET /education_art_culture9s/new
  def new
    @education_art_culture9 = EducationArtCulture9.new
  end

def test
  ji = [:Sector, :'2013', :'2014', :'2015', :'2016', :Indicator]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   jip = [ :'2013', :'2014', :'2015', :'2016']


   data = [
    "Central University",
"State Public University",
"Institute of National Importance ",
"State Open University",
"Institute Under State Legislative Act",
"Deemed University",
"Total Universities",
"Research Institute",
"Government Colleges/ Constituent College",
"Local Body Colleges/ Affiliated College",
"P.G Center/Off-Campus Center",
"Recognized Centre",
"Total Colleges",
"Education/ Teacher Training Centre (Primary)",
"Engineering College",
"Total Teacher Training Centre / Engineering Colleges"
  ]
  legend = "Type_of_Institutions"

search = rain_fall_type

   ji1 = [:Sector, :'2013', :'2014', :'2015', :'2016', :Indicator]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = EducationArtCulture9.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = EducationArtCulture9.map(b,params[:year],rain_fall_type,views)
         else
          b = EducationArtCulture9.map_search(params[:search],compare,year,rain_fall_type)
          a = EducationArtCulture9.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = EducationArtCulture9.search(params[:search],compare,year,rain_fall_type)
        a = EducationArtCulture9.new_table(b,rain_fall_type,year,ji1,compare, search, data,legend)
      else
        @EducationArtCulture9s = EducationArtCulture9.search(params[:search],compare,year,rain_fall_type)
        a = EducationArtCulture9.query(@EducationArtCulture9s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    EducationArtCulture9.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /education_art_culture9s/1/edit
  def edit
  end

  # POST /education_art_culture9s
  def create
    @education_art_culture9 = EducationArtCulture9.new(education_art_culture9_params)

    if @education_art_culture9.save
      redirect_to @education_art_culture9, notice: 'Education art culture9 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /education_art_culture9s/1
  def update
    if @education_art_culture9.update(education_art_culture9_params)
      redirect_to @education_art_culture9, notice: 'Education art culture9 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /education_art_culture9s/1
  def destroy
    @education_art_culture9.destroy
    redirect_to education_art_culture9s_url, notice: 'Education art culture9 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_education_art_culture9
      @education_art_culture9 = EducationArtCulture9.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def education_art_culture9_params
      params.require(:education_art_culture9).permit(:Type_of_Institutions, :'2013', :'2014', :'2015', :'2016', :Indicator)
    end
end
