class UdpStatePlan5sController < ApplicationController
  before_action :set_udp_state_plan5, only: [:show, :edit, :update, :destroy]

  # GET /udp_state_plan5s
  def index
    @udp_state_plan5s = UdpStatePlan5.all
  end

  # GET /udp_state_plan5s/1
  def show
  end

  # GET /udp_state_plan5s/new
  def new
    @udp_state_plan5 = UdpStatePlan5.new
  end

def test
  ji = [:Total_Number_of_Urban_Households, :Total_Number_of_Urban_Wards, :Number_of_Households_to_be_covered, :Number_of_Household_covered]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   ji1 = [:Districts, :Total_Number_of_Urban_Households, :Total_Number_of_Urban_Wards, :Number_of_Households_to_be_covered, :Number_of_Household_covered]
   search = params[:search]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = UdpStatePlan5.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = UdpStatePlan5.map(b,params[:year],rain_fall_type,views)
         else
          b = UdpStatePlan5.map_search(params[:search],compare,year,rain_fall_type)
          a = UdpStatePlan5.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = UdpStatePlan5.search(params[:search],compare,year,rain_fall_type)
        a = UdpStatePlan5.table(b,rain_fall_type,year,ji1,compare)
      else
        @UdpStatePlan5s = UdpStatePlan5.search(params[:search],compare,year,rain_fall_type)
        a = UdpStatePlan5.query(@UdpStatePlan5s,params[:year],rain_fall_type,views,ji,compare,search)
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
    UdpStatePlan5.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /udp_state_plan5s/1/edit
  def edit
  end

  # POST /udp_state_plan5s
  def create
    @udp_state_plan5 = UdpStatePlan5.new(udp_state_plan5_params)

    if @udp_state_plan5.save
      redirect_to @udp_state_plan5, notice: 'Udp state plan5 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /udp_state_plan5s/1
  def update
    if @udp_state_plan5.update(udp_state_plan5_params)
      redirect_to @udp_state_plan5, notice: 'Udp state plan5 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /udp_state_plan5s/1
  def destroy
    @udp_state_plan5.destroy
    redirect_to udp_state_plan5s_url, notice: 'Udp state plan5 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_udp_state_plan5
      @udp_state_plan5 = UdpStatePlan5.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def udp_state_plan5_params
      params.require(:udp_state_plan5).permit(:Districts, :Total_Number_of_Urban_Households, :Total_Number_of_Urban_Wards, :Number_of_Households_to_be_covered, :Number_of_Household_covered)
    end
end
