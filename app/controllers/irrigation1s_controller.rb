class Irrigation1sController < ApplicationController
  before_action :set_irrigation1, only: [:show, :edit, :update, :destroy]

  # GET /irrigation1s
  def index
    @irrigation1s = Irrigation1.all
  end

  # GET /irrigation1s/1
  def show
  end

  # GET /irrigation1s/new
  def new
    @irrigation1 = Irrigation1.new
  end

def test
  ji = [:Ultimate_Potential, :Created_Potential, :Utilised_Potential]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]


   ji1 = [:TypeofIrrigationPotential, :Ultimate_Potential, :Created_Potential, :Utilised_Potential]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Irrigation1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Irrigation1.map(b,params[:year],rain_fall_type,views)
         else
          b = Irrigation1.map_search(params[:search],compare,year,rain_fall_type)
          a = Irrigation1.map(b,rain_fall_type,year,ji,unit1)
         end
      elsif views == "Table"  
        b = Irrigation1.search(params[:search],compare,year,rain_fall_type)
        a = Irrigation1.table(b,rain_fall_type,year,ji1,compare)
      else
        @Irrigation1s = Irrigation1.search(params[:search],compare,year,rain_fall_type)
        a = Irrigation1.query(@Irrigation1s,params[:year],rain_fall_type,views,ji,compare)
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
    Irrigation1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /irrigation1s/1/edit
  def edit
  end

  # POST /irrigation1s
  def create
    @irrigation1 = Irrigation1.new(irrigation1_params)

    if @irrigation1.save
      redirect_to @irrigation1, notice: 'Irrigation1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /irrigation1s/1
  def update
    if @irrigation1.update(irrigation1_params)
      redirect_to @irrigation1, notice: 'Irrigation1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /irrigation1s/1
  def destroy
    @irrigation1.destroy
    redirect_to irrigation1s_url, notice: 'Irrigation1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_irrigation1
      @irrigation1 = Irrigation1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def irrigation1_params
      params.require(:irrigation1).permit(:TypeofIrrigationPotential, :Ultimat_Potential, :Created_Potential, :Utilised_Potential)
    end
end
