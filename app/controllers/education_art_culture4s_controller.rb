class EducationArtCulture4sController < ApplicationController
  before_action :set_education_art_culture4, only: [:show, :edit, :update, :destroy]

  # GET /education_art_culture4s
  def index
    @education_art_culture4s = EducationArtCulture4.all
  end

  # GET /education_art_culture4s/1
  def show
  end

  # GET /education_art_culture4s/new
  def new
    @education_art_culture4 = EducationArtCulture4.new
  end

# def test
#   ji = [:Year, :Girls, :Boys, :Combined, :Indicator, :Indicator1]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = EducationArtCulture4.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = EducationArtCulture4.map(b,params[:year],rain_fall_type,views)
#          else
#           b = EducationArtCulture4.map_search(params[:search],compare,year,rain_fall_type)
#           a = EducationArtCulture4.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = EducationArtCulture4.search(params[:search],compare,year,rain_fall_type)
#         a = EducationArtCulture4.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @EducationArtCulture4s = EducationArtCulture4.search(params[:search],compare,year,rain_fall_type)
#         a = EducationArtCulture4.query(@EducationArtCulture4s,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [ :Girls, :Boys, :Combined]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search  = params[:search]
  legend = "Indicator"
  legend1 = "Indicator1"
  ji1 =[:Year, :Girls, :Boys, :Combined, :Indicator, :Indicator1]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = EducationArtCulture4.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = EducationArtCulture4.map(b,params[:year],rain_fall_type,views)
         else
          b = EducationArtCulture4.map_search(params[:search],compare,year,rain_fall_type)
          a = EducationArtCulture4.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = EducationArtCulture4.search(params[:search],compare,year,rain_fall_type,legend,legend1)
        a = EducationArtCulture4.table(b,rain_fall_type,year,ji1,compare)
      else
        @EducationArtCulture4s = EducationArtCulture4.search(params[:search],compare,year,rain_fall_type,legend,legend1)
        a = EducationArtCulture4.query(@EducationArtCulture4s,params[:year],rain_fall_type,views,ji,compare)
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
    EducationArtCulture4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /education_art_culture4s/1/edit
  def edit
  end

  # POST /education_art_culture4s
  def create
    @education_art_culture4 = EducationArtCulture4.new(education_art_culture4_params)

    if @education_art_culture4.save
      redirect_to @education_art_culture4, notice: 'Education art culture4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /education_art_culture4s/1
  def update
    if @education_art_culture4.update(education_art_culture4_params)
      redirect_to @education_art_culture4, notice: 'Education art culture4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /education_art_culture4s/1
  def destroy
    @education_art_culture4.destroy
    redirect_to education_art_culture4s_url, notice: 'Education art culture4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_education_art_culture4
      @education_art_culture4 = EducationArtCulture4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def education_art_culture4_params
      params.require(:education_art_culture4).permit(:Year, :Girls, :Boys, :Combined, :Indicator, :Indicator1)
    end
end
