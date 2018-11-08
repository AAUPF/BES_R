class ProjectionOfPowerRequirement2sController < ApplicationController
  before_action :set_projection_of_power_requirement2, only: [:show, :edit, :update, :destroy]

  # GET /projection_of_power_requirement2s
  def index
    @projection_of_power_requirement2s = ProjectionOfPowerRequirement2.all
  end

  # GET /projection_of_power_requirement2s/1
  def show
  end

  # GET /projection_of_power_requirement2s/new
  def new
    @projection_of_power_requirement2 = ProjectionOfPowerRequirement2.new
  end

def test
  ji = [:Sector, :"2017-18", :"2018-19"]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

   search = params[:search]
 
  #  search = rain_fall_type
 
   jip = [:'2017-18', :'2018-19']
   ji1 = [:Sector, :'2017-18', :'2018-19']
 
 
   if search != "Percentage"
     data = [
      "Energy requirement as per demand projections (MU)",
      "Energy requirement at state periphery (MU)",
      "Peak demand at 0.734 Load Factor (MW)",
      "Peak demand at 0.734 Load Factor (MW) (Including Agricultural load upto 50 percent only) (MW)",
 ]
 
     
   else
 
     data = [
      "Distribution losses (Percentage)",
      "Intra-state transmission losses (Percentage)",
     ]
    end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = ProjectionOfPowerRequirement2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = ProjectionOfPowerRequirement2.map(b,params[:year],rain_fall_type,views)
         else
          b = ProjectionOfPowerRequirement2.map_search(params[:search],compare,year,rain_fall_type)
          a = ProjectionOfPowerRequirement2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = ProjectionOfPowerRequirement2.search(params[:search],compare,year,rain_fall_type)
        a = ProjectionOfPowerRequirement2.table(b,rain_fall_type,year,ji1,compare, search, data)
      else
        @ProjectionOfPowerRequirement2s = ProjectionOfPowerRequirement2.search(params[:search],compare,year,rain_fall_type)
        a = ProjectionOfPowerRequirement2.query(@ProjectionOfPowerRequirement2s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    ProjectionOfPowerRequirement2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /projection_of_power_requirement2s/1/edit
  def edit
  end

  # POST /projection_of_power_requirement2s
  def create
    @projection_of_power_requirement2 = ProjectionOfPowerRequirement2.new(projection_of_power_requirement2_params)

    if @projection_of_power_requirement2.save
      redirect_to @projection_of_power_requirement2, notice: 'Projection of power requirement2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /projection_of_power_requirement2s/1
  def update
    if @projection_of_power_requirement2.update(projection_of_power_requirement2_params)
      redirect_to @projection_of_power_requirement2, notice: 'Projection of power requirement2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /projection_of_power_requirement2s/1
  def destroy
    @projection_of_power_requirement2.destroy
    redirect_to projection_of_power_requirement2s_url, notice: 'Projection of power requirement2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projection_of_power_requirement2
      @projection_of_power_requirement2 = ProjectionOfPowerRequirement2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def projection_of_power_requirement2_params
      params.require(:projection_of_power_requirement2).permit(:Indicators, :'2017-18', :'2018-19')
    end
end
