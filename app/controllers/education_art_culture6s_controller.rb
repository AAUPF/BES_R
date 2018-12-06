class EducationArtCulture6sController < ApplicationController
  before_action :set_education_art_culture6, only: [:show, :edit, :update, :destroy]

  # GET /education_art_culture6s
  def index
    @education_art_culture6s = EducationArtCulture6.all

    respond_to do |format|
      format.html { render json: @education_art_culture6s}
  end
  end

  # GET /education_art_culture6s/1
  def show
  end

  # GET /education_art_culture6s/new
  def new
    @education_art_culture6 = EducationArtCulture6.new
  end

# def test
#   ji = [:Sector, :'2012-13', :'2013-14', :'2014-15', :'2015-16', :CAGR, :Indicator]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = EducationArtCulture6.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = EducationArtCulture6.map(b,params[:year],rain_fall_type,views)
#          else
#           b = EducationArtCulture6.map_search(params[:search],compare,year,rain_fall_type)
#           a = EducationArtCulture6.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = EducationArtCulture6.search(params[:search],compare,year,rain_fall_type)
#         a = EducationArtCulture6.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @EducationArtCulture6s = EducationArtCulture6.search(params[:search],compare,year,rain_fall_type)
#         a = EducationArtCulture6.query(@EducationArtCulture6s,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [:Sector, :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17', :Indicator]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   jip = [  :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']


   data = [
    "Total Enrolment (in lakhs)",
    "No. of Children Availing MDMs (per day) (in lakhs)",
    "Coverage Percentage",
  ]
  legend = "Area"

search = rain_fall_type

   ji1 = [:Sector, :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17', :Indicator]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = EducationArtCulture6.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = EducationArtCulture6.map(b,params[:year],rain_fall_type,views)
         else
          b = EducationArtCulture6.map_search(params[:search],compare,year,rain_fall_type)
          a = EducationArtCulture6.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = EducationArtCulture6.search(params[:search],compare,year,rain_fall_type)
        a = EducationArtCulture6.new_table(b,rain_fall_type,year,ji1,compare, search, data,legend)
      else
        @EducationArtCulture6s = EducationArtCulture6.search(params[:search],compare,year,rain_fall_type)
        a = EducationArtCulture6.query(@EducationArtCulture6s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    EducationArtCulture6.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /education_art_culture6s/1/edit
  def edit
  end

  # POST /education_art_culture6s
  def create
    @education_art_culture6 = EducationArtCulture6.new(education_art_culture6_params)

    if @education_art_culture6.save
      redirect_to @education_art_culture6, notice: 'Education art culture6 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /education_art_culture6s/1
  def update
    if @education_art_culture6.update(education_art_culture6_params)
      redirect_to @education_art_culture6, notice: 'Education art culture6 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /education_art_culture6s/1
  def destroy
    @education_art_culture6.destroy
    redirect_to education_art_culture6s_url, notice: 'Education art culture6 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_education_art_culture6
      @education_art_culture6 = EducationArtCulture6.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def education_art_culture6_params
      params.require(:education_art_culture6).permit(:Sector, :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17', :Indicator)
    end
end
