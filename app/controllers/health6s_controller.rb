class Health6sController < ApplicationController
  before_action :set_health6, only: [:show, :edit, :update, :destroy]

  # GET /health6s
  def index
    @health6s = Health6.all
  end

  # GET /health6s/1
  def show
  end

  # GET /health6s/new
  def new
    @health6 = Health6.new
  end

def test
   unit1 =  "000"
  ji = [:Average_number_of_Outpatient_visits_per_day, :Inpatient_Bed_Occupancy_Rate]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1 = [:Districts, :Average_number_of_Outpatient_visits_per_day, :Inpatient_Bed_Occupancy_Rate, :Year]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Health6.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Health6.map(b,params[:year],rain_fall_type,views)
         else
          b = Health6.map_search(params[:search],compare,year,rain_fall_type)
          a = Health6.map(b,rain_fall_type,year,ji,unit1)
         end
      elsif views == "Table"  
        b = Health6.search(params[:search],compare,year,rain_fall_type)
        a = Health6.table(b,rain_fall_type,year,ji1,compare)
      else
        @Health6s = Health6.search(params[:search],compare,year,rain_fall_type)
        a = Health6.query(@Health6s,params[:year],rain_fall_type,views,ji,compare)
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
    Health6.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /health6s/1/edit
  def edit
  end

  # POST /health6s
  def create
    @health6 = Health6.new(health6_params)

    if @health6.save
      redirect_to @health6, notice: 'Health6 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /health6s/1
  def update
    if @health6.update(health6_params)
      redirect_to @health6, notice: 'Health6 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /health6s/1
  def destroy
    @health6.destroy
    redirect_to health6s_url, notice: 'Health6 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health6
      @health6 = Health6.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def health6_params
      params.require(:health6).permit(:Districts, :Average_number_of_Outpatient_visits_per_day, :Inpatient_Bed_Occupancy_Rate, :Year)
    end
end
