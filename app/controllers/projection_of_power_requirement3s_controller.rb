class ProjectionOfPowerRequirement3sController < ApplicationController
  before_action :set_projection_of_power_requirement3, only: [:show, :edit, :update, :destroy]

  # GET /projection_of_power_requirement3s
  def index
    @projection_of_power_requirement3s = ProjectionOfPowerRequirement3.all

    respond_to do |format|
      format.html { render json:  @projection_of_power_requirement3s}
  end
  end

  # GET /projection_of_power_requirement3s/1
  def show
  end

  # GET /projection_of_power_requirement3s/new
  def new
    @projection_of_power_requirement3 = ProjectionOfPowerRequirement3.new
  end





def test
  ji = [:Sector, :'Mar-17', :'2017-18', :'2018-19', :Indicator]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   jip = [:'Mar-17', :'2017-18', :'2018-19']


   data = [
    "State Thermal",
    "State Small Hydro",
    "CGS Thermal",
    "CGS Hydro",
    "IPPs Projects (Case1)",
    "JV / Partnership (Thermal)",
    "NCE / RNES",
    "Total",
  ]
  legend = "Sources"

search = rain_fall_type

   ji1 = [:Sector, :'Mar-17', :'2017-18', :'2018-19', :Indicator]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = ProjectionOfPowerRequirement3.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = ProjectionOfPowerRequirement3.map(b,params[:year],rain_fall_type,views)
         else
          b = ProjectionOfPowerRequirement3.map_search(params[:search],compare,year,rain_fall_type)
          a = ProjectionOfPowerRequirement3.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = ProjectionOfPowerRequirement3.search(params[:search],compare,year,rain_fall_type)
        a = ProjectionOfPowerRequirement3.new_table(b,rain_fall_type,year,ji1,compare, search, data,legend)
      else
        @ProjectionOfPowerRequirement3s = ProjectionOfPowerRequirement3.search(params[:search],compare,year,rain_fall_type)
        a = ProjectionOfPowerRequirement3.query(@ProjectionOfPowerRequirement3s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    ProjectionOfPowerRequirement3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /projection_of_power_requirement3s/1/edit
  def edit
  end

  # POST /projection_of_power_requirement3s
  def create
    @projection_of_power_requirement3 = ProjectionOfPowerRequirement3.new(projection_of_power_requirement3_params)

    if @projection_of_power_requirement3.save
      redirect_to @projection_of_power_requirement3, notice: 'Projection of power requirement3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /projection_of_power_requirement3s/1
  def update
    if @projection_of_power_requirement3.update(projection_of_power_requirement3_params)
      redirect_to @projection_of_power_requirement3, notice: 'Projection of power requirement3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /projection_of_power_requirement3s/1
  def destroy
    @projection_of_power_requirement3.destroy
    redirect_to projection_of_power_requirement3s_url, notice: 'Projection of power requirement3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projection_of_power_requirement3
      @projection_of_power_requirement3 = ProjectionOfPowerRequirement3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def projection_of_power_requirement3_params
      params.require(:projection_of_power_requirement3).permit(:Sector, :'Mar-17', :'2017-18', :'2018-19', :Indicator)
    end
end
