class ResourceManagement6sController < ApplicationController
  before_action :set_resource_management6, only: [:show, :edit, :update, :destroy]

  # GET /resource_management6s
  def index
    @resource_management6s = ResourceManagement6.all
  end

  # GET /resource_management6s/1
  def show
  end

  # GET /resource_management6s/new
  def new
    @resource_management6 = ResourceManagement6.new
  end

def test
  ji = [:Amount]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
# ji1 = [:Sources_of_Revenue, :Amount, :Year]
if year == "All"
  ji1 = [:Sources_of_Revenue, :"2012-13", :"2013-14",:"2014-15",:"2015-16",:"2016-17",:"2017-18_BE"]
 else
  ji1 = [:Sources_of_Revenue, :Amount, :Year]
 end
 legend = "Sources_of_Revenue"
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = ResourceManagement6.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = ResourceManagement6.map(b,params[:year],rain_fall_type,views)
         else
          b = ResourceManagement6.map_search(params[:search],compare,year,rain_fall_type)
          a = ResourceManagement6.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = ResourceManagement6.search(params[:search],compare,year,rain_fall_type,legend)
        a = ResourceManagement6.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @ResourceManagement6s = ResourceManagement6.search(params[:search],compare,year,rain_fall_type,legend)
        a = ResourceManagement6.query(@ResourceManagement6s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    ResourceManagement6.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /resource_management6s/1/edit
  def edit
  end

  # POST /resource_management6s
  def create
    @resource_management6 = ResourceManagement6.new(resource_management6_params)

    if @resource_management6.save
      redirect_to @resource_management6, notice: 'Resource management6 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /resource_management6s/1
  def update
    if @resource_management6.update(resource_management6_params)
      redirect_to @resource_management6, notice: 'Resource management6 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /resource_management6s/1
  def destroy
    @resource_management6.destroy
    redirect_to resource_management6s_url, notice: 'Resource management6 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource_management6
      @resource_management6 = ResourceManagement6.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def resource_management6_params
      params.require(:resource_management6).permit(:Sources_of_Revenue, :Amount, :Year)
    end
end
