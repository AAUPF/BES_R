class RoadTransport1Part2sController < ApplicationController
  before_action :set_road_transport1_part2, only: [:show, :edit, :update, :destroy]

  # GET /road_transport1_part2s
  def index
    @road_transport1_part2s = RoadTransport1Part2.all
  end

  # GET /road_transport1_part2s/1
  def show
  end

  # GET /road_transport1_part2s/new
  def new
    @road_transport1_part2 = RoadTransport1Part2.new
  end

def test
  ji = [:State, :Buses, :Taxis, :Light_Motor_Vehicles_Passengers, :Goods_Carrier_Vehicles]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = RoadTransport1Part2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = RoadTransport1Part2.map(b,params[:year],rain_fall_type,views)
         else
          b = RoadTransport1Part2.map_search(params[:search],compare,year,rain_fall_type)
          a = RoadTransport1Part2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = RoadTransport1Part2.search(params[:search],compare,year,rain_fall_type)
        a = RoadTransport1Part2.table(b,rain_fall_type,year,ji1,compare)
      else
        @RoadTransport1Part2s = RoadTransport1Part2.search(params[:search],compare,year,rain_fall_type)
        a = RoadTransport1Part2.query(@RoadTransport1Part2s,params[:year],rain_fall_type,views,ji,compare)
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
    RoadTransport1Part2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /road_transport1_part2s/1/edit
  def edit
  end

  # POST /road_transport1_part2s
  def create
    @road_transport1_part2 = RoadTransport1Part2.new(road_transport1_part2_params)

    if @road_transport1_part2.save
      redirect_to @road_transport1_part2, notice: 'Road transport1 part2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /road_transport1_part2s/1
  def update
    if @road_transport1_part2.update(road_transport1_part2_params)
      redirect_to @road_transport1_part2, notice: 'Road transport1 part2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /road_transport1_part2s/1
  def destroy
    @road_transport1_part2.destroy
    redirect_to road_transport1_part2s_url, notice: 'Road transport1 part2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_road_transport1_part2
      @road_transport1_part2 = RoadTransport1Part2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def road_transport1_part2_params
      params.require(:road_transport1_part2).permit(:State, :Buses, :Taxis, :Light_Motor_Vehicles_Passengers, :Goods_Carrier_Vehicles)
    end
end
