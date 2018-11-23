class UdpStatePlan3sController < ApplicationController
  before_action :set_udp_state_plan3, only: [:show, :edit, :update, :destroy]

  # GET /udp_state_plan3s
  def index
    @udp_state_plan3s = UdpStatePlan3.all
  end

  # GET /udp_state_plan3s/1
  def show
  end

  # GET /udp_state_plan3s/new
  def new
    @udp_state_plan3 = UdpStatePlan3.new
  end

def test
  ji = [:Sector, :'2016-17', :'2017-18', :'2018-19', :'2019-20', :Total]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

   search = params[:search]
 
   search = rain_fall_type
 
   jip = [:'2016-17', :'2017-18', :'2018-19', :'2019-20']
   ji1 = [:Sector, :'2016-17', :'2017-18', :'2018-19', :'2019-20', :Total]
 
 
   if views != "Table"
 
 
     data = [
      "Target (No. of households)",
      "Target Percentage",
      ]
 
     
   else
 
     data = [
      "Target (No. of households)",
      "Target Percentage",
     ]
 
     
   end

   legend = "Coverage"

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = UdpStatePlan3.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = UdpStatePlan3.map(b,params[:year],rain_fall_type,views)
         else
          b = UdpStatePlan3.map_search(params[:search],compare,year,rain_fall_type)
          a = UdpStatePlan3.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = UdpStatePlan3.search(params[:search],compare,year,rain_fall_type)
        a = UdpStatePlan3.table(b,rain_fall_type,year,ji1,compare, search, data)
      else
        @UdpStatePlan3s = UdpStatePlan3.search(params[:search],compare,year,rain_fall_type)
        a = UdpStatePlan3.query(@UdpStatePlan3s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    UdpStatePlan3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /udp_state_plan3s/1/edit
  def edit
  end

  # POST /udp_state_plan3s
  def create
    @udp_state_plan3 = UdpStatePlan3.new(udp_state_plan3_params)

    if @udp_state_plan3.save
      redirect_to @udp_state_plan3, notice: 'Udp state plan3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /udp_state_plan3s/1
  def update
    if @udp_state_plan3.update(udp_state_plan3_params)
      redirect_to @udp_state_plan3, notice: 'Udp state plan3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /udp_state_plan3s/1
  def destroy
    @udp_state_plan3.destroy
    redirect_to udp_state_plan3s_url, notice: 'Udp state plan3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_udp_state_plan3
      @udp_state_plan3 = UdpStatePlan3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def udp_state_plan3_params
      params.require(:udp_state_plan3).permit(:Coverage, :'2016-17', :'2017-18', :'2018-19', :'2019-20', :Total)
    end
end
