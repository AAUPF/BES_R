class ProjectionOfPowerRequirement4sController < ApplicationController
  before_action :set_projection_of_power_requirement4, only: [:show, :edit, :update, :destroy]

  # GET /projection_of_power_requirement4s
  def index
    @projection_of_power_requirement4s = ProjectionOfPowerRequirement4.all
  end

  # GET /projection_of_power_requirement4s/1
  def show
  end

  # GET /projection_of_power_requirement4s/new
  def new
    @projection_of_power_requirement4 = ProjectionOfPowerRequirement4.new
  end

def test
  ji = [:Total_Capacity_MW, :Estimated_Peak_Availability_at_State_Periphery_MW, :Estimated_Energy_Availability_at_State_Periphery_MU]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

   ji1 =[:Year, :Total_Capacity_MW, :Estimated_Peak_Availability_at_State_Periphery_MW, :Estimated_Energy_Availability_at_State_Periphery_MU]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = ProjectionOfPowerRequirement4.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = ProjectionOfPowerRequirement4.map(b,params[:year],rain_fall_type,views)
         else
          b = ProjectionOfPowerRequirement4.map_search(params[:search],compare,year,rain_fall_type)
          a = ProjectionOfPowerRequirement4.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = ProjectionOfPowerRequirement4.search(params[:search],compare,year,rain_fall_type)
        a = ProjectionOfPowerRequirement4.table(b,rain_fall_type,year,ji1,compare)
      else
        @ProjectionOfPowerRequirement4s = ProjectionOfPowerRequirement4.search(params[:search],compare,year,rain_fall_type)
        a = ProjectionOfPowerRequirement4.query(@ProjectionOfPowerRequirement4s,params[:year],rain_fall_type,views,ji,compare)
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
    ProjectionOfPowerRequirement4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /projection_of_power_requirement4s/1/edit
  def edit
  end

  # POST /projection_of_power_requirement4s
  def create
    @projection_of_power_requirement4 = ProjectionOfPowerRequirement4.new(projection_of_power_requirement4_params)

    if @projection_of_power_requirement4.save
      redirect_to @projection_of_power_requirement4, notice: 'Projection of power requirement4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /projection_of_power_requirement4s/1
  def update
    if @projection_of_power_requirement4.update(projection_of_power_requirement4_params)
      redirect_to @projection_of_power_requirement4, notice: 'Projection of power requirement4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /projection_of_power_requirement4s/1
  def destroy
    @projection_of_power_requirement4.destroy
    redirect_to projection_of_power_requirement4s_url, notice: 'Projection of power requirement4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projection_of_power_requirement4
      @projection_of_power_requirement4 = ProjectionOfPowerRequirement4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def projection_of_power_requirement4_params
      params.require(:projection_of_power_requirement4).permit(:Year, :Total_Capacity_MW, :Estimated_Peak_Availability_at_State_Periphery_MW, :Estimated_Energy_Availability_at_State_Periphery_MU)
    end
end
