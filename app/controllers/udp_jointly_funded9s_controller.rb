class UdpJointlyFunded9sController < ApplicationController
  before_action :set_udp_jointly_funded9, only: [:show, :edit, :update, :destroy]

  # GET /udp_jointly_funded9s
  def index
    @udp_jointly_funded9s = UdpJointlyFunded9.all
  end

  # GET /udp_jointly_funded9s/1
  def show
  end

  # GET /udp_jointly_funded9s/new
  def new
    @udp_jointly_funded9 = UdpJointlyFunded9.new
  end

def test
  ji = [ :Number_Amount]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Indicators"

if rain_fall_type != "All"
  ji1 = [:Indicators, "#{rain_fall_type}"]
else
  ji1 = [:Indicators, :Number_Amount]
end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = UdpJointlyFunded9.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = UdpJointlyFunded9.map(b,params[:year],rain_fall_type,views)
         else
          b = UdpJointlyFunded9.map_search(params[:search],compare,year,rain_fall_type)
          a = UdpJointlyFunded9.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = UdpJointlyFunded9.search(params[:search],compare,year,rain_fall_type,legend)
        a = UdpJointlyFunded9.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @UdpJointlyFunded9s = UdpJointlyFunded9.search(params[:search],compare,year,rain_fall_type)
        a = UdpJointlyFunded9.query(@UdpJointlyFunded9s,params[:year],rain_fall_type,views,ji,compare)
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
    UdpJointlyFunded9.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /udp_jointly_funded9s/1/edit
  def edit
  end

  # POST /udp_jointly_funded9s
  def create
    @udp_jointly_funded9 = UdpJointlyFunded9.new(udp_jointly_funded9_params)

    if @udp_jointly_funded9.save
      redirect_to @udp_jointly_funded9, notice: 'Udp jointly funded9 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /udp_jointly_funded9s/1
  def update
    if @udp_jointly_funded9.update(udp_jointly_funded9_params)
      redirect_to @udp_jointly_funded9, notice: 'Udp jointly funded9 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /udp_jointly_funded9s/1
  def destroy
    @udp_jointly_funded9.destroy
    redirect_to udp_jointly_funded9s_url, notice: 'Udp jointly funded9 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_udp_jointly_funded9
      @udp_jointly_funded9 = UdpJointlyFunded9.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def udp_jointly_funded9_params
      params.require(:udp_jointly_funded9).permit(:Indicators, :Number_Amount)
    end
end
