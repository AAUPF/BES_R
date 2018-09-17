class ResourceManagement14sController < ApplicationController
  before_action :set_resource_management14, only: [:show, :edit, :update, :destroy]

  # GET /resource_management14s
  def index
    @resource_management14s = ResourceManagement14.all
  end

  # GET /resource_management14s/1
  def show
  end

  # GET /resource_management14s/new
  def new
    @resource_management14 = ResourceManagement14.new
  end

def test
  ji = [:Agency, :GoI_Scheme, :"2016-17"]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1 = [:Agency, :GoI_Scheme, :"2016-17"]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = ResourceManagement14.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = ResourceManagement14.map(b,params[:year],rain_fall_type,views)
         else
          b = ResourceManagement14.map_search(params[:search],compare,year,rain_fall_type)
          a = ResourceManagement14.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = ResourceManagement14.search(params[:search],compare,year,rain_fall_type)
        a = ResourceManagement14.table(b,rain_fall_type,year,ji1,compare)
      else
        @ResourceManagement14s = ResourceManagement14.search(params[:search],compare,year,rain_fall_type)
        a = ResourceManagement14.query(@ResourceManagement14s,params[:year],rain_fall_type,views,ji,compare)
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
    ResourceManagement14.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /resource_management14s/1/edit
  def edit
  end

  # POST /resource_management14s
  def create
    @resource_management14 = ResourceManagement14.new(resource_management14_params)

    if @resource_management14.save
      redirect_to @resource_management14, notice: 'Resource management14 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /resource_management14s/1
  def update
    if @resource_management14.update(resource_management14_params)
      redirect_to @resource_management14, notice: 'Resource management14 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /resource_management14s/1
  def destroy
    @resource_management14.destroy
    redirect_to resource_management14s_url, notice: 'Resource management14 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource_management14
      @resource_management14 = ResourceManagement14.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def resource_management14_params
      params.require(:resource_management14).permit(:Agency, :GoI_Scheme, :'2016-17')
    end
end
