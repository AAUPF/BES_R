class UdpJointlyFunded1sController < ApplicationController
  before_action :set_udp_jointly_funded1, only: [:show, :edit, :update, :destroy]

  # GET /udp_jointly_funded1s
  def index
    @udp_jointly_funded1s = UdpJointlyFunded1.all
  end

  # GET /udp_jointly_funded1s/1
  def show
  end

  # GET /udp_jointly_funded1s/new
  def new
    @udp_jointly_funded1 = UdpJointlyFunded1.new
  end

def test
  ji = [:SubProject_cost_sanctioned, :Total_Expenditure_till_Nov_2017]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Components_Categories"
   ji1 = [:Components_Categories, :SubProject_cost_sanctioned, :Total_Expenditure_till_Nov_2017]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = UdpJointlyFunded1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = UdpJointlyFunded1.map(b,params[:year],rain_fall_type,views)
         else
          b = UdpJointlyFunded1.map_search(params[:search],compare,year,rain_fall_type)
          a = UdpJointlyFunded1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = UdpJointlyFunded1.search(params[:search],compare,year,rain_fall_type,legend)
        a = UdpJointlyFunded1.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @UdpJointlyFunded1s = UdpJointlyFunded1.search(params[:search],compare,year,rain_fall_type,legend)
        a = UdpJointlyFunded1.query(@UdpJointlyFunded1s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    UdpJointlyFunded1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /udp_jointly_funded1s/1/edit
  def edit
  end

  # POST /udp_jointly_funded1s
  def create
    @udp_jointly_funded1 = UdpJointlyFunded1.new(udp_jointly_funded1_params)

    if @udp_jointly_funded1.save
      redirect_to @udp_jointly_funded1, notice: 'Udp jointly funded1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /udp_jointly_funded1s/1
  def update
    if @udp_jointly_funded1.update(udp_jointly_funded1_params)
      redirect_to @udp_jointly_funded1, notice: 'Udp jointly funded1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /udp_jointly_funded1s/1
  def destroy
    @udp_jointly_funded1.destroy
    redirect_to udp_jointly_funded1s_url, notice: 'Udp jointly funded1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_udp_jointly_funded1
      @udp_jointly_funded1 = UdpJointlyFunded1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def udp_jointly_funded1_params
      params.require(:udp_jointly_funded1).permit(:Components_Categories, :SubProject_cost_sanctioned, :Total_Expenditure_till_Nov_2017)
    end
end
