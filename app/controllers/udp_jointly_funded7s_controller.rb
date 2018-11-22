class UdpJointlyFunded7sController < ApplicationController
  before_action :set_udp_jointly_funded7, only: [:show, :edit, :update, :destroy]

  # GET /udp_jointly_funded7s
  def index
    @udp_jointly_funded7s = UdpJointlyFunded7.all
  end

  # GET /udp_jointly_funded7s/1
  def show
  end

  # GET /udp_jointly_funded7s/new
  def new
    @udp_jointly_funded7 = UdpJointlyFunded7.new
  end





def test
  ji = [:Operational, :Already_constructed_refurbished_and_under_process, :Under_process_of_construction_refurbishment]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Shelters_Sanctioned_Planned"
   ji1 = [:Shelters_Sanctioned_Planned, :Operational, :Already_constructed_refurbished_and_under_process, :Under_process_of_construction_refurbishment]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = UdpJointlyFunded7.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = UdpJointlyFunded7.map(b,params[:year],rain_fall_type,views)
         else
          b = UdpJointlyFunded7.map_search(params[:search],compare,year,rain_fall_type)
          a = UdpJointlyFunded7.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = UdpJointlyFunded7.search(params[:search],compare,year,rain_fall_type,legend)
        a = UdpJointlyFunded7.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @UdpJointlyFunded7s = UdpJointlyFunded7.search(params[:search],compare,year,rain_fall_type,legend)
        a = UdpJointlyFunded7.query(@UdpJointlyFunded7s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    UdpJointlyFunded7.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end



  def import
    # Module1.import(params[:file])
    UdpJointlyFunded7.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /udp_jointly_funded7s/1/edit
  def edit
  end

  # POST /udp_jointly_funded7s
  def create
    @udp_jointly_funded7 = UdpJointlyFunded7.new(udp_jointly_funded7_params)

    if @udp_jointly_funded7.save
      redirect_to @udp_jointly_funded7, notice: 'Udp jointly funded7 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /udp_jointly_funded7s/1
  def update
    if @udp_jointly_funded7.update(udp_jointly_funded7_params)
      redirect_to @udp_jointly_funded7, notice: 'Udp jointly funded7 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /udp_jointly_funded7s/1
  def destroy
    @udp_jointly_funded7.destroy
    redirect_to udp_jointly_funded7s_url, notice: 'Udp jointly funded7 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_udp_jointly_funded7
      @udp_jointly_funded7 = UdpJointlyFunded7.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def udp_jointly_funded7_params
      params.require(:udp_jointly_funded7).permit(:Shelters_Sanctioned_Planned, :Operational, :Already_constructed_refurbished_and_under_process, :Under_process_of_construction_refurbishment)
    end
end
