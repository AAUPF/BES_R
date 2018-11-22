class UdpJointlyFunded11sController < ApplicationController
  before_action :set_udp_jointly_funded11, only: [:show, :edit, :update, :destroy]

  # GET /udp_jointly_funded11s
  def index
    @udp_jointly_funded11s = UdpJointlyFunded11.all
  end

  # GET /udp_jointly_funded11s/1
  def show
  end

  # GET /udp_jointly_funded11s/new
  def new
    @udp_jointly_funded11 = UdpJointlyFunded11.new
  end


def test
  ji = [:No_of_Projects, :Amount]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Description"
   ji1 = [:Description, :No_of_Projects, :Amount, :Remarks]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = UdpJointlyFunded11.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = UdpJointlyFunded11.map(b,params[:year],rain_fall_type,views)
         else
          b = UdpJointlyFunded11.map_search(params[:search],compare,year,rain_fall_type)
          a = UdpJointlyFunded11.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = UdpJointlyFunded11.search(params[:search],compare,year,rain_fall_type,legend)
        a = UdpJointlyFunded11.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @UdpJointlyFunded11s = UdpJointlyFunded11.search(params[:search],compare,year,rain_fall_type,legend)
        a = UdpJointlyFunded11.query(@UdpJointlyFunded11s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    UdpJointlyFunded11.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /udp_jointly_funded11s/1/edit
  def edit
  end

  # POST /udp_jointly_funded11s
  def create
    @udp_jointly_funded11 = UdpJointlyFunded11.new(udp_jointly_funded11_params)

    if @udp_jointly_funded11.save
      redirect_to @udp_jointly_funded11, notice: 'Udp jointly funded11 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /udp_jointly_funded11s/1
  def update
    if @udp_jointly_funded11.update(udp_jointly_funded11_params)
      redirect_to @udp_jointly_funded11, notice: 'Udp jointly funded11 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /udp_jointly_funded11s/1
  def destroy
    @udp_jointly_funded11.destroy
    redirect_to udp_jointly_funded11s_url, notice: 'Udp jointly funded11 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_udp_jointly_funded11
      @udp_jointly_funded11 = UdpJointlyFunded11.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def udp_jointly_funded11_params
      params.require(:udp_jointly_funded11).permit(:Description, :No_of_Projects, :Amount, :Remarks)
    end
end
