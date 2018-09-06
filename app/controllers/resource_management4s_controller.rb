class ResourceManagement4sController < ApplicationController
  before_action :set_resource_management4, only: [:show, :edit, :update, :destroy]

  # GET /resource_management4s
  def index
    @resource_management4s = ResourceManagement4.all
  end

  # GET /resource_management4s/1
  def show
  end

  # GET /resource_management4s/new
  def new
    @resource_management4 = ResourceManagement4.new
  end

def test
  ji = [:Percentage_Growth_Over_Previous_Year]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
# ji1 = [:Sources_of_Revenue, :Percentage_Growth_Over_Previous_Year, :Year]
if year == "All"
  ji1 = [:Sources_of_Revenue, :"2013-14",:"2014-15",:"2015-16",:"2016-17",:"2017-18_BE",:"CAGR_2012_to_18"]
 else
  ji1 = [:Sources_of_Revenue, :Percentage_Growth_Over_Previous_Year, :Year]
 end
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = ResourceManagement4.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = ResourceManagement4.map(b,params[:year],rain_fall_type,views)
         else
          b = ResourceManagement4.map_search(params[:search],compare,year,rain_fall_type)
          a = ResourceManagement4.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = ResourceManagement4.search(params[:search],compare,year,rain_fall_type)
        a = ResourceManagement4.table(b,rain_fall_type,year,ji1,compare)
      else
        @ResourceManagement4s = ResourceManagement4.search(params[:search],compare,year,rain_fall_type)
        a = ResourceManagement4.query(@ResourceManagement4s,params[:year],rain_fall_type,views,ji,compare,search)
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
    ResourceManagement4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /resource_management4s/1/edit
  def edit
  end

  # POST /resource_management4s
  def create
    @resource_management4 = ResourceManagement4.new(resource_management4_params)

    if @resource_management4.save
      redirect_to @resource_management4, notice: 'Resource management4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /resource_management4s/1
  def update
    if @resource_management4.update(resource_management4_params)
      redirect_to @resource_management4, notice: 'Resource management4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /resource_management4s/1
  def destroy
    @resource_management4.destroy
    redirect_to resource_management4s_url, notice: 'Resource management4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource_management4
      @resource_management4 = ResourceManagement4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def resource_management4_params
      params.require(:resource_management4).permit(:Sources_of_Revenue, :Percentage_Growth_Over_Previous_Year, :Year)
    end
end
