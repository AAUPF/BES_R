class UdpJointlyFunded5sController < ApplicationController
  before_action :set_udp_jointly_funded5, only: [:show, :edit, :update, :destroy]

  # GET /udp_jointly_funded5s
  def index
    @udp_jointly_funded5s = UdpJointlyFunded5.all
  end

  # GET /udp_jointly_funded5s/1
  def show
  end

  # GET /udp_jointly_funded5s/new
  def new
    @udp_jointly_funded5 = UdpJointlyFunded5.new
  end

# def test
#   ji = [:Program_or_Monitoring_Parameter, :Annual_Target, :Progress, :Indicator]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = UdpJointlyFunded5.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = UdpJointlyFunded5.map(b,params[:year],rain_fall_type,views)
#          else
#           b = UdpJointlyFunded5.map_search(params[:search],compare,year,rain_fall_type)
#           a = UdpJointlyFunded5.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = UdpJointlyFunded5.search(params[:search],compare,year,rain_fall_type)
#         a = UdpJointlyFunded5.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @UdpJointlyFunded5s = UdpJointlyFunded5.search(params[:search],compare,year,rain_fall_type)
#         a = UdpJointlyFunded5.query(@UdpJointlyFunded5s,params[:year],rain_fall_type,views,ji,compare)
#       end
#       respond_to do |format|
#         format.html { render json:a }
#     end

#   else
#     respond_to do |format|
#       format.html { render json: "error"}
#   end
#   end

# end




def test
  ji = [:Annual_Target, :Progress]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Program_or_Monitoring_Parameter"
   ji1 = [:Program_or_Monitoring_Parameter, :Annual_Target, :Progress, :Indicator]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = UdpJointlyFunded5.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = UdpJointlyFunded5.map(b,params[:year],rain_fall_type,views)
         else
          b = UdpJointlyFunded5.map_search(params[:search],compare,year,rain_fall_type)
          a = UdpJointlyFunded5.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = UdpJointlyFunded5.search(params[:search],compare,year,rain_fall_type,legend)
        a = UdpJointlyFunded5.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @UdpJointlyFunded5s = UdpJointlyFunded5.search(params[:search],compare,year,rain_fall_type,legend)
        a = UdpJointlyFunded5.query(@UdpJointlyFunded5s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    UdpJointlyFunded5.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /udp_jointly_funded5s/1/edit
  def edit
  end

  # POST /udp_jointly_funded5s
  def create
    @udp_jointly_funded5 = UdpJointlyFunded5.new(udp_jointly_funded5_params)

    if @udp_jointly_funded5.save
      redirect_to @udp_jointly_funded5, notice: 'Udp jointly funded5 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /udp_jointly_funded5s/1
  def update
    if @udp_jointly_funded5.update(udp_jointly_funded5_params)
      redirect_to @udp_jointly_funded5, notice: 'Udp jointly funded5 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /udp_jointly_funded5s/1
  def destroy
    @udp_jointly_funded5.destroy
    redirect_to udp_jointly_funded5s_url, notice: 'Udp jointly funded5 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_udp_jointly_funded5
      @udp_jointly_funded5 = UdpJointlyFunded5.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def udp_jointly_funded5_params
      params.require(:udp_jointly_funded5).permit(:Program_or_Monitoring_Parameter, :Annual_Target, :Progress, :Indicator)
    end
end
