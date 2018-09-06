class ResourceManagement8sController < ApplicationController
  before_action :set_resource_management8, only: [:show, :edit, :update, :destroy]

  # GET /resource_management8s
  def index
    @resource_management8s = ResourceManagement8.all
  end

  # GET /resource_management8s/1
  def show
  end

  # GET /resource_management8s/new
  def new
    @resource_management8 = ResourceManagement8.new
  end

def test
  ji = [:Yearly_Growth_Rates]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
  #  ji1 = [:Revenue_Sources, :Yearly_Growth_Rates, :Year]
  if year == "All"
    ji1 = [:Revenue_Sources, :"2013-14",:"2014-15",:"2015-16",:"2016-17",:"2017-18_BE",:"CAGR_2012_to_18"]
   else
    ji1 = [:Revenue_Sources, :Yearly_Growth_Rates, :Year]
   end
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = ResourceManagement8.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = ResourceManagement8.map(b,params[:year],rain_fall_type,views)
         else
          b = ResourceManagement8.map_search(params[:search],compare,year,rain_fall_type)
          a = ResourceManagement8.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = ResourceManagement8.search(params[:search],compare,year,rain_fall_type)
        a = ResourceManagement8.table(b,rain_fall_type,year,ji1,compare)
      else
        @ResourceManagement8s = ResourceManagement8.search(params[:search],compare,year,rain_fall_type)
        a = ResourceManagement8.query(@ResourceManagement8s,params[:year],rain_fall_type,views,ji,compare,search)
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
    ResourceManagement8.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /resource_management8s/1/edit
  def edit
  end

  # POST /resource_management8s
  def create
    @resource_management8 = ResourceManagement8.new(resource_management8_params)

    if @resource_management8.save
      redirect_to @resource_management8, notice: 'Resource management8 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /resource_management8s/1
  def update
    if @resource_management8.update(resource_management8_params)
      redirect_to @resource_management8, notice: 'Resource management8 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /resource_management8s/1
  def destroy
    @resource_management8.destroy
    redirect_to resource_management8s_url, notice: 'Resource management8 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource_management8
      @resource_management8 = ResourceManagement8.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def resource_management8_params
      params.require(:resource_management8).permit(:Revenue_Sources, :Yearly_Growth_Rates, :Year)
    end
end
