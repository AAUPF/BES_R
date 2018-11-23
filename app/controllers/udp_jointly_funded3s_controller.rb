class UdpJointlyFunded3sController < ApplicationController
  before_action :set_udp_jointly_funded3, only: [:show, :edit, :update, :destroy]

  # GET /udp_jointly_funded3s
  def index
    @udp_jointly_funded3s = UdpJointlyFunded3.all
  end

  # GET /udp_jointly_funded3s/1
  def show
  end

  # GET /udp_jointly_funded3s/new
  def new
    @udp_jointly_funded3 = UdpJointlyFunded3.new
  end

def test
  ji = [:Annual_Target, :Number_of_Persons_Undergoing_Training, :Number_of_Persons_Completed_Training]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Category"
ji1 = [:Category, :Annual_Target, :Number_of_Persons_Undergoing_Training, :Number_of_Persons_Completed_Training]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = UdpJointlyFunded3.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = UdpJointlyFunded3.map(b,params[:year],rain_fall_type,views)
         else
          b = UdpJointlyFunded3.map_search(params[:search],compare,year,rain_fall_type)
          a = UdpJointlyFunded3.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = UdpJointlyFunded3.search(params[:search],compare,year,rain_fall_type,legend)
        a = UdpJointlyFunded3.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @UdpJointlyFunded3s = UdpJointlyFunded3.search(params[:search],compare,year,rain_fall_type,legend)
        a = UdpJointlyFunded3.query(@UdpJointlyFunded3s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    UdpJointlyFunded3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /udp_jointly_funded3s/1/edit
  def edit
  end

  # POST /udp_jointly_funded3s
  def create
    @udp_jointly_funded3 = UdpJointlyFunded3.new(udp_jointly_funded3_params)

    if @udp_jointly_funded3.save
      redirect_to @udp_jointly_funded3, notice: 'Udp jointly funded3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /udp_jointly_funded3s/1
  def update
    if @udp_jointly_funded3.update(udp_jointly_funded3_params)
      redirect_to @udp_jointly_funded3, notice: 'Udp jointly funded3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /udp_jointly_funded3s/1
  def destroy
    @udp_jointly_funded3.destroy
    redirect_to udp_jointly_funded3s_url, notice: 'Udp jointly funded3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_udp_jointly_funded3
      @udp_jointly_funded3 = UdpJointlyFunded3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def udp_jointly_funded3_params
      params.require(:udp_jointly_funded3).permit(:Category, :Annual_Target, :Number_of_Persons_Undergoing_Training, :Number_of_Persons_Completed_Training)
    end
end
