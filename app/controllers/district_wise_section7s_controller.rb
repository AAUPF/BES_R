class DistrictWiseSection7sController < ApplicationController
  before_action :set_district_wise_section7, only: [:show, :edit, :update, :destroy]

  # GET /district_wise_section7s
  def index
    @district_wise_section7s = DistrictWiseSection7.all
  end

  # GET /district_wise_section7s/1
  def show
  end

  # GET /district_wise_section7s/new
  def new
    @district_wise_section7 = DistrictWiseSection7.new
  end

  def test
    ji = [:Total, :_Enrolment, :Number_of_Children_Availing_MDM_per_day, :Coverage_in_percentage]
    rain_fall_type = params[:rain_fall_type]
     views  = params[:views]
     year  = params[:year]
     compare = params[:compare]
     search = params[:search]
     legend = "Districts"
     remove = "Total"
    #  ji1 = [:Characteristics, :India, :Bihar, :Year]
     if year == "All"
      ji1 = [:Districts, "2014-15","2015-16","2016-17"]
     else
      if rain_fall_type != "All"
        ji1 = [:Districts, "#{rain_fall_type}", :Year]
        
      else
        ji1 = [:Districts, :Total, :_Enrolment, :Number_of_Children_Availing_MDM_per_day, :Coverage_in_percentage, :Year]
      end
      
     end
  
    if rain_fall_type || views
  
        if views == "Map View"
          l =  rain_fall_type.gsub(" ","")           
           if rain_fall_type  ==  "All"
            b = DistrictWiseSection7.map_search("All",compare,year,rain_fall_type)
            u = "Total"
            a = DistrictWiseSection7.map(b,params[:year],rain_fall_type,views)
           else
            b = DistrictWiseSection7.map_search(params[:search],compare,year,rain_fall_type)
            a = DistrictWiseSection7.map(b,rain_fall_type,year,ji)
           end
        elsif views == "Table"  
          b = DistrictWiseSection7.search(params[:search],compare,year,rain_fall_type,legend)
          a = DistrictWiseSection7.table(b,rain_fall_type,year,ji1,compare,legend)
        else
          @DistrictWiseSections = DistrictWiseSection7.search(params[:search],compare,year,rain_fall_type,legend)
          a = DistrictWiseSection7.query(@DistrictWiseSections,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    DistrictWiseSection7.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /district_wise_section7s/1/edit
  def edit
  end

  # POST /district_wise_section7s
  def create
    @district_wise_section7 = DistrictWiseSection7.new(district_wise_section7_params)

    if @district_wise_section7.save
      redirect_to @district_wise_section7, notice: 'District wise section7 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /district_wise_section7s/1
  def update
    if @district_wise_section7.update(district_wise_section7_params)
      redirect_to @district_wise_section7, notice: 'District wise section7 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /district_wise_section7s/1
  def destroy
    @district_wise_section7.destroy
    redirect_to district_wise_section7s_url, notice: 'District wise section7 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_district_wise_section7
      @district_wise_section7 = DistrictWiseSection7.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def district_wise_section7_params
      params.require(:district_wise_section7).permit(:Districts, :Total_Enrolment, :Number_of_Children_Availing_MDM_per_day, :Coverage_in_percentage, :Year)
    end
end
