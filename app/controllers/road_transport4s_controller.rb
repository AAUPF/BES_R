class RoadTransport4sController < ApplicationController
  before_action :set_road_transport4, only: [:show, :edit, :update, :destroy]

  # GET /road_transport4s
  def index
    @road_transport4s = RoadTransport4.all
  end

  # GET /road_transport4s/1
  def show
  end

  # GET /road_transport4s/new
  def new
    @road_transport4 = RoadTransport4.new
  end

def test
  ji = [:Truck, :Bus, :Car, :Taxi, :Jeep, :Three_Wheeler, :Two_Wheeler, :Tractor, :Trailor, :Other]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
ji1 = [:Districts, :Truck, :Bus, :Car, :Taxi, :Jeep, :Three_Wheeler, :Two_Wheeler, :Tractor, :Trailor, :Other, :Total]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = RoadTransport4.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = RoadTransport4.map(b,params[:year],rain_fall_type,views)
         else
          b = RoadTransport4.map_search(params[:search],compare,year,rain_fall_type)
          a = RoadTransport4.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = RoadTransport4.search(params[:search],compare,year,rain_fall_type)
        a = RoadTransport4.table(b,rain_fall_type,year,ji1,compare)
      else
        @RoadTransport4s = RoadTransport4.search(params[:search],compare,year,rain_fall_type)
        a = RoadTransport4.query(@RoadTransport4s,params[:year],rain_fall_type,views,ji,compare)
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
    RoadTransport4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /road_transport4s/1/edit
  def edit
  end

  # POST /road_transport4s
  def create
    @road_transport4 = RoadTransport4.new(road_transport4_params)

    if @road_transport4.save
      redirect_to @road_transport4, notice: 'Road transport4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /road_transport4s/1
  def update
    if @road_transport4.update(road_transport4_params)
      redirect_to @road_transport4, notice: 'Road transport4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /road_transport4s/1
  def destroy
    @road_transport4.destroy
    redirect_to road_transport4s_url, notice: 'Road transport4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_road_transport4
      @road_transport4 = RoadTransport4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def road_transport4_params
      params.require(:road_transport4).permit(:Districts, :Truck, :Bus, :Car, :Taxi, :Jeep, :Three_Wheeler, :Two_Wheeler, :Tractor, :Trailor, :Other, :Total)
    end
end
