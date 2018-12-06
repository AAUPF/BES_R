class EducationArtCulture3sController < ApplicationController
  before_action :set_education_art_culture3, only: [:show, :edit, :update, :destroy]

  # GET /education_art_culture3s
  def index
    @education_art_culture3s = EducationArtCulture3.all

    respond_to do |format|
      format.html { render json: @education_art_culture3s}
  end
  end

  # GET /education_art_culture3s/1
  def show
  end

  # GET /education_art_culture3s/new
  def new
    @education_art_culture3 = EducationArtCulture3.new
  end

# def test
#   ji = [:Indicator, :Sector, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16']
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = EducationArtCulture3.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = EducationArtCulture3.map(b,params[:year],rain_fall_type,views)
#          else
#           b = EducationArtCulture3.map_search(params[:search],compare,year,rain_fall_type)
#           a = EducationArtCulture3.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = EducationArtCulture3.search(params[:search],compare,year,rain_fall_type)
#         a = EducationArtCulture3.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @EducationArtCulture3s = EducationArtCulture3.search(params[:search],compare,year,rain_fall_type)
#         a = EducationArtCulture3.query(@EducationArtCulture3s,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [:'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16']
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   jip = [:'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16']


   data = [
    "Girls",
    "Boys",
    "Combined",
  ]
  legend = "Area"

search = rain_fall_type

   ji1 = [:Indicator, :Sector, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16']
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = EducationArtCulture3.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = EducationArtCulture3.map(b,params[:year],rain_fall_type,views)
         else
          b = EducationArtCulture3.map_search(params[:search],compare,year,rain_fall_type)
          a = EducationArtCulture3.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = EducationArtCulture3.search(params[:search],compare,year,rain_fall_type)
        a = EducationArtCulture3.new_table(b,rain_fall_type,year,ji1,compare, search, data,legend)
      else
        @EducationArtCulture3s = EducationArtCulture3.search(params[:search],compare,year,rain_fall_type)
        a = EducationArtCulture3.query(@EducationArtCulture3s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    EducationArtCulture3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /education_art_culture3s/1/edit
  def edit
  end

  # POST /education_art_culture3s
  def create
    @education_art_culture3 = EducationArtCulture3.new(education_art_culture3_params)

    if @education_art_culture3.save
      redirect_to @education_art_culture3, notice: 'Education art culture3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /education_art_culture3s/1
  def update
    if @education_art_culture3.update(education_art_culture3_params)
      redirect_to @education_art_culture3, notice: 'Education art culture3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /education_art_culture3s/1
  def destroy
    @education_art_culture3.destroy
    redirect_to education_art_culture3s_url, notice: 'Education art culture3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_education_art_culture3
      @education_art_culture3 = EducationArtCulture3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def education_art_culture3_params
      params.require(:education_art_culture3).permit(:Indicator, :Sector, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16')
    end
end
