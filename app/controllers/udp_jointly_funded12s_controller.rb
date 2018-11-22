class UdpJointlyFunded12sController < ApplicationController
  before_action :set_udp_jointly_funded12, only: [:show, :edit, :update, :destroy]

  # GET /udp_jointly_funded12s
  def index
    @udp_jointly_funded12s = UdpJointlyFunded12.all
  end

  # GET /udp_jointly_funded12s/1
  def show
  end

  # GET /udp_jointly_funded12s/new
  def new
    @udp_jointly_funded12 = UdpJointlyFunded12.new
  end


def test
  ji = [:Name_of_the_Project, :Activities, :Approved_Project_Cost, :Amount_released, :Status]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Name_of_the_Project"

if rain_fall_type != "All"
  ji1 = [:Name_of_the_Project, "#{rain_fall_type}"]
else
  ji1 = [:Name_of_the_Project, :Activities, :Approved_Project_Cost, :Amount_released, :Status]
end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = UdpJointlyFunded12.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = UdpJointlyFunded12.map(b,params[:year],rain_fall_type,views)
         else
          b = UdpJointlyFunded12.map_search(params[:search],compare,year,rain_fall_type)
          a = UdpJointlyFunded12.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = UdpJointlyFunded12.search(params[:search],compare,year,rain_fall_type,legend)
        a = UdpJointlyFunded12.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @UdpJointlyFunded12s = UdpJointlyFunded12.search(params[:search],compare,year,rain_fall_type)
        a = UdpJointlyFunded12.query(@UdpJointlyFunded12s,params[:year],rain_fall_type,views,ji,compare)
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
    UdpJointlyFunded12.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /udp_jointly_funded12s/1/edit
  def edit
  end

  # POST /udp_jointly_funded12s
  def create
    @udp_jointly_funded12 = UdpJointlyFunded12.new(udp_jointly_funded12_params)

    if @udp_jointly_funded12.save
      redirect_to @udp_jointly_funded12, notice: 'Udp jointly funded12 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /udp_jointly_funded12s/1
  def update
    if @udp_jointly_funded12.update(udp_jointly_funded12_params)
      redirect_to @udp_jointly_funded12, notice: 'Udp jointly funded12 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /udp_jointly_funded12s/1
  def destroy
    @udp_jointly_funded12.destroy
    redirect_to udp_jointly_funded12s_url, notice: 'Udp jointly funded12 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_udp_jointly_funded12
      @udp_jointly_funded12 = UdpJointlyFunded12.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def udp_jointly_funded12_params
      params.require(:udp_jointly_funded12).permit(:Name_of_the_Project, :Activities, :Approved_Project_Cost, :Amount_released, :Status)
    end
end
