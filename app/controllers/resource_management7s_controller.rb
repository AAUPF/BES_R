class ResourceManagement7sController < ApplicationController
  before_action :set_resource_management7, only: [:show, :edit, :update, :destroy]

  # GET /resource_management7s
  def index
    @resource_management7s = ResourceManagement7.all
  end

  # GET /resource_management7s/1
  def show
  end

  # GET /resource_management7s/new
  def new
    @resource_management7 = ResourceManagement7.new
  end

def test
  ji = [:Percentage]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   search = params[:search]
   compare = params[:compare]
   if year == "All"
    ji1 = [:Revenue_Sources, :"2012-13", :"2013-14",:"2014-15",:"2015-16",:"2016-17",:"2017-18_BE"]
   else
    ji1 = [:Revenue_Sources, :Percentage, :Year]
   end
   legend = "Revenue_Sources"
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = ResourceManagement7.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = ResourceManagement7.map(b,params[:year],rain_fall_type,views)
         else
          b = ResourceManagement7.map_search(params[:search],compare,year,rain_fall_type)
          a = ResourceManagement7.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = ResourceManagement7.search(params[:search],compare,year,rain_fall_type,legend)
        a = ResourceManagement7.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @ResourceManagement7s = ResourceManagement7.search(params[:search],compare,year,rain_fall_type,legend)
        a = ResourceManagement7.query(@ResourceManagement7s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    ResourceManagement7.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /resource_management7s/1/edit
  def edit
  end

  # POST /resource_management7s
  def create
    @resource_management7 = ResourceManagement7.new(resource_management7_params)

    if @resource_management7.save
      redirect_to @resource_management7, notice: 'Resource management7 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /resource_management7s/1
  def update
    if @resource_management7.update(resource_management7_params)
      redirect_to @resource_management7, notice: 'Resource management7 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /resource_management7s/1
  def destroy
    @resource_management7.destroy
    redirect_to resource_management7s_url, notice: 'Resource management7 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource_management7
      @resource_management7 = ResourceManagement7.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def resource_management7_params
      params.require(:resource_management7).permit(:Revenue_Sources, :Percentage, :Year)
    end
end
