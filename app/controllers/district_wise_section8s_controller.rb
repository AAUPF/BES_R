class DistrictWiseSection8sController < ApplicationController
  before_action :set_district_wise_section8, only: [:show, :edit, :update, :destroy]

  # GET /district_wise_section8s
  def index
    @district_wise_section8s = DistrictWiseSection8.all
  end

  # GET /district_wise_section8s/1
  def show
  end

  # GET /district_wise_section8s/new
  def new
    @district_wise_section8 = DistrictWiseSection8.new
  end

def test
  ji = [:Affiliated_College, :Constituent_College]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Districts"
   remove = "Bihar"
  #  ji1 = [:Characteristics, :India, :Bihar, :Year]
   if year == "All"
    ji1 = [:Districts,"2013-14", "2014-15","2015-16","2016-17"]
   else
    if rain_fall_type != "All"
      ji1 = [:Districts, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:Districts, :Affiliated_College, :Constituent_College, :Year]
    end
    
   end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = DistrictWiseSection8.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = DistrictWiseSection8.map(b,params[:year],rain_fall_type,views)
         else
          b = DistrictWiseSection8.map_search(params[:search],compare,year,rain_fall_type)
          a = DistrictWiseSection8.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = DistrictWiseSection8.search(params[:search],compare,year,rain_fall_type,legend)
        a = DistrictWiseSection8.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @DistrictWiseSections = DistrictWiseSection8.search(params[:search],compare,year,rain_fall_type,legend)
        a = DistrictWiseSection8.query(@DistrictWiseSections,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    DistrictWiseSection8.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /district_wise_section8s/1/edit
  def edit
  end

  # POST /district_wise_section8s
  def create
    @district_wise_section8 = DistrictWiseSection8.new(district_wise_section8_params)

    if @district_wise_section8.save
      redirect_to @district_wise_section8, notice: 'District wise section8 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /district_wise_section8s/1
  def update
    if @district_wise_section8.update(district_wise_section8_params)
      redirect_to @district_wise_section8, notice: 'District wise section8 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /district_wise_section8s/1
  def destroy
    @district_wise_section8.destroy
    redirect_to district_wise_section8s_url, notice: 'District wise section8 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_district_wise_section8
      @district_wise_section8 = DistrictWiseSection8.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def district_wise_section8_params
      params.require(:district_wise_section8).permit(:Districts, :Affiliated_College, :Constituent_College, :Year)
    end
end
