class AirwaysController < ApplicationController
  before_action :set_airway, only: [:show, :edit, :update, :destroy]

  # GET /airways
  def index
    @airways = Airway.all
  end

  # GET /airways/1
  def show
  end

  # GET /airways/new
  def new
    @airway = Airway.new
  end

def test
  ji = [:Number_of_Aircraft_Movements, :Passengers, :Freight]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1 = [:Year, :Number_of_Aircraft_Movements, :Passengers, :Freight]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Airway.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Airway.map(b,params[:year],rain_fall_type,views)
         else
          b = Airway.map_search(params[:search],compare,year,rain_fall_type)
          a = Airway.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Airway.search(params[:search],compare,year,rain_fall_type)
        a = Airway.table(b,rain_fall_type,year,ji1,compare)
      else
        @Airways = Airway.search(params[:search],compare,year,rain_fall_type)
        a = Airway.query(@Airways,params[:year],rain_fall_type,views,ji,compare)
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
    Airway.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /airways/1/edit
  def edit
  end

  # POST /airways
  def create
    @airway = Airway.new(airway_params)

    if @airway.save
      redirect_to @airway, notice: 'Airway was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /airways/1
  def update
    if @airway.update(airway_params)
      redirect_to @airway, notice: 'Airway was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /airways/1
  def destroy
    @airway.destroy
    redirect_to airways_url, notice: 'Airway was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_airway
      @airway = Airway.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def airway_params
      params.require(:airway).permit(:Year, :Number_of_Aircraft_Movements, :Passengers, :Freight)
    end
end
