class ResourceManagement5sController < ApplicationController
  before_action :set_resource_management5, only: [:show, :edit, :update, :destroy]

  # GET /resource_management5s
  def index
    @resource_management5s = ResourceManagement5.all
  end

  # GET /resource_management5s/1
  def show
  end

  # GET /resource_management5s/new
  def new
    @resource_management5 = ResourceManagement5.new
  end

def test
  ji = [:Percentage]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
# ji1 = [:Source, :Percentage, :Year]
if year == "All"
  ji1 = [:Source, :"2012-13", :"2013-14",:"2014-15",:"2015-16",:"2016-17",:"2017-18_BE"]
 else
  ji1 = [:Source, :Percentage, :Year]
 end
 legend = "Source"
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = ResourceManagement5.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = ResourceManagement5.map(b,params[:year],rain_fall_type,views)
         else
          b = ResourceManagement5.map_search(params[:search],compare,year,rain_fall_type)
          a = ResourceManagement5.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = ResourceManagement5.search(params[:search],compare,year,rain_fall_type,legend)
        a = ResourceManagement5.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @ResourceManagement5s = ResourceManagement5.search(params[:search],compare,year,rain_fall_type,legend)
        a = ResourceManagement5.query(@ResourceManagement5s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    ResourceManagement5.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /resource_management5s/1/edit
  def edit
  end

  # POST /resource_management5s
  def create
    @resource_management5 = ResourceManagement5.new(resource_management5_params)

    if @resource_management5.save
      redirect_to @resource_management5, notice: 'Resource management5 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /resource_management5s/1
  def update
    if @resource_management5.update(resource_management5_params)
      redirect_to @resource_management5, notice: 'Resource management5 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /resource_management5s/1
  def destroy
    @resource_management5.destroy
    redirect_to resource_management5s_url, notice: 'Resource management5 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource_management5
      @resource_management5 = ResourceManagement5.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def resource_management5_params
      params.require(:resource_management5).permit(:Source, :Percentage, :Year)
    end
end
