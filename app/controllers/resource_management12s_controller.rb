class ResourceManagement12sController < ApplicationController
  before_action :set_resource_management12, only: [:show, :edit, :update, :destroy]

  # GET /resource_management12s
  def index
    @resource_management12s = ResourceManagement12.all
  end

  # GET /resource_management12s/1
  def show
  end

  # GET /resource_management12s/new
  def new
    @resource_management12 = ResourceManagement12.new
  end

def test
  ji = [:Buoyancy_Ratio]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]

if year == "All"
  ji1 = [:Revenue_Sources,:"2012-13", :"2013-14",:"2014-15",:"2015-16",:"2016-17",:"2017-18_BE"]
 else
  ji1 = [:Revenue_Sources, :Buoyancy_Ratio, :Year]
 end
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = ResourceManagement12.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = ResourceManagement12.map(b,params[:year],rain_fall_type,views)
         else
          b = ResourceManagement12.map_search(params[:search],compare,year,rain_fall_type)
          a = ResourceManagement12.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = ResourceManagement12.search(params[:search],compare,year,rain_fall_type)
        a = ResourceManagement12.table(b,rain_fall_type,year,ji1,compare)
      else
        @ResourceManagement12s = ResourceManagement12.search(params[:search],compare,year,rain_fall_type)
        a = ResourceManagement12.query(@ResourceManagement12s,params[:year],rain_fall_type,views,ji,compare,search)
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
    ResourceManagement12.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /resource_management12s/1/edit
  def edit
  end

  # POST /resource_management12s
  def create
    @resource_management12 = ResourceManagement12.new(resource_management12_params)

    if @resource_management12.save
      redirect_to @resource_management12, notice: 'Resource management12 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /resource_management12s/1
  def update
    if @resource_management12.update(resource_management12_params)
      redirect_to @resource_management12, notice: 'Resource management12 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /resource_management12s/1
  def destroy
    @resource_management12.destroy
    redirect_to resource_management12s_url, notice: 'Resource management12 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource_management12
      @resource_management12 = ResourceManagement12.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def resource_management12_params
      params.require(:resource_management12).permit(:Revenue_Sources, :Buoyancy_Ratio, :Year)
    end
end
