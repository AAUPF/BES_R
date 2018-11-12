class ProjectionOfPowerRequirement5sController < ApplicationController
  before_action :set_projection_of_power_requirement5, only: [:show, :edit, :update, :destroy]

  # GET /projection_of_power_requirement5s
  def index
    @projection_of_power_requirement5s = ProjectionOfPowerRequirement5.all
    respond_to do |format|
      format.html { render json: @projection_of_power_requirement5s}
  end
  end

  # GET /projection_of_power_requirement5s/1
  def show
  end

  # GET /projection_of_power_requirement5s/new
  def new
    @projection_of_power_requirement5 = ProjectionOfPowerRequirement5.new
  end


def test
  # ji = [:Sector, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16_P', :'2016-17_Q', :'CAGR_2011-16']
  # rain_fall_type = params[:rain_fall_type]
  #  views  = params[:views]
  #  year  = params[:year]
  #  compare = params[:compare]

   ji = [:Sector, :'2017-18', :'2018-19', :'2019-20']
   rain_fall_type = params[:rain_fall_type]
   views = params[:views]
   year = params[:year]
   compare = params[:compare]
   search = params[:search]
 
   search = rain_fall_type
 
   jip = [:'2017-18', :'2018-19', :'2019-20']
   ji1 = [:Sector, :'2017-18', :'2018-19', :'2019-20']
 
 
   if views != "Table"
 
 
     data = [
      "Estimated Peak Requirement with 50 Percent agriculture load (**) only (MW)",
      "Estimated Peak Availability as per State Generation Plan (MW)",
      "Peak demand Surplus(Plus) / Deficit(Minus) (MW)",
      "Peak demand Surplus/Deficit (Percentage)",
      "Estimated Energy Requirement at State Periphery (MU)",
      "Estimated Energy Availability at State Periphery as per  State generation Plan (MU)",
      "Energy Surplus(Plus) / Deficit(Minus) (MU)",
      "Energy Surplus (Plus)/ Deficit (Minus) (Percentage) ",
 
   
     ]
 
     
   else
 
     data = [
      "Estimated Peak Requirement with 50 Percent agriculture load (**) only (MW)",
      "Estimated Peak Availability as per State Generation Plan (MW)",
      "Peak demand Surplus(Plus) / Deficit(Minus) (MW)",
      "Peak demand Surplus/Deficit (Percentage)",
      "Estimated Energy Requirement at State Periphery (MU)",
      "Estimated Energy Availability at State Periphery as per  State generation Plan (MU)",
      "Energy Surplus(Plus) / Deficit(Minus) (MU)",
      "Energy Surplus (Plus)/ Deficit (Minus) (Percentage) ",
     ]
 
     
   end

   legend = "Power Supply Position "
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = ProjectionOfPowerRequirement5.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = ProjectionOfPowerRequirement5.map(b,params[:year],rain_fall_type,views)
         else
          b = ProjectionOfPowerRequirement5.map_search(params[:search],compare,year,rain_fall_type)
          a = ProjectionOfPowerRequirement5.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = ProjectionOfPowerRequirement5.search(params[:search],compare,year,rain_fall_type)
        a = ProjectionOfPowerRequirement5.new_table(b, rain_fall_type, year, ji1, compare, search, data,legend)
      else
        @ProjectionOfPowerRequirement5s = ProjectionOfPowerRequirement5.search(params[:search],compare,year,rain_fall_type)
        a = ProjectionOfPowerRequirement5.query(@ProjectionOfPowerRequirement5s, params[:year], rain_fall_type, views, ji, compare, search, data, jip)
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
    ProjectionOfPowerRequirement5.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end


  def import
    # Module1.import(params[:file])
    ProjectionOfPowerRequirement5.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /projection_of_power_requirement5s/1/edit
  def edit
  end

  # POST /projection_of_power_requirement5s
  def create
    @projection_of_power_requirement5 = ProjectionOfPowerRequirement5.new(projection_of_power_requirement5_params)

    if @projection_of_power_requirement5.save
      redirect_to @projection_of_power_requirement5, notice: 'Projection of power requirement5 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /projection_of_power_requirement5s/1
  def update
    if @projection_of_power_requirement5.update(projection_of_power_requirement5_params)
      redirect_to @projection_of_power_requirement5, notice: 'Projection of power requirement5 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /projection_of_power_requirement5s/1
  def destroy
    @projection_of_power_requirement5.destroy
    redirect_to projection_of_power_requirement5s_url, notice: 'Projection of power requirement5 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projection_of_power_requirement5
      @projection_of_power_requirement5 = ProjectionOfPowerRequirement5.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def projection_of_power_requirement5_params
      params.require(:projection_of_power_requirement5).permit(:Sector, :'2017-18', :'2018-19', :'2019-20')
    end
end
