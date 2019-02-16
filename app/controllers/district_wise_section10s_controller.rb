class DistrictWiseSection10sController < ApplicationController
  before_action :set_district_wise_section10, only: [:show, :edit, :update, :destroy]

  # GET /district_wise_section10s
  def index
    @district_wise_section10s = DistrictWiseSection10.all
    respond_to do |format|
      format.html { render json: @district_wise_section10s}
  end
  end

  # GET /district_wise_section10s/1
  def show
  end

  # GET /district_wise_section10s/new
  def new
    @district_wise_section10 = DistrictWiseSection10.new
  end

# def test
#   ji = [:Districts, :2012-13, :2013-14, :2014-15, :2015-16, :2016-17, :Indicator, :Indicator1]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = DistrictWiseSection10.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = DistrictWiseSection10.map(b,params[:year],rain_fall_type,views)
#          else
#           b = DistrictWiseSection10.map_search(params[:search],compare,year,rain_fall_type)
#           a = DistrictWiseSection10.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = DistrictWiseSection10.search(params[:search],compare,year,rain_fall_type)
#         a = DistrictWiseSection10.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @DistrictWiseSection10s = DistrictWiseSection10.search(params[:search],compare,year,rain_fall_type)
#         a = DistrictWiseSection10.query(@DistrictWiseSection10s,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [:Sector, :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   jip = [:'2012-13', :'2013-14', :'2014-15', :'2015-16',:'2016-17']


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
    "West Champaran",
    "East Champaran",
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
    "H.Q",
    "Bihar",
  ]
  legend = "Districts"

search = rain_fall_type

   ji1 = [:Sector, :'2012-13', :'2013-14', :'2014-15', :'2015-16',:'2016-17', :Indicator, :Indicator1]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = DistrictWiseSection10.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = DistrictWiseSection10.map(b,params[:year],rain_fall_type,views)
         else
          b = DistrictWiseSection10.map_search(params[:search],compare,year,rain_fall_type)
          a = DistrictWiseSection10.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = DistrictWiseSection10.search(params[:search],compare,year,rain_fall_type)
        a = DistrictWiseSection10.new_table(b,rain_fall_type,year,ji1,compare, search, data,legend)
      else
        @DistrictWiseSection10s = DistrictWiseSection10.search(params[:search],compare,year,rain_fall_type)
        a = DistrictWiseSection10.query(@DistrictWiseSection10s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    DistrictWiseSection10.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /district_wise_section10s/1/edit
  def edit
  end

  # POST /district_wise_section10s
  def create
    @district_wise_section10 = DistrictWiseSection10.new(district_wise_section10_params)

    if @district_wise_section10.save
      redirect_to @district_wise_section10, notice: 'District wise section10 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /district_wise_section10s/1
  def update
    if @district_wise_section10.update(district_wise_section10_params)
      redirect_to @district_wise_section10, notice: 'District wise section10 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /district_wise_section10s/1
  def destroy
    @district_wise_section10.destroy
    redirect_to district_wise_section10s_url, notice: 'District wise section10 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_district_wise_section10
      @district_wise_section10 = DistrictWiseSection10.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def district_wise_section10_params
      params.require(:district_wise_section10).permit(:Districts, :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17', :Indicator, :Indicator1)
    end
end
