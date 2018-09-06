class ResourceManagement13sController < ApplicationController
  before_action :set_resource_management13, only: [:show, :edit, :update, :destroy]

  # GET /resource_management13s
  def index
    @resource_management13s = ResourceManagement13.all
  end

  # GET /resource_management13s/1
  def show
  end

  # GET /resource_management13s/new
  def new
    @resource_management13 = ResourceManagement13.new
  end

def test
  ji = [:Amount]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
# ji1 = [:Sources, :Amount, :Year]
if year == "All"
  ji1 = [:Sources,:"2012-13", :"2013-14",:"2014-15",:"2015-16",:"2016-17",:"2017-18_BE"]
 else
  ji1  = [:Sources, :Amount, :Year]
 end
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = ResourceManagement13.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = ResourceManagement13.map(b,params[:year],rain_fall_type,views)
         else
          b = ResourceManagement13.map_search(params[:search],compare,year,rain_fall_type)
          a = ResourceManagement13.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = ResourceManagement13.search(params[:search],compare,year,rain_fall_type)
        a = ResourceManagement13.table(b,rain_fall_type,year,ji1,compare)
      else
        @ResourceManagement13s = ResourceManagement13.search(params[:search],compare,year,rain_fall_type)
        a = ResourceManagement13.query(@ResourceManagement13s,params[:year],rain_fall_type,views,ji,compare,search)
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
    ResourceManagement13.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /resource_management13s/1/edit
  def edit
  end

  # POST /resource_management13s
  def create
    @resource_management13 = ResourceManagement13.new(resource_management13_params)

    if @resource_management13.save
      redirect_to @resource_management13, notice: 'Resource management13 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /resource_management13s/1
  def update
    if @resource_management13.update(resource_management13_params)
      redirect_to @resource_management13, notice: 'Resource management13 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /resource_management13s/1
  def destroy
    @resource_management13.destroy
    redirect_to resource_management13s_url, notice: 'Resource management13 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource_management13
      @resource_management13 = ResourceManagement13.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def resource_management13_params
      params.require(:resource_management13).permit(:Sources, :Amount, :Year)
    end
end
