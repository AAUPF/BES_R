class BridgeSector1sController < ApplicationController
  before_action :set_bridge_sector1, only: [:show, :edit, :update, :destroy]

  # GET /bridge_sector1s
  def index
    @bridge_sector1s = BridgeSector1.all
  end

  # GET /bridge_sector1s/1
  def show
  end

  # GET /bridge_sector1s/new
  def new
    @bridge_sector1 = BridgeSector1.new
  end

def test
  ji = [:Number_of_Projects, :Cost]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   ji1 = [:Division, :Number_of_Projects, :Cost]
   legend = "Division"

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = BridgeSector1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = BridgeSector1.map(b,params[:year],rain_fall_type,views)
         else
          b = BridgeSector1.map_search(params[:search],compare,year,rain_fall_type)
          a = BridgeSector1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = BridgeSector1.search(params[:search],compare,year,rain_fall_type,legend)
        a = BridgeSector1.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @BridgeSector1s = BridgeSector1.search(params[:search],compare,year,rain_fall_type,legend)
        a = BridgeSector1.query(@BridgeSector1s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    BridgeSector1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /bridge_sector1s/1/edit
  def edit
  end

  # POST /bridge_sector1s
  def create
    @bridge_sector1 = BridgeSector1.new(bridge_sector1_params)

    if @bridge_sector1.save
      redirect_to @bridge_sector1, notice: 'Bridge sector1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /bridge_sector1s/1
  def update
    if @bridge_sector1.update(bridge_sector1_params)
      redirect_to @bridge_sector1, notice: 'Bridge sector1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /bridge_sector1s/1
  def destroy
    @bridge_sector1.destroy
    redirect_to bridge_sector1s_url, notice: 'Bridge sector1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bridge_sector1
      @bridge_sector1 = BridgeSector1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bridge_sector1_params
      params.require(:bridge_sector1).permit(:Division, :Number_of_Projects, :Cost)
    end
end
