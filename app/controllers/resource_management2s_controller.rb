class ResourceManagement2sController < ApplicationController
  before_action :set_resource_management2, only: [:show, :edit, :update, :destroy]

  # GET /resource_management2s
  def index
    @resource_management2s = ResourceManagement2.all
  end

  # GET /resource_management2s/1
  def show
  end

  # GET /resource_management2s/new
  def new
    @resource_management2 = ResourceManagement2.new
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
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = ResourceManagement2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = ResourceManagement2.map(b,params[:year],rain_fall_type,views)
         else
          b = ResourceManagement2.map_search(params[:search],compare,year,rain_fall_type)
          a = ResourceManagement2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = ResourceManagement2.search(params[:search],compare,year,rain_fall_type)
        a = ResourceManagement2.table(b,rain_fall_type,year,ji1,compare)
      else
        @ResourceManagement2s = ResourceManagement2.search(params[:search],compare,year,rain_fall_type)
        a = ResourceManagement2.query(@ResourceManagement2s,params[:year],rain_fall_type,views,ji,compare,search)
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
    ResourceManagement2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /resource_management2s/1/edit
  def edit
  end

  # POST /resource_management2s
  def create
    @resource_management2 = ResourceManagement2.new(resource_management2_params)

    if @resource_management2.save
      redirect_to @resource_management2, notice: 'Resource management2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /resource_management2s/1
  def update
    if @resource_management2.update(resource_management2_params)
      redirect_to @resource_management2, notice: 'Resource management2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /resource_management2s/1
  def destroy
    @resource_management2.destroy
    redirect_to resource_management2s_url, notice: 'Resource management2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource_management2
      @resource_management2 = ResourceManagement2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def resource_management2_params
      params.require(:resource_management2).permit(:Sources_of_Revenue, :Amount, :Year)
    end
end
