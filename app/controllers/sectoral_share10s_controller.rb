class SectoralShare10sController < ApplicationController
  before_action :set_sectoral_share10, only: [:show, :edit, :update, :destroy]

  # GET /sectoral_share10s
  def index
    @sectoral_share10s = SectoralShare10.all
  end

  # GET /sectoral_share10s/1
  def show
  end

  # GET /sectoral_share10s/new
  def new
    @sectoral_share10 = SectoralShare10.new
  end

def test
  ji = [:Sector, :'2007-08', :'2008-09', :'2009-10', :'2010-11', :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
 
   search = rain_fall_type
 
   jip = [:'2007-08', :'2008-09', :'2009-10', :'2010-11', :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']
   ji1 = [:Sector, :'2007-08', :'2008-09', :'2009-10', :'2010-11', :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']
 if views != "Table"
  data = [
    "All",
    "Araria",
    "Arwal",
    "Aurangabad",
    "Banka",
    "Begusarai",
    "Bhagalpur",
    "Bhojpur",
    "Buxar",
    "Darbhanga",
    "EastChamparan",
    "Gaya",
    "Gopalganj",
    "Jamui",
    "Jehanabad",
    "Kaimur",
    "Katihar",
    "Khagaria",
    "Kishanganj",
    "Lakhisarai",
    "Madhepura",
    "Madhubani",
    "Munger",
    "Muzaffarpur",
    "Nalanda",
    "Nawada",
    "Patna",
    "Purnia",
    "Rohtas",
    "Saharsa",
    "Samastipur",
    "Saran",
    "Sheikhpura",
    "Sheohar",
    "Sitamarhi",
    "Siwan",
    "Supaul",
    "Vaishali",
    "WestChamparan"
   ]
 else
  data = [
    "All",
    "Araria",
    "Arwal",
    "Aurangabad",
    "Banka",
    "Begusarai",
    "Bhagalpur",
    "Bhojpur",
    "Bihar",
    "Buxar",
    "Darbhanga",
    "EastChamparan",
    "Gaya",
    "Gopalganj",
    "Jamui",
    "Jehanabad",
    "Kaimur",
    "Katihar",
    "Khagaria",
    "Kishanganj",
    "Lakhisarai",
    "Madhepura",
    "Madhubani",
    "Munger",
    "Muzaffarpur",
    "Nalanda",
    "Nawada",
    "Patna",
    "Purnia",
    "Rohtas",
    "Saharsa",
    "Samastipur",
    "Saran",
    "Sheikhpura",
    "Sheohar",
    "Sitamarhi",
    "Siwan",
    "Supaul",
    "Vaishali",
    "WestChamparan"
   ]
 end
   


  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = SectoralShare10.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = SectoralShare10.map(b,params[:year],rain_fall_type,views)
         else
          b = SectoralShare10.map_search(params[:search],compare,year,rain_fall_type)
          a = SectoralShare10.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = SectoralShare10.search(params[:search],compare,year,rain_fall_type)
        a = SectoralShare10.table(b,rain_fall_type,year,ji1,compare, search, data)
      else
        @SectoralShare10s = SectoralShare10.search(params[:search],compare,year,rain_fall_type)
        a = SectoralShare10.query(@SectoralShare10s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    SectoralShare10.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /sectoral_share10s/1/edit
  def edit
  end

  # POST /sectoral_share10s
  def create
    @sectoral_share10 = SectoralShare10.new(sectoral_share10_params)

    if @sectoral_share10.save
      redirect_to @sectoral_share10, notice: 'Sectoral share10 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sectoral_share10s/1
  def update
    if @sectoral_share10.update(sectoral_share10_params)
      redirect_to @sectoral_share10, notice: 'Sectoral share10 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sectoral_share10s/1
  def destroy
    @sectoral_share10.destroy
    redirect_to sectoral_share10s_url, notice: 'Sectoral share10 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sectoral_share10
      @sectoral_share10 = SectoralShare10.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sectoral_share10_params
      params.require(:sectoral_share10).permit(:Districts, :'2007-08', :'2008-09', :'2009-10', :'2010-11', :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17')
    end
end
