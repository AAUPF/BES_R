class UdpJointlyFunded8sController < ApplicationController
  before_action :set_udp_jointly_funded8, only: [:show, :edit, :update, :destroy]

  # GET /udp_jointly_funded8s
  def index
    @udp_jointly_funded8s = UdpJointlyFunded8.all
  end

  # GET /udp_jointly_funded8s/1
  def show
  end

  # GET /udp_jointly_funded8s/new
  def new
    @udp_jointly_funded8 = UdpJointlyFunded8.new
  end

def test
  ji = [:Constructed, :Under_Construction]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Particulars"
   ji1 = [:Particulars, :Constructed, :Under_Construction]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = UdpJointlyFunded8.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = UdpJointlyFunded8.map(b,params[:year],rain_fall_type,views)
         else
          b = UdpJointlyFunded8.map_search(params[:search],compare,year,rain_fall_type)
          a = UdpJointlyFunded8.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = UdpJointlyFunded8.search(params[:search],compare,year,rain_fall_type,legend)
        a = UdpJointlyFunded8.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @UdpJointlyFunded8s = UdpJointlyFunded8.search(params[:search],compare,year,rain_fall_type,legend)
        a = UdpJointlyFunded8.query(@UdpJointlyFunded8s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    UdpJointlyFunded8.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /udp_jointly_funded8s/1/edit
  def edit
  end

  # POST /udp_jointly_funded8s
  def create
    @udp_jointly_funded8 = UdpJointlyFunded8.new(udp_jointly_funded8_params)

    if @udp_jointly_funded8.save
      redirect_to @udp_jointly_funded8, notice: 'Udp jointly funded8 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /udp_jointly_funded8s/1
  def update
    if @udp_jointly_funded8.update(udp_jointly_funded8_params)
      redirect_to @udp_jointly_funded8, notice: 'Udp jointly funded8 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /udp_jointly_funded8s/1
  def destroy
    @udp_jointly_funded8.destroy
    redirect_to udp_jointly_funded8s_url, notice: 'Udp jointly funded8 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_udp_jointly_funded8
      @udp_jointly_funded8 = UdpJointlyFunded8.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def udp_jointly_funded8_params
      params.require(:udp_jointly_funded8).permit(:Particulars, :Constructed, :Under_Construction)
    end
end
