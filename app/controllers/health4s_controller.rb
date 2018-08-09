class Health4sController < ApplicationController
  before_action :set_health4, only: [:show, :edit, :update, :destroy]

  # GET /health4s
  def index
    @health4s = Health4.all
  end

  # GET /health4s/1
  def show
  end

  # GET /health4s/new
  def new
    @health4 = Health4.new
  end

def test
  ji = [:Number_of_patients_visiting_government_hospitals_per_month, :Percentage_growth]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1 = [:Year, :Number_of_patients_visiting_government_hospitals_per_month, :Percentage_growth]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Health4.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Health4.map(b,params[:year],rain_fall_type,views)
         else
          b = Health4.map_search(params[:search],compare,year,rain_fall_type)
          a = Health4.map(b,rain_fall_type,year,ji,unit1)
         end
      elsif views == "Table"  
        b = Health4.search(params[:search],compare,year,rain_fall_type)
        a = Health4.table(b,rain_fall_type,year,ji1,compare)
      else
        @Health4s = Health4.search(params[:search],compare,year,rain_fall_type)
        a = Health4.query(@Health4s,params[:year],rain_fall_type,views,ji,compare)
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
    Health4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /health4s/1/edit
  def edit
  end

  # POST /health4s
  def create
    @health4 = Health4.new(health4_params)

    if @health4.save
      redirect_to @health4, notice: 'Health4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /health4s/1
  def update
    if @health4.update(health4_params)
      redirect_to @health4, notice: 'Health4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /health4s/1
  def destroy
    @health4.destroy
    redirect_to health4s_url, notice: 'Health4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health4
      @health4 = Health4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def health4_params
      params.require(:health4).permit(:Year, :Number_of_patients_visiting_government_hospitals_per_month, :Percentage_growth)
    end
end
