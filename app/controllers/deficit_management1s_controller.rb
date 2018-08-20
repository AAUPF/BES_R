class DeficitManagement1sController < ApplicationController
  before_action :set_deficit_management1, only: [:show, :edit, :update, :destroy]

  # GET /deficit_management1s
  def index
    @deficit_management1s = DeficitManagement1.all
  end

  # GET /deficit_management1s/1
  def show
  end

  # GET /deficit_management1s/new
  def new
    @deficit_management1 = DeficitManagement1.new
  end

def test
  ji = [:Revenue_Deficit_Surplus, :Conventional_Deficit_Surplus]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1  = [:State, :Revenue_Deficit_Surplus, :Conventional_Deficit_Surplus, :Year]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = DeficitManagement1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = DeficitManagement1.map(b,params[:year],rain_fall_type,views)
         else
          b = DeficitManagement1.map_search(params[:search],compare,year,rain_fall_type)
          a = DeficitManagement1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = DeficitManagement1.search(params[:search],compare,year,rain_fall_type)
        a = DeficitManagement1.table(b,rain_fall_type,year,ji1,compare)
      else
        @DeficitManagement1s = DeficitManagement1.search(params[:search],compare,year,rain_fall_type)
        a = DeficitManagement1.query(@DeficitManagement1s,params[:year],rain_fall_type,views,ji,compare)
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
    DeficitManagement1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /deficit_management1s/1/edit
  def edit
  end

  # POST /deficit_management1s
  def create
    @deficit_management1 = DeficitManagement1.new(deficit_management1_params)

    if @deficit_management1.save
      redirect_to @deficit_management1, notice: 'Deficit management1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /deficit_management1s/1
  def update
    if @deficit_management1.update(deficit_management1_params)
      redirect_to @deficit_management1, notice: 'Deficit management1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /deficit_management1s/1
  def destroy
    @deficit_management1.destroy
    redirect_to deficit_management1s_url, notice: 'Deficit management1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deficit_management1
      @deficit_management1 = DeficitManagement1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def deficit_management1_params
      params.require(:deficit_management1).permit(:State, :Revenue_Deficit_Surplus, :Conventional_Deficit_Surplus, :Year)
    end
end
