class ResourceManagement10sController < ApplicationController
  before_action :set_resource_management10, only: [:show, :edit, :update, :destroy]

  # GET /resource_management10s
  def index
    @resource_management10s = ResourceManagement10.all
  end

  # GET /resource_management10s/1
  def show
  end

  # GET /resource_management10s/new
  def new
    @resource_management10 = ResourceManagement10.new
  end

def test
  ji = [:Collection, :Expenditure_on_collection, :Cost_as_Percentage_of_Collection]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
  #  ji1 = [:Indicator, :Collection, :Expenditure_on_collection, :Cost_as_Percentage_of_Collection, :Year]
   if year == "All"
    ji1 = [:Indicator, :"2012-13", :"2013-14",:"2014-15",:"2015-16",:"2016-17",:"2017-18 BE"]
  else
    if rain_fall_type == "Collection"
      ji1 = [:Indicator, :Collection, :Year]
    elsif rain_fall_type == "Expenditure_on_collection"
      ji1 = [:Indicator, :Expenditure_on_collection, :Year]
    elsif rain_fall_type == "Cost_as_Percentage_of_Collection"
      ji1 = [:Indicator, :Cost_as_Percentage_of_Collection, :Year]
    else
      ji1 = [:Indicator, :Collection, :Expenditure_on_collection, :Cost_as_Percentage_of_Collection, :Year]
  end
  end
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = ResourceManagement10.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = ResourceManagement10.map(b,params[:year],rain_fall_type,views)
         else
          b = ResourceManagement10.map_search(params[:search],compare,year,rain_fall_type)
          a = ResourceManagement10.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = ResourceManagement10.search(params[:search],compare,year,rain_fall_type)
        a = ResourceManagement10.table(b,rain_fall_type,year,ji1,compare)
      else
        @ResourceManagement10s = ResourceManagement10.search(params[:search],compare,year,rain_fall_type)
        a = ResourceManagement10.query(@ResourceManagement10s,params[:year],rain_fall_type,views,ji,compare,search)
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
    ResourceManagement10.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /resource_management10s/1/edit
  def edit
  end

  # POST /resource_management10s
  def create
    @resource_management10 = ResourceManagement10.new(resource_management10_params)

    if @resource_management10.save
      redirect_to @resource_management10, notice: 'Resource management10 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /resource_management10s/1
  def update
    if @resource_management10.update(resource_management10_params)
      redirect_to @resource_management10, notice: 'Resource management10 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /resource_management10s/1
  def destroy
    @resource_management10.destroy
    redirect_to resource_management10s_url, notice: 'Resource management10 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource_management10
      @resource_management10 = ResourceManagement10.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def resource_management10_params
      params.require(:resource_management10).permit(:Indicator, :Collection, :Expenditure_on_collection, :Cost_as_Percentage_of_Collection, :Year)
    end
end
