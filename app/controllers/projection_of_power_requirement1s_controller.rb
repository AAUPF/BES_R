class ProjectionOfPowerRequirement1sController < ApplicationController
  before_action :set_projection_of_power_requirement1, only: [:show, :edit, :update, :destroy]

  # GET /projection_of_power_requirement1s
  def index
    @projection_of_power_requirement1s = ProjectionOfPowerRequirement1.all
    
  end

  # GET /projection_of_power_requirement1s/1
  def show
  end

  # GET /projection_of_power_requirement1s/new
  def new
    @projection_of_power_requirement1 = ProjectionOfPowerRequirement1.new
  end

def test
  ji = [:Sector, :"2017-18", :"2018-19"]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

   search = params[:search]
 
   search = rain_fall_type
 
   jip = [:'2017-18', :'2018-19']
   ji1 = [:Sector, :'2017-18', :'2018-19']
 
 
   if views != "Table"
 
 
     data = [
      "Existing Electrified Households",
      "Unelectrified/ New Households when Electrified",
      "Total Domestic Requirement",
      "Consumers other than Domestic",
      "New Agricultural  Connections",
      
 ]
 
     
   else
 
     data = [
      "Existing Electrified Households",
      "Unelectrified/ New Households when Electrified",
      "Total Domestic Requirement",
      "Consumers other than Domestic",
      "New Agricultural  Connections",
      "Total",
     ]
    end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = ProjectionOfPowerRequirement1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = ProjectionOfPowerRequirement1.map(b,params[:year],rain_fall_type,views)
         else
          b = ProjectionOfPowerRequirement1.map_search(params[:search],compare,year,rain_fall_type)
          a = ProjectionOfPowerRequirement1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = ProjectionOfPowerRequirement1.search(params[:search],compare,year,rain_fall_type)
        a = ProjectionOfPowerRequirement1.table(b,rain_fall_type,year,ji1,compare, search, data)
      else
        @ProjectionOfPowerRequirement1s = ProjectionOfPowerRequirement1.search(params[:search],compare,year,rain_fall_type)
        a = ProjectionOfPowerRequirement1.query(@ProjectionOfPowerRequirement1s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    ProjectionOfPowerRequirement1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /projection_of_power_requirement1s/1/edit
  def edit
  end

  # POST /projection_of_power_requirement1s
  def create
    @projection_of_power_requirement1 = ProjectionOfPowerRequirement1.new(projection_of_power_requirement1_params)

    if @projection_of_power_requirement1.save
      redirect_to @projection_of_power_requirement1, notice: 'Projection of power requirement1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /projection_of_power_requirement1s/1
  def update
    if @projection_of_power_requirement1.update(projection_of_power_requirement1_params)
      redirect_to @projection_of_power_requirement1, notice: 'Projection of power requirement1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /projection_of_power_requirement1s/1
  def destroy
    @projection_of_power_requirement1.destroy
    redirect_to projection_of_power_requirement1s_url, notice: 'Projection of power requirement1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projection_of_power_requirement1
      @projection_of_power_requirement1 = ProjectionOfPowerRequirement1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def projection_of_power_requirement1_params
      params.require(:projection_of_power_requirement1).permit(:Category_of_Households, :'2017-18', :'2018-19')
    end
end
