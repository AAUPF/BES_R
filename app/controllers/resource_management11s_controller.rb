class ResourceManagement11sController < ApplicationController
  before_action :set_resource_management11, only: [:show, :edit, :update, :destroy]

  # GET /resource_management11s
  def index
    @resource_management11s = ResourceManagement11.all
  end

  # GET /resource_management11s/1
  def show
  end

  # GET /resource_management11s/new
  def new
    @resource_management11 = ResourceManagement11.new
  end

# def test
#   ji = [:Percentage]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]
#    search = params[:search]

# if year == "All"
#   ji1 = [:Indicators,:"2012-13", :"2013-14",:"2014-15",:"2015-16",:"2016-17",:"2017-18_BE"]
#  else
#   ji1  = [:Indicators, :Percentage, :Year]
#  end
#   if rain_fall_type || views

#     if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = ResourceManagement11.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = ResourceManagement11.map(b,params[:year],rain_fall_type,views)
#          else
#           b = ResourceManagement11.map_search(params[:search],compare,year,rain_fall_type)
#           a = ResourceManagement11.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = ResourceManagement11.search(params[:search],compare,year,rain_fall_type)
#         a = ResourceManagement11.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @ResourceManagement11s = ResourceManagement11.search(params[:search],compare,year,rain_fall_type)
#         a = ResourceManagement11.query(@ResourceManagement11s,params[:year],rain_fall_type,views,ji,compare,search)
#       end
#       respond_to do |format|
#         format.html { render json:a }
#     end

#   else
#     respond_to do |format|
#       format.html { render json: "error"}
#   end
#   end

# end



def test
  ji = [:Percentage]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Indicators"
   remove = "Bihar"

   if year == "All"
    ji1 = [:Indicators,:"2012-13", :"2013-14",:"2014-15",:"2015-16",:"2016-17",:"2017-18_BE"]
   else
    if rain_fall_type != "All"
      ji1 = [:Indicators, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:Indicators, :Percentage, :Year]
    end
    
   end

  if rain_fall_type || views

    if views == "Map View"
      l =  rain_fall_type.gsub(" ","")           
       if rain_fall_type  ==  "All"
        b = ResourceManagement11.map_search("All",compare,year,rain_fall_type)
        u = "Total"
        a = ResourceManagement11.map(b,params[:year],rain_fall_type,views)
       else
        b = ResourceManagement11.map_search(params[:search],compare,year,rain_fall_type)
        a = ResourceManagement11.map(b,rain_fall_type,year,ji)
       end
    elsif views == "Table"  
      b = ResourceManagement11.search(params[:search],compare,year,rain_fall_type,legend)
      a = ResourceManagement11.table(b,rain_fall_type,year,ji1,compare,legend)
    else
      @ResourceManagement11 = ResourceManagement11.search(params[:search],compare,year,rain_fall_type,legend)
      a = ResourceManagement11.query(@ResourceManagement11,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    ResourceManagement11.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /resource_management11s/1/edit
  def edit
  end

  # POST /resource_management11s
  def create
    @resource_management11 = ResourceManagement11.new(resource_management11_params)

    if @resource_management11.save
      redirect_to @resource_management11, notice: 'Resource management11 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /resource_management11s/1
  def update
    if @resource_management11.update(resource_management11_params)
      redirect_to @resource_management11, notice: 'Resource management11 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /resource_management11s/1
  def destroy
    @resource_management11.destroy
    redirect_to resource_management11s_url, notice: 'Resource management11 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource_management11
      @resource_management11 = ResourceManagement11.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def resource_management11_params
      params.require(:resource_management11).permit(:Indicators, :Percentage, :Year)
    end
end
