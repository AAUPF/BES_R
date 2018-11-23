class UdpStatePlan2sController < ApplicationController
  before_action :set_udp_state_plan2, only: [:show, :edit, :update, :destroy]

  # GET /udp_state_plan2s
  def index
    @udp_state_plan2s = UdpStatePlan2.all
  end

  # GET /udp_state_plan2s/1
  def show
  end

  # GET /udp_state_plan2s/new
  def new
    @udp_state_plan2 = UdpStatePlan2.new
  end

def test
  ji = [:Total_Number_of_Urban_Ward, :Total_Number_of_Urban_Households, :Number_of_Households_Having_Piped_Water_Supply, :Number_of_Households_Having_Access_to_Tap_Water_2016_17, :Number_of_Households_Having_Access_to_Tap_Water_2017_18, :Number_of_Households_Having_Access_to_Tap_Water_2016_18]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1 = [:Districts, :Total_Number_of_Urban_Ward, :Total_Number_of_Urban_Households, :Number_of_Households_Having_Piped_Water_Supply, :Number_of_Households_Having_Access_to_Tap_Water_2016_17, :Number_of_Households_Having_Access_to_Tap_Water_2017_18, :Number_of_Households_Having_Access_to_Tap_Water_2016_18]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = UdpStatePlan2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = UdpStatePlan2.map(b,params[:year],rain_fall_type,views)
         else
          b = UdpStatePlan2.map_search(params[:search],compare,year,rain_fall_type)
          a = UdpStatePlan2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = UdpStatePlan2.search(params[:search],compare,year,rain_fall_type)
        a = UdpStatePlan2.table(b,rain_fall_type,year,ji1,compare)
      else
        @UdpStatePlan2s = UdpStatePlan2.search(params[:search],compare,year,rain_fall_type)
        a = UdpStatePlan2.query(@UdpStatePlan2s,params[:year],rain_fall_type,views,ji,compare)
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
    UdpStatePlan2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /udp_state_plan2s/1/edit
  def edit
  end

  # POST /udp_state_plan2s
  def create
    @udp_state_plan2 = UdpStatePlan2.new(udp_state_plan2_params)

    if @udp_state_plan2.save
      redirect_to @udp_state_plan2, notice: 'Udp state plan2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /udp_state_plan2s/1
  def update
    if @udp_state_plan2.update(udp_state_plan2_params)
      redirect_to @udp_state_plan2, notice: 'Udp state plan2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /udp_state_plan2s/1
  def destroy
    @udp_state_plan2.destroy
    redirect_to udp_state_plan2s_url, notice: 'Udp state plan2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_udp_state_plan2
      @udp_state_plan2 = UdpStatePlan2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def udp_state_plan2_params
      params.require(:udp_state_plan2).permit(:Districts, :Total_Number_of_Urban_Ward, :Total_Number_of_Urban_Households, :Number_of_Households_Having_Piped_Water_Supply, :Number_of_Households_Having_Access_to_Tap_Water_2016_17, :Number_of_Households_Having_Access_to_Tap_Water_2017_18, :Number_of_Households_Having_Access_to_Tap_Water_2016_18)
    end
end
