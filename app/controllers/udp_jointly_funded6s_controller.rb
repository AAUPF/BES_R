class UdpJointlyFunded6sController < ApplicationController
  before_action :set_udp_jointly_funded6, only: [:show, :edit, :update, :destroy]

  # GET /udp_jointly_funded6s
  def index
    @udp_jointly_funded6s = UdpJointlyFunded6.all
  end

  # GET /udp_jointly_funded6s/1
  def show
  end

  # GET /udp_jointly_funded6s/new
  def new
    @udp_jointly_funded6 = UdpJointlyFunded6.new
  end

def test
  ji = [:DAY_NULM, :State_Plan_Head_Nagrik_Suvidha]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1 = [:Year, :DAY_NULM, :State_Plan_Head_Nagrik_Suvidha, :Total]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = UdpJointlyFunded6.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = UdpJointlyFunded6.map(b,params[:year],rain_fall_type,views)
         else
          b = UdpJointlyFunded6.map_search(params[:search],compare,year,rain_fall_type)
          a = UdpJointlyFunded6.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = UdpJointlyFunded6.search(params[:search],compare,year,rain_fall_type)
        a = UdpJointlyFunded6.table(b,rain_fall_type,year,ji1,compare)
      else
        @UdpJointlyFunded6s = UdpJointlyFunded6.search(params[:search],compare,year,rain_fall_type)
        a = UdpJointlyFunded6.query(@UdpJointlyFunded6s,params[:year],rain_fall_type,views,ji,compare)
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
    UdpJointlyFunded6.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /udp_jointly_funded6s/1/edit
  def edit
  end

  # POST /udp_jointly_funded6s
  def create
    @udp_jointly_funded6 = UdpJointlyFunded6.new(udp_jointly_funded6_params)

    if @udp_jointly_funded6.save
      redirect_to @udp_jointly_funded6, notice: 'Udp jointly funded6 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /udp_jointly_funded6s/1
  def update
    if @udp_jointly_funded6.update(udp_jointly_funded6_params)
      redirect_to @udp_jointly_funded6, notice: 'Udp jointly funded6 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /udp_jointly_funded6s/1
  def destroy
    @udp_jointly_funded6.destroy
    redirect_to udp_jointly_funded6s_url, notice: 'Udp jointly funded6 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_udp_jointly_funded6
      @udp_jointly_funded6 = UdpJointlyFunded6.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def udp_jointly_funded6_params
      params.require(:udp_jointly_funded6).permit(:Year, :DAY_NULM, :State_Plan_Head_Nagrik_Suvidha, :Total)
    end
end
