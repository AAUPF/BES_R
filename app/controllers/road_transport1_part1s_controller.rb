class RoadTransport1Part1sController < ApplicationController
  before_action :set_road_transport1_part1, only: [:show, :edit, :update, :destroy]

  # GET /road_transport1_part1s
  def index
    @road_transport1_part1s = RoadTransport1Part1.all
  end

  # GET /road_transport1_part1s/1
  def show
  end

  # GET /road_transport1_part1s/new
  def new
    @road_transport1_part1 = RoadTransport1Part1.new
  end

def test


  year  = params[:year]




if year == 'Non-Transport'

  ji = [:Two_Wheeler, :Cars, :Jeeps, :Miscellaneous]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   compare = params[:compare]
   ji1 = [:State, :Two_Wheeler, :Cars, :Jeeps, :Miscellaneous]
   search = params[:search]

   nt = RoadTransport1Part1.search(params[:search],compare,year,rain_fall_type)
   nt1 = RoadTransport1Part1.search(params[:search],compare,year,rain_fall_type)

else
  ji = [:Buses, :Taxis, :Light_Motor_Vehicles_Passengers, :Goods_Carrier_Vehicles]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   compare = params[:compare]
   search = params[:search]
   ji1 = [:State, :Buses, :Taxis, :Light_Motor_Vehicles_Passengers, :Goods_Carrier_Vehicles]

   nt = RoadTransport1Part2.search(params[:search],compare,year,rain_fall_type)
   nt1 = RoadTransport1Part2.search(params[:search],compare,year,rain_fall_type)

end


 


  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = RoadTransport1Part1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = RoadTransport1Part1.map(b,params[:year],rain_fall_type,views)
         else
          b = RoadTransport1Part1.map_search(params[:search],compare,year,rain_fall_type)
          a = RoadTransport1Part1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = nt1
        a = RoadTransport1Part1.table(b,rain_fall_type,year,ji1,compare)
      else
        @RoadTransport1Part1s = nt
        a = RoadTransport1Part1.query(@RoadTransport1Part1s,params[:year],rain_fall_type,views,ji,compare,search)
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
    RoadTransport1Part1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /road_transport1_part1s/1/edit
  def edit
  end

  # POST /road_transport1_part1s
  def create
    @road_transport1_part1 = RoadTransport1Part1.new(road_transport1_part1_params)

    if @road_transport1_part1.save
      redirect_to @road_transport1_part1, notice: 'Road transport1 part1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /road_transport1_part1s/1
  def update
    if @road_transport1_part1.update(road_transport1_part1_params)
      redirect_to @road_transport1_part1, notice: 'Road transport1 part1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /road_transport1_part1s/1
  def destroy
    @road_transport1_part1.destroy
    redirect_to road_transport1_part1s_url, notice: 'Road transport1 part1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_road_transport1_part1
      @road_transport1_part1 = RoadTransport1Part1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def road_transport1_part1_params
      params.require(:road_transport1_part1).permit(:State, :Two_Wheeler, :Cars, :Jeeps, :Miscellaneous)
    end
end
