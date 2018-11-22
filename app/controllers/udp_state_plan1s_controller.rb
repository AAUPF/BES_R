class UdpStatePlan1sController < ApplicationController
  before_action :set_udp_state_plan1, only: [:show, :edit, :update, :destroy]

  # GET /udp_state_plan1s
  def index
    @udp_state_plan1s = UdpStatePlan1.all
  end

  # GET /udp_state_plan1s/1
  def show
  end

  # GET /udp_state_plan1s/new
  def new
    @udp_state_plan1 = UdpStatePlan1.new
  end


def test
  ji = [:Indicators, :No_of_households]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Indicators"

if rain_fall_type != "All"
  ji1 = [:Indicators, "#{rain_fall_type}"]
else
  ji1 = [:Indicators, :No_of_households]
end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = UdpStatePlan1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = UdpStatePlan1.map(b,params[:year],rain_fall_type,views)
         else
          b = UdpStatePlan1.map_search(params[:search],compare,year,rain_fall_type)
          a = UdpStatePlan1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = UdpStatePlan1.search(params[:search],compare,year,rain_fall_type,legend)
        a = UdpStatePlan1.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @UdpStatePlan1s = UdpStatePlan1.search(params[:search],compare,year,rain_fall_type)
        a = UdpStatePlan1.query(@UdpStatePlan1s,params[:year],rain_fall_type,views,ji,compare)
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
    UdpStatePlan1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /udp_state_plan1s/1/edit
  def edit
  end

  # POST /udp_state_plan1s
  def create
    @udp_state_plan1 = UdpStatePlan1.new(udp_state_plan1_params)

    if @udp_state_plan1.save
      redirect_to @udp_state_plan1, notice: 'Udp state plan1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /udp_state_plan1s/1
  def update
    if @udp_state_plan1.update(udp_state_plan1_params)
      redirect_to @udp_state_plan1, notice: 'Udp state plan1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /udp_state_plan1s/1
  def destroy
    @udp_state_plan1.destroy
    redirect_to udp_state_plan1s_url, notice: 'Udp state plan1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_udp_state_plan1
      @udp_state_plan1 = UdpStatePlan1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def udp_state_plan1_params
      params.require(:udp_state_plan1).permit(:Indicators, :No_of_households)
    end
end
