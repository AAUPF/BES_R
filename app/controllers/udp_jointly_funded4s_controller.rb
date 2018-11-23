class UdpJointlyFunded4sController < ApplicationController
  before_action :set_udp_jointly_funded4, only: [:show, :edit, :update, :destroy]

  # GET /udp_jointly_funded4s
  def index
    @udp_jointly_funded4s = UdpJointlyFunded4.all
  end

  # GET /udp_jointly_funded4s/1
  def show
  end

  # GET /udp_jointly_funded4s/new
  def new
    @udp_jointly_funded4 = UdpJointlyFunded4.new
  end

def test
  ji = [:Annual_Target, :Achievement]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Program_Monitoring_Parameter"
   ji1 = [:Program_Monitoring_Parameter,:Annual_Target, :Achievement]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = UdpJointlyFunded4.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = UdpJointlyFunded4.map(b,params[:year],rain_fall_type,views)
         else
          b = UdpJointlyFunded4.map_search(params[:search],compare,year,rain_fall_type)
          a = UdpJointlyFunded4.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = UdpJointlyFunded4.search(params[:search],compare,year,rain_fall_type,legend)
        a = UdpJointlyFunded4.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @UdpJointlyFunded4s = UdpJointlyFunded4.search(params[:search],compare,year,rain_fall_type,legend)
        a = UdpJointlyFunded4.query(@UdpJointlyFunded4s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    UdpJointlyFunded4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /udp_jointly_funded4s/1/edit
  def edit
  end

  # POST /udp_jointly_funded4s
  def create
    @udp_jointly_funded4 = UdpJointlyFunded4.new(udp_jointly_funded4_params)

    if @udp_jointly_funded4.save
      redirect_to @udp_jointly_funded4, notice: 'Udp jointly funded4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /udp_jointly_funded4s/1
  def update
    if @udp_jointly_funded4.update(udp_jointly_funded4_params)
      redirect_to @udp_jointly_funded4, notice: 'Udp jointly funded4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /udp_jointly_funded4s/1
  def destroy
    @udp_jointly_funded4.destroy
    redirect_to udp_jointly_funded4s_url, notice: 'Udp jointly funded4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_udp_jointly_funded4
      @udp_jointly_funded4 = UdpJointlyFunded4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def udp_jointly_funded4_params
      params.require(:udp_jointly_funded4).permit(:Program_Monitoring_Parameter, :Annual_Target, :Achievement)
    end
end
