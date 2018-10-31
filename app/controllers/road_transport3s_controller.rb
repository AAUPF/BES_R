class RoadTransport3sController < ApplicationController
  before_action :set_road_transport3, only: [:show, :edit, :update, :destroy]

  # GET /road_transport3s
  def index
    @road_transport3s = RoadTransport3.all
  end

  # GET /road_transport3s/1
  def show
  end

  # GET /road_transport3s/new
  def new
    @road_transport3 = RoadTransport3.new
  end

def test
  # ji = [:Particular, :"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17", :"CAGR"]
  ji = %i[Sector 2012-13 2013-14 2014-15 2015-16 2016-17 CAGR]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]

    search = rain_fall_type

    jip = %i[2012-13 2013-14 2014-15 2015-16 2016-17 CAGR]
    ji1 = %i[Sector 2012-13 2013-14 2014-15 2015-16 2016-17 CAGR]

      data = [
        "Revenue Collection ",
        "No. of Passengers Carried",
      ]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = RoadTransport3.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = RoadTransport3.map(b,params[:year],rain_fall_type,views)
         else
          b = RoadTransport3.map_search(params[:search],compare,year,rain_fall_type)
          a = RoadTransport3.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = RoadTransport3.search(params[:search],compare,year,rain_fall_type)
        a = RoadTransport3.table(b,rain_fall_type,year,ji1,compare, search, data)
      else
        @RoadTransport3s = RoadTransport3.search(params[:search],compare,year,rain_fall_type)
        a = RoadTransport3.query(@RoadTransport3s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    RoadTransport3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /road_transport3s/1/edit
  def edit
  end

  # POST /road_transport3s
  def create
    @road_transport3 = RoadTransport3.new(road_transport3_params)

    if @road_transport3.save
      redirect_to @road_transport3, notice: 'Road transport3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /road_transport3s/1
  def update
    if @road_transport3.update(road_transport3_params)
      redirect_to @road_transport3, notice: 'Road transport3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /road_transport3s/1
  def destroy
    @road_transport3.destroy
    redirect_to road_transport3s_url, notice: 'Road transport3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_road_transport3
      @road_transport3 = RoadTransport3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def road_transport3_params
      params.require(:road_transport3).permit(:Particular, :"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17", :"CAGR")
    end
end
