class EducationArtCulture5sController < ApplicationController
  before_action :set_education_art_culture5, only: [:show, :edit, :update, :destroy]

  # GET /education_art_culture5s
  def index
    @education_art_culture5s = EducationArtCulture5.all
  end

  # GET /education_art_culture5s/1
  def show
  end

  # GET /education_art_culture5s/new
  def new
    @education_art_culture5 = EducationArtCulture5.new
  end

# def test
#   ji = [:Year, :Primary, :Secondary, :Higher, :Total, :Total_Budget, :Social_Services]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = EducationArtCulture5.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = EducationArtCulture5.map(b,params[:year],rain_fall_type,views)
#          else
#           b = EducationArtCulture5.map_search(params[:search],compare,year,rain_fall_type)
#           a = EducationArtCulture5.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = EducationArtCulture5.search(params[:search],compare,year,rain_fall_type)
#         a = EducationArtCulture5.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @EducationArtCulture5s = EducationArtCulture5.search(params[:search],compare,year,rain_fall_type)
#         a = EducationArtCulture5.query(@EducationArtCulture5s,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [:Primary, :Secondary, :Higher, :Total, :Total_Budget, :Social_Services]
  rain_fall_type = params[:rain_fall_type]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Year"
   ji1 = [:Year, :Primary, :Secondary, :Higher, :Total, :Total_Budget, :Social_Services]
   rain_fall_type = params[:rain_fall_type]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = EducationArtCulture5.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = EducationArtCulture5.map(b,params[:year],rain_fall_type,views)
         else
          b = EducationArtCulture5.map_search(params[:search],compare,year,rain_fall_type)
          a = EducationArtCulture5.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = EducationArtCulture5.search(params[:search],compare,year,rain_fall_type,legend)
        a = EducationArtCulture5.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @EducationArtCulture5s = EducationArtCulture5.search(params[:search],compare,year,rain_fall_type,legend)
        a = EducationArtCulture5.query(@EducationArtCulture5s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    EducationArtCulture5.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /education_art_culture5s/1/edit
  def edit
  end

  # POST /education_art_culture5s
  def create
    @education_art_culture5 = EducationArtCulture5.new(education_art_culture5_params)

    if @education_art_culture5.save
      redirect_to @education_art_culture5, notice: 'Education art culture5 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /education_art_culture5s/1
  def update
    if @education_art_culture5.update(education_art_culture5_params)
      redirect_to @education_art_culture5, notice: 'Education art culture5 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /education_art_culture5s/1
  def destroy
    @education_art_culture5.destroy
    redirect_to education_art_culture5s_url, notice: 'Education art culture5 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_education_art_culture5
      @education_art_culture5 = EducationArtCulture5.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def education_art_culture5_params
      params.require(:education_art_culture5).permit(:Year, :Primary, :Secondary, :Higher, :Total, :Total_Budget, :Social_Services)
    end
end
