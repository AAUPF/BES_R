class DistrictWiseSection3sController < ApplicationController
  before_action :set_district_wise_section3, only: [:show, :edit, :update, :destroy]

  # GET /district_wise_section3s
  def index
    @district_wise_section3s = DistrictWiseSection3.all
  end

  # GET /district_wise_section3s/1
  def show
  end

  # GET /district_wise_section3s/new
  def new
    @district_wise_section3 = DistrictWiseSection3.new
  end

  def test
    ji = [:Primary1, :Upper_Primary, :Total]
    rain_fall_type = params[:rain_fall_type]
     views  = params[:views]
     year  = params[:year]
     compare = params[:compare]
     search = params[:search]
     legend = "Districts"
     remove = "Bihar"
    #  ji1 = [:Characteristics, :India, :Bihar, :Year]
     if year == "All"
      ji1 = [:Districts, :"2014-15",:"2015-16"]
     else
      if rain_fall_type != "All"
        ji1 = [:Districts, "#{rain_fall_type}", :Year]
        
      else
        ji1 = [:Districts, :Primary1, :Upper_Primary, :Total, :Year]
      end
      
     end
  
    if rain_fall_type || views
  
        if views == "Map View"
          l =  rain_fall_type.gsub(" ","")           
           if rain_fall_type  ==  "All"
            b = DistrictWiseSection3.map_search("All",compare,year,rain_fall_type)
            u = "Total"
            a = DistrictWiseSection3.map(b,params[:year],rain_fall_type,views)
           else
            b = DistrictWiseSection3.map_search(params[:search],compare,year,rain_fall_type)
            a = DistrictWiseSection3.map(b,rain_fall_type,year,ji)
           end
        elsif views == "Table"  
          b = DistrictWiseSection3.search(params[:search],compare,year,rain_fall_type,legend)
          a = DistrictWiseSection3.table(b,rain_fall_type,year,ji1,compare,legend)
        else
          @DistrictWiseSections = DistrictWiseSection3.search(params[:search],compare,year,rain_fall_type,legend)
          a = DistrictWiseSection3.query(@DistrictWiseSections,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    DistrictWiseSection3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /district_wise_section3s/1/edit
  def edit
  end

  # POST /district_wise_section3s
  def create
    @district_wise_section3 = DistrictWiseSection3.new(district_wise_section3_params)

    if @district_wise_section3.save
      redirect_to @district_wise_section3, notice: 'District wise section3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /district_wise_section3s/1
  def update
    if @district_wise_section3.update(district_wise_section3_params)
      redirect_to @district_wise_section3, notice: 'District wise section3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /district_wise_section3s/1
  def destroy
    @district_wise_section3.destroy
    redirect_to district_wise_section3s_url, notice: 'District wise section3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_district_wise_section3
      @district_wise_section3 = DistrictWiseSection3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def district_wise_section3_params
      params.require(:district_wise_section3).permit(:Districts, :Primary1, :Upper_Primary, :Total, :Year)
    end
end
