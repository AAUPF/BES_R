class ExpenditureOnUrbanDevelopmentsController < ApplicationController
  before_action :set_expenditure_on_urban_development, only: [:show, :edit, :update, :destroy]

  # GET /expenditure_on_urban_developments
  def index
    @expenditure_on_urban_developments = ExpenditureOnUrbanDevelopment.all
  end

  # GET /expenditure_on_urban_developments/1
  def show
  end

  # GET /expenditure_on_urban_developments/new
  def new
    @expenditure_on_urban_development = ExpenditureOnUrbanDevelopment.new
  end

# def test
#   ji = [:Year, :Housing, :Urban_Development, :Total, :Indicator]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = ExpenditureOnUrbanDevelopment.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = ExpenditureOnUrbanDevelopment.map(b,params[:year],rain_fall_type,views)
#          else
#           b = ExpenditureOnUrbanDevelopment.map_search(params[:search],compare,year,rain_fall_type)
#           a = ExpenditureOnUrbanDevelopment.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = ExpenditureOnUrbanDevelopment.search(params[:search],compare,year,rain_fall_type)
#         a = ExpenditureOnUrbanDevelopment.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @ExpenditureOnUrbanDevelopments = ExpenditureOnUrbanDevelopment.search(params[:search],compare,year,rain_fall_type)
#         a = ExpenditureOnUrbanDevelopment.query(@ExpenditureOnUrbanDevelopments,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [ :Housing, :Urban_Development, :Total]
  rain_fall_type = params[:rain_fall_type]
  views  = params[:views]
  year  = params[:year]
  search  = params[:search]
  legend = "Indicator"
  compare = params[:compare]
  ji1 = [:Year, :Housing, :Urban_Development, :Total, :Indicator]
if rain_fall_type || views
    if views == "Map View"
      l =  rain_fall_type.gsub(" ","")           
       if rain_fall_type  ==  "All"
        b = ExpenditureOnUrbanDevelopment.map_search("All",compare,year,rain_fall_type)
        u = "Total"
        a = ExpenditureOnUrbanDevelopment.map(b,params[:year],rain_fall_type,views)
       else
        b = ExpenditureOnUrbanDevelopment.map_search(params[:search],compare,year,rain_fall_type)
        a = ExpenditureOnUrbanDevelopment.map(b,rain_fall_type,year,ji)
       end
    elsif views == "Table"  
      b = ExpenditureOnUrbanDevelopment.search(params[:search],compare,year,rain_fall_type,legend)
      a = ExpenditureOnUrbanDevelopment.table(b,rain_fall_type,year,ji1,compare)
    else
      @ExpenditureOnUrbanDevelopments = ExpenditureOnUrbanDevelopment.search(params[:search],compare,year,rain_fall_type,legend)
      a = ExpenditureOnUrbanDevelopment.query(@ExpenditureOnUrbanDevelopments,params[:year],rain_fall_type,views,ji,compare)
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
    ExpenditureOnUrbanDevelopment.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /expenditure_on_urban_developments/1/edit
  def edit
  end

  # POST /expenditure_on_urban_developments
  def create
    @expenditure_on_urban_development = ExpenditureOnUrbanDevelopment.new(expenditure_on_urban_development_params)

    if @expenditure_on_urban_development.save
      redirect_to @expenditure_on_urban_development, notice: 'Expenditure on urban development was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /expenditure_on_urban_developments/1
  def update
    if @expenditure_on_urban_development.update(expenditure_on_urban_development_params)
      redirect_to @expenditure_on_urban_development, notice: 'Expenditure on urban development was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /expenditure_on_urban_developments/1
  def destroy
    @expenditure_on_urban_development.destroy
    redirect_to expenditure_on_urban_developments_url, notice: 'Expenditure on urban development was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expenditure_on_urban_development
      @expenditure_on_urban_development = ExpenditureOnUrbanDevelopment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def expenditure_on_urban_development_params
      params.require(:expenditure_on_urban_development).permit(:Year, :Housing, :Urban_Development, :Total, :Indicator)
    end
end
