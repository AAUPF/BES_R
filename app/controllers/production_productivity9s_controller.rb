class ProductionProductivity9sController < ApplicationController
  before_action :set_production_productivity9, only: [:show, :edit, :update, :destroy]

  # GET /production_productivity9s
  def index
    @production_productivity9s = ProductionProductivity9.all
  end

  # GET /production_productivity9s/1
  def show
  end

  # GET /production_productivity9s/new
  def new
    @production_productivity9 = ProductionProductivity9.new
  end

# def test
#   ji = [ :Area, :Production, :Productivity]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#    ji1 = [:Districts, :Area, :Production, :Productivity,  :Percentage_Area, :Percentage_Production,:Year]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = ProductionProductivity9.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = ProductionProductivity9.map(b,params[:year],rain_fall_type,views)
#          else
#           b = ProductionProductivity9.map_search(params[:search],compare,year,rain_fall_type)
#           a = ProductionProductivity9.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = ProductionProductivity9.search(params[:search],compare,year,rain_fall_type)
#         a = ProductionProductivity9.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @ProductionProductivity9s = ProductionProductivity9.search(params[:search],compare,year,rain_fall_type)
#         a = ProductionProductivity9.query(@ProductionProductivity9s,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [ :Area, :Production, :Productivity]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Districts"
   remove = "Bihar"
 


   if year == "All"
    ji1 = [:Districts, :"2015", :"2016"]
   else
    if rain_fall_type != "All"
      ji1 = [:Districts, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:Districts, :Area, :Production, :Productivity, :Percentage_Area, :Percentage_Production, :Year]
    end
    
   end

  if rain_fall_type || views

    if views == "Map View"
      l =  rain_fall_type.gsub(" ","")           
       if rain_fall_type  ==  "All"
        b = ProductionProductivity9.map_search("All",compare,year,rain_fall_type)
        u = "Total"
        a = ProductionProductivity9.map(b,params[:year],rain_fall_type,views)
       else
        b = ProductionProductivity9.map_search(params[:search],compare,year,rain_fall_type)
        a = ProductionProductivity9.map(b,rain_fall_type,year,ji)
       end
    elsif views == "Table"  
      b = ProductionProductivity9.search(params[:search],compare,year,rain_fall_type,legend)
      a = ProductionProductivity8.table(b,rain_fall_type,year,ji1,compare,legend)
    else
      @ProductionProductivity9 = ProductionProductivity9.search(params[:search],compare,year,rain_fall_type,legend)
      a = ProductionProductivity9.query(@ProductionProductivity9,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    ProductionProductivity9.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /production_productivity9s/1/edit
  def edit
  end

  # POST /production_productivity9s
  def create
    @production_productivity9 = ProductionProductivity9.new(production_productivity9_params)

    if @production_productivity9.save
      redirect_to @production_productivity9, notice: 'Production productivity9 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /production_productivity9s/1
  def update
    if @production_productivity9.update(production_productivity9_params)
      redirect_to @production_productivity9, notice: 'Production productivity9 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /production_productivity9s/1
  def destroy
    @production_productivity9.destroy
    redirect_to production_productivity9s_url, notice: 'Production productivity9 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_production_productivity9
      @production_productivity9 = ProductionProductivity9.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def production_productivity9_params
      params.require(:production_productivity9).permit(:Districts, :Area, :Production, :Productivity, :Year, :Percentage_Area, :Percentage_Production)
    end
end
