class UdpStatePlan4sController < ApplicationController
  before_action :set_udp_state_plan4, only: [:show, :edit, :update, :destroy]

  # GET /udp_state_plan4s
  def index
    @udp_state_plan4s = UdpStatePlan4.all
  end

  # GET /udp_state_plan4s/1
  def show
  end

  # GET /udp_state_plan4s/new
  def new
    @udp_state_plan4 = UdpStatePlan4.new
  end

# def test
#   ji = [:Indicators, :No_of_households]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = UdpStatePlan4.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = UdpStatePlan4.map(b,params[:year],rain_fall_type,views)
#          else
#           b = UdpStatePlan4.map_search(params[:search],compare,year,rain_fall_type)
#           a = UdpStatePlan4.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = UdpStatePlan4.search(params[:search],compare,year,rain_fall_type)
#         a = UdpStatePlan4.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @UdpStatePlan4s = UdpStatePlan4.search(params[:search],compare,year,rain_fall_type)
#         a = UdpStatePlan4.query(@UdpStatePlan4s,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [:Indicators, :No_of_households]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Indicators"

if rain_fall_type != "All"
  ji1 = [:Indicators, "#{rain_fall_type}"]
else
  ji1 = [:Indicators, :No_of_households]
end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = UdpStatePlan4.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = UdpStatePlan4.map(b,params[:year],rain_fall_type,views)
         else
          b = UdpStatePlan4.map_search(params[:search],compare,year,rain_fall_type)
          a = UdpStatePlan4.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = UdpStatePlan4.search(params[:search],compare,year,rain_fall_type,legend)
        a = UdpStatePlan4.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @UdpStatePlan4s = UdpStatePlan4.search(params[:search],compare,year,rain_fall_type)
        a = UdpStatePlan4.query(@UdpStatePlan4s,params[:year],rain_fall_type,views,ji,compare)
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
    UdpStatePlan4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /udp_state_plan4s/1/edit
  def edit
  end

  # POST /udp_state_plan4s
  def create
    @udp_state_plan4 = UdpStatePlan4.new(udp_state_plan4_params)

    if @udp_state_plan4.save
      redirect_to @udp_state_plan4, notice: 'Udp state plan4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /udp_state_plan4s/1
  def update
    if @udp_state_plan4.update(udp_state_plan4_params)
      redirect_to @udp_state_plan4, notice: 'Udp state plan4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /udp_state_plan4s/1
  def destroy
    @udp_state_plan4.destroy
    redirect_to udp_state_plan4s_url, notice: 'Udp state plan4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_udp_state_plan4
      @udp_state_plan4 = UdpStatePlan4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def udp_state_plan4_params
      params.require(:udp_state_plan4).permit(:Indicators, :No_of_households)
    end
end
