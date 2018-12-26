class DistrictWiseSectionsController < ApplicationController
  before_action :set_district_wise_section, only: [:show, :edit, :update, :destroy]

  # GET /district_wise_sections
  def index
    @district_wise_sections = DistrictWiseSection.all
  end

  # GET /district_wise_sections/1
  def show
  end

  # GET /district_wise_sections/new
  def new
    @district_wise_section = DistrictWiseSection.new
  end

def test
  ji = [ :Number_of_Handpumps_Installed, :Slipped_back_Habitations_or_Water_quality_Problems_Covered]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Districts"
   remove = "Bihar "
  #  ji1 = [:Characteristics, :India, :Bihar, :Year]
   if year == "All"
    ji1 = [:Districts,"2012-13", "2014-15","2015-16","2016-17"]
   else
    if rain_fall_type != "All"
      ji1 = [:Districts, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:Districts, :Number_of_Handpumps_Installed, :Slipped_back_Habitations_or_Water_quality_Problems_Covered, :Year]
    end
    
   end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = DistrictWiseSection.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = DistrictWiseSection.map(b,params[:year],rain_fall_type,views)
         else
          b = DistrictWiseSection.map_search(params[:search],compare,year,rain_fall_type)
          a = DistrictWiseSection.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = DistrictWiseSection.search(params[:search],compare,year,rain_fall_type,legend)
        a = DistrictWiseSection.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @DistrictWiseSections = DistrictWiseSection.search(params[:search],compare,year,rain_fall_type,legend)
        a = DistrictWiseSection.query(@DistrictWiseSections,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    DistrictWiseSection.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /district_wise_sections/1/edit
  def edit
  end

  # POST /district_wise_sections
  def create
    @district_wise_section = DistrictWiseSection.new(district_wise_section_params)

    if @district_wise_section.save
      redirect_to @district_wise_section, notice: 'District wise section was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /district_wise_sections/1
  def update
    if @district_wise_section.update(district_wise_section_params)
      redirect_to @district_wise_section, notice: 'District wise section was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /district_wise_sections/1
  def destroy
    @district_wise_section.destroy
    redirect_to district_wise_sections_url, notice: 'District wise section was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_district_wise_section
      @district_wise_section = DistrictWiseSection.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def district_wise_section_params
      params.require(:district_wise_section).permit(:Districts, :Number_of_Handpumps_Installed, :Slipped_back_Habitations_or_Water_quality_Problems_Covered, :Year)
    end
end
