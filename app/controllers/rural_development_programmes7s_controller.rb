class RuralDevelopmentProgrammes7sController < ApplicationController
  before_action :set_rural_development_programmes7, only: [:show, :edit, :update, :destroy]

  # GET /rural_development_programmes7s
  def index
    @rural_development_programmes7s = RuralDevelopmentProgrammes7.all

    respond_to do |format|
      format.html { render json: @rural_development_programmes7s}
  end
  end

  # GET /rural_development_programmes7s/1
  def show
  end

  # GET /rural_development_programmes7s/new
  def new
    @rural_development_programmes7 = RuralDevelopmentProgrammes7.new
  end



def test
  ji = [:Sector, :'2014-15', :'2015-16', :'2016-17', :Indicator]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   jip = [ :'2014-15', :'2015-16', :'2016-17']


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
    "Bihar",
  ]
  legend = "Districts"

search = rain_fall_type

   ji1 = [:Sector, :'2014-15', :'2015-16', :'2016-17', :Indicator]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = RuralDevelopmentProgrammes7.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = RuralDevelopmentProgrammes7.map(b,params[:year],rain_fall_type,views)
         else
          b = RuralDevelopmentProgrammes7.map_search(params[:search],compare,year,rain_fall_type)
          a = RuralDevelopmentProgrammes7.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = RuralDevelopmentProgrammes7.search(params[:search],compare,year,rain_fall_type)
        a = RuralDevelopmentProgrammes7.new_table(b,rain_fall_type,year,ji1,compare, search, data,legend)
      else
        @RuralDevelopmentProgrammes7s = RuralDevelopmentProgrammes7.search(params[:search],compare,year,rain_fall_type)
        a = RuralDevelopmentProgrammes7.query(@RuralDevelopmentProgrammes7s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    RuralDevelopmentProgrammes7.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /rural_development_programmes7s/1/edit
  def edit
  end

  # POST /rural_development_programmes7s
  def create
    @rural_development_programmes7 = RuralDevelopmentProgrammes7.new(rural_development_programmes7_params)

    if @rural_development_programmes7.save
      redirect_to @rural_development_programmes7, notice: 'Rural development programmes7 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /rural_development_programmes7s/1
  def update
    if @rural_development_programmes7.update(rural_development_programmes7_params)
      redirect_to @rural_development_programmes7, notice: 'Rural development programmes7 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /rural_development_programmes7s/1
  def destroy
    @rural_development_programmes7.destroy
    redirect_to rural_development_programmes7s_url, notice: 'Rural development programmes7 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rural_development_programmes7
      @rural_development_programmes7 = RuralDevelopmentProgrammes7.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rural_development_programmes7_params
      params.require(:rural_development_programmes7).permit(:Sector, :'2014-15', :'2015-16', :'2016-17', :Indicator)
    end
end
