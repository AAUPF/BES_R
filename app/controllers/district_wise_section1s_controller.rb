class DistrictWiseSection1sController < ApplicationController
  before_action :set_district_wise_section1, only: [:show, :edit, :update, :destroy]

  # GET /district_wise_section1s
  def index
    @district_wise_section1s = DistrictWiseSection1.all

    respond_to do |format|
      format.html { render json: @district_wise_section1s}
  end
  end

  # GET /district_wise_section1s/1
  def show
  end

  # GET /district_wise_section1s/new
  def new
    @district_wise_section1 = DistrictWiseSection1.new
  end

# def test
#   ji = [:Sector, :Population_Share, :'2013-14', :'2014-15', :'2015-16', :'2016-17', :Indicator]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = DistrictWiseSection1.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = DistrictWiseSection1.map(b,params[:year],rain_fall_type,views)
#          else
#           b = DistrictWiseSection1.map_search(params[:search],compare,year,rain_fall_type)
#           a = DistrictWiseSection1.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = DistrictWiseSection1.search(params[:search],compare,year,rain_fall_type)
#         a = DistrictWiseSection1.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @DistrictWiseSection1s = DistrictWiseSection1.search(params[:search],compare,year,rain_fall_type)
#         a = DistrictWiseSection1.query(@DistrictWiseSection1s,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [:Sector, :Population_Share, :'2013-14', :'2014-15', :'2015-16', :'2016-17', :Indicator]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   jip = [:'2013-14', :'2014-15', :'2015-16', :'2016-17']


   data = [
    "Patna",
    "Nalanda",
    "Bhojpur",
    "Buxar",
    "Rohtas",
    "Kaimur",
    "Gaya",
    "Jehanabad",
    "Arwal",
    "Nawada",
    "Aurangabad",
    "Saran",
    "Siwan",
    "Gopalganj",
    "WestChamparan",
    "EastChamparan",
    "Muzaffarpur",
    "Sitamarhi",
    "Sheohar",
    "Vaishali",
    "Darbhanga",
    "Madhubani",
    "Samastipur",
    "Begusarai",
    "Munger",
    "Sheikhpura",
    "Lakhisarai",
    "Jamui",
    "Khagaria",
    "Bhagalpur",
    "Banka",
    "Saharsa",
    "Supaul",
    "Madhepura",
    "Purnia",
    "Kishanganj",
    "Araria",
    "Katihar",
   
  ]
  legend = "Districts"

search = rain_fall_type

   ji1 = [:Sector, :Population_Share, :'2013-14', :'2014-15', :'2015-16', :'2016-17', :Indicator]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = DistrictWiseSection1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = DistrictWiseSection1.map(b,params[:year],rain_fall_type,views)
         else
          b = DistrictWiseSection1.map_search(params[:search],compare,year,rain_fall_type)
          a = DistrictWiseSection1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = DistrictWiseSection1.search(params[:search],compare,year,rain_fall_type)
        a = DistrictWiseSection1.new_table(b,rain_fall_type,year,ji1,compare, search, data,legend)
      else
        @DistrictWiseSection1s = DistrictWiseSection1.search(params[:search],compare,year,rain_fall_type)
        a = DistrictWiseSection1.query(@DistrictWiseSection1s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    DistrictWiseSection1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /district_wise_section1s/1/edit
  def edit
  end

  # POST /district_wise_section1s
  def create
    @district_wise_section1 = DistrictWiseSection1.new(district_wise_section1_params)

    if @district_wise_section1.save
      redirect_to @district_wise_section1, notice: 'District wise section1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /district_wise_section1s/1
  def update
    if @district_wise_section1.update(district_wise_section1_params)
      redirect_to @district_wise_section1, notice: 'District wise section1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /district_wise_section1s/1
  def destroy
    @district_wise_section1.destroy
    redirect_to district_wise_section1s_url, notice: 'District wise section1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_district_wise_section1
      @district_wise_section1 = DistrictWiseSection1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def district_wise_section1_params
      params.require(:district_wise_section1).permit(:Sector, :Population_Share, :'2013-14', :'2014-15', :'2015-16', :'2016-17', :Indicator)
    end
end
