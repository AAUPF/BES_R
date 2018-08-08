class Health14sController < ApplicationController
  before_action :set_health14, only: [:show, :edit, :update, :destroy]

  # GET /health14s
  def index
    @health14s = Health14.all
  end

  # GET /health14s/1
  def show
  end

  # GET /health14s/new
  def new
    @health14 = Health14.new
  end

def test
  ji = [:Budget_for_ICDS_Bihar, :Funds_Released_by_GOI, :Expenditure, :Fund_Released_as_Percentage_of_Budget, :Expenditure_as_Percentage_of_Fund_Released]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1 = [:Year, :Budget_for_ICDS_Bihar, :Funds_Released_by_GOI, :Expenditure, :Fund_Released_as_Percentage_of_Budget, :Expenditure_as_Percentage_of_Fund_Released]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Health14.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Health14.map(b,params[:year],rain_fall_type,views)
         else
          b = Health14.map_search(params[:search],compare,year,rain_fall_type)
          a = Health14.map(b,rain_fall_type,year,ji,unit1)
         end
      elsif views == "Table"  
        b = Health14.search(params[:search],compare,year,rain_fall_type)
        a = Health14.table(b,rain_fall_type,year,ji1,compare)
      else
        @Health14s = Health14.search(params[:search],compare,year,rain_fall_type)
        a = Health14.query(@Health14s,params[:year],rain_fall_type,views,ji,compare)
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
    Health14.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /health14s/1/edit
  def edit
  end

  # POST /health14s
  def create
    @health14 = Health14.new(health14_params)

    if @health14.save
      redirect_to @health14, notice: 'Health14 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /health14s/1
  def update
    if @health14.update(health14_params)
      redirect_to @health14, notice: 'Health14 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /health14s/1
  def destroy
    @health14.destroy
    redirect_to health14s_url, notice: 'Health14 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health14
      @health14 = Health14.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def health14_params
      params.require(:health14).permit(:Year, :Budget_for_ICDS_Bihar, :Funds_Released_by_GOI, :Expenditure, :Fund_Released_as_Percentage_of_Budget, :Expenditure_as_Percentage_of_Fund_Released)
    end
end
