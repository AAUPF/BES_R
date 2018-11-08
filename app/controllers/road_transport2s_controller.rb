class RoadTransport2sController < ApplicationController
  before_action :set_road_transport2, only: [:show, :edit, :update, :destroy]

  # GET /road_transport2s
  def index
    @road_transport2s = RoadTransport2.all

    respond_to do |format|
      format.html { render json: @road_transport2s }
    end
  end

  # GET /road_transport2s/1
  def show
  end

  # GET /road_transport2s/new
  def new
    @road_transport2 = RoadTransport2.new
  end

def test
  ji = [:Sector, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17', :'CAGR_2011-17']
  rain_fall_type = params[:rain_fall_type]
  views = params[:views]
  year = params[:year]
  compare = params[:compare]
  search = params[:search]

  search = rain_fall_type

  jip = [:'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17', :'CAGR_2011-17']
  ji1 = [:Sector, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17', :'CAGR_2011-17']


  legend = "Vehicle Type"

  if views != "Table"


    data = [
      "Truck",
      "Bus",
      "Car",
      "Taxi",
      "Jeep",
      "Auto",
      "Two-Wheeler",
      "Tractor",
      "Trailer",
      "Others",
      "Total",
      "Revenue Collection (Rs. crore)",

  
    ]

    
  else

    data = [
      "Truck",
      "Bus",
      "Car",
      "Taxi",
      "Jeep",
      "Auto",
      "Two-Wheeler",
      "Tractor",
      "Trailer",
      "Others",
    
    ]

    
  end




  if rain_fall_type || views

    if views == 'Map View'
      l = rain_fall_type.delete(' ')
      if rain_fall_type == 'All'
        b = RoadTransport2.map_search('All', compare, year, rain_fall_type)
        u = 'Total'
        a = RoadTransport2.map(b, params[:year], rain_fall_type, views)
      else
        b = RoadTransport2.map_search(params[:search], compare, year, rain_fall_type)
        a = RoadTransport2.map(b, rain_fall_type, year, ji)
       end
    elsif views == 'Table'
      b = RoadTransport2.search(params[:search], compare, year, rain_fall_type)
      a = RoadTransport2.new_table(b, rain_fall_type, year, ji1, compare, search, data,legend)
    else
      @RoadTransport2s = RoadTransport2.search(params[:search], compare, year, rain_fall_type)
      a = RoadTransport2.query(@RoadTransport2s, params[:year], rain_fall_type, views, ji, compare, search, data, jip)
    end
    respond_to do |format|
      format.html { render json: a }
    end

  else
    respond_to do |format|
      format.html { render json: 'error' }
    end
  end
  end




  def import
    # Module1.import(params[:file])
    RoadTransport2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /road_transport2s/1/edit
  def edit
  end

  # POST /road_transport2s
  def create
    @road_transport2 = RoadTransport2.new(road_transport2_params)

    if @road_transport2.save
      redirect_to @road_transport2, notice: 'Road transport2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /road_transport2s/1
  def update
    if @road_transport2.update(road_transport2_params)
      redirect_to @road_transport2, notice: 'Road transport2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /road_transport2s/1
  def destroy
    @road_transport2.destroy
    redirect_to road_transport2s_url, notice: 'Road transport2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_road_transport2
      @road_transport2 = RoadTransport2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def road_transport2_params
      params.require(:road_transport2).permit(:Sector, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17', :'CAGR_2011-17')
    end
end
