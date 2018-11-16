class DisasterManagement1sController < ApplicationController
  before_action :set_disaster_management1, only: [:show, :edit, :update, :destroy]

  # GET /disaster_management1s
  def index
    @disaster_management1s = DisasterManagement1.all

    respond_to do |format|
      format.html { render json:  @disaster_management1s}
  end
  end

  # GET /disaster_management1s/1
  def show
  end

  # GET /disaster_management1s/new
  def new
    @disaster_management1 = DisasterManagement1.new
  end






def test
  # ji = [:Particular, :"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17", :"CAGR"]
  ji = [:Sector, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]

    search = rain_fall_type

    jip = [ :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']
    ji1 = [:Sector, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']

      data = [
       "Relief and Rescue instruments",
"Supply of Dry Food ",
"Cash Dole Assistance",
"Clothes and Utensils Distribution",
"Supply of Drinking Water",
"Repair of Road and Bridges",
"Evacuation Operation",
"Repair of Public Buildings ",
"Agricultural Inputs",
"Repair of Boats ",
"Repair of Embankments and            Irrigation system",
"Human Medicines ",
"Assistance for Flood Accidents",
"Assistance for Natural Calamity Accidents (except flood)",
"Total",
      ]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = DisasterManagement1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = DisasterManagement1.map(b,params[:year],rain_fall_type,views)
         else
          b = DisasterManagement1.map_search(params[:search],compare,year,rain_fall_type)
          a = DisasterManagement1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = DisasterManagement1.search(params[:search],compare,year,rain_fall_type)
        a = DisasterManagement1.table(b,rain_fall_type,year,ji1,compare, search, data)
      else
        @DisasterManagement1s = DisasterManagement1.search(params[:search],compare,year,rain_fall_type)
        a = DisasterManagement1.query(@DisasterManagement1s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    DisasterManagement1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /disaster_management1s/1/edit
  def edit
  end

  # POST /disaster_management1s
  def create
    @disaster_management1 = DisasterManagement1.new(disaster_management1_params)

    if @disaster_management1.save
      redirect_to @disaster_management1, notice: 'Disaster management1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /disaster_management1s/1
  def update
    if @disaster_management1.update(disaster_management1_params)
      redirect_to @disaster_management1, notice: 'Disaster management1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /disaster_management1s/1
  def destroy
    @disaster_management1.destroy
    redirect_to disaster_management1s_url, notice: 'Disaster management1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disaster_management1
      @disaster_management1 = DisasterManagement1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def disaster_management1_params
      params.require(:disaster_management1).permit(:Sector, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17')
    end
end
