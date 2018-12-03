class DistrictWiseSection6sController < ApplicationController
  before_action :set_district_wise_section6, only: [:show, :edit, :update, :destroy]

  # GET /district_wise_section6s
  def index
    @district_wise_section6s = DistrictWiseSection6.all
  end

  # GET /district_wise_section6s/1
  def show
  end

  # GET /district_wise_section6s/new
  def new
    @district_wise_section6 = DistrictWiseSection6.new
  end

# def test
#   ji = [:Districts, :Total, :_Enrolment, :Number_of_Children_Availing_MDM_per_day, :Coverage_in_percentage, :Year]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = DistrictWiseSection6.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = DistrictWiseSection6.map(b,params[:year],rain_fall_type,views)
#          else
#           b = DistrictWiseSection6.map_search(params[:search],compare,year,rain_fall_type)
#           a = DistrictWiseSection6.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = DistrictWiseSection6.search(params[:search],compare,year,rain_fall_type)
#         a = DistrictWiseSection6.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @DistrictWiseSection6s = DistrictWiseSection6.search(params[:search],compare,year,rain_fall_type)
#         a = DistrictWiseSection6.query(@DistrictWiseSection6s,params[:year],rain_fall_type,views,ji,compare)
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
          b = DistrictWiseSection6.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = DistrictWiseSection6.map(b,params[:year],rain_fall_type,views)
         else
          b = DistrictWiseSection6.map_search(params[:search],compare,year,rain_fall_type)
          a = DistrictWiseSection6.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = DistrictWiseSection6.search(params[:search],compare,year,rain_fall_type,legend)
        a = DistrictWiseSection6.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @DistrictWiseSections = DistrictWiseSection6.search(params[:search],compare,year,rain_fall_type,legend)
        a = DistrictWiseSection6.query(@DistrictWiseSections,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    DistrictWiseSection6.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /district_wise_section6s/1/edit
  def edit
  end

  # POST /district_wise_section6s
  def create
    @district_wise_section6 = DistrictWiseSection6.new(district_wise_section6_params)

    if @district_wise_section6.save
      redirect_to @district_wise_section6, notice: 'District wise section6 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /district_wise_section6s/1
  def update
    if @district_wise_section6.update(district_wise_section6_params)
      redirect_to @district_wise_section6, notice: 'District wise section6 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /district_wise_section6s/1
  def destroy
    @district_wise_section6.destroy
    redirect_to district_wise_section6s_url, notice: 'District wise section6 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_district_wise_section6
      @district_wise_section6 = DistrictWiseSection6.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def district_wise_section6_params
      params.require(:district_wise_section6).permit(:Districts, :Total_Enrolment ,:Number_of_Children_Availing_MDM_per_day, :Coverage_in_percentage, :Year)
    end
end
