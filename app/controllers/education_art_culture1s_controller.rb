class EducationArtCulture1sController < ApplicationController
  before_action :set_education_art_culture1, only: [:show, :edit, :update, :destroy]

  # GET /education_art_culture1s
  def index
    @education_art_culture1s = EducationArtCulture1.all
  end

  # GET /education_art_culture1s/1
  def show
  end

  # GET /education_art_culture1s/new
  def new
    @education_art_culture1 = EducationArtCulture1.new
  end

# def test
#   ji = [:Year, :Male, :Female, :Persons, :Indicator, :Indicator1]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = EducationArtCulture1.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = EducationArtCulture1.map(b,params[:year],rain_fall_type,views)
#          else
#           b = EducationArtCulture1.map_search(params[:search],compare,year,rain_fall_type)
#           a = EducationArtCulture1.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = EducationArtCulture1.search(params[:search],compare,year,rain_fall_type)
#         a = EducationArtCulture1.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @EducationArtCulture1s = EducationArtCulture1.search(params[:search],compare,year,rain_fall_type)
#         a = EducationArtCulture1.query(@EducationArtCulture1s,params[:year],rain_fall_type,views,ji,compare)
#       end
#       respond_to do |format|
#         format.html { render json:a }
#     end

#   else
#     respond_to do |format|
#       format.html { render json: "error"}
#   end
#   end

# end



def test
  ji = [:Male, :Female, :Persons]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search  = params[:search]
  legend = "Indicator"
  legend1 = "Indicator1"
  ji1 =[:Year, :Male, :Female, :Persons, :Indicator, :Indicator1]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = EducationArtCulture1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = EducationArtCulture1.map(b,params[:year],rain_fall_type,views)
         else
          b = EducationArtCulture1.map_search(params[:search],compare,year,rain_fall_type)
          a = EducationArtCulture1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = EducationArtCulture1.search(params[:search],compare,year,rain_fall_type,legend,legend1)
        a = EducationArtCulture1.table(b,rain_fall_type,year,ji1,compare)
      else
        @EducationArtCulture1s = EducationArtCulture1.search(params[:search],compare,year,rain_fall_type,legend,legend1)
        a = EducationArtCulture1.query(@EducationArtCulture1s,params[:year],rain_fall_type,views,ji,compare)
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
    EducationArtCulture1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /education_art_culture1s/1/edit
  def edit
  end

  # POST /education_art_culture1s
  def create
    @education_art_culture1 = EducationArtCulture1.new(education_art_culture1_params)

    if @education_art_culture1.save
      redirect_to @education_art_culture1, notice: 'Education art culture1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /education_art_culture1s/1
  def update
    if @education_art_culture1.update(education_art_culture1_params)
      redirect_to @education_art_culture1, notice: 'Education art culture1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /education_art_culture1s/1
  def destroy
    @education_art_culture1.destroy
    redirect_to education_art_culture1s_url, notice: 'Education art culture1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_education_art_culture1
      @education_art_culture1 = EducationArtCulture1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def education_art_culture1_params
      params.require(:education_art_culture1).permit(:Year, :Male, :Female, :Persons, :Indicator, :Indicator1)
    end
end
