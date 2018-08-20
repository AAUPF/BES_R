class DeficitManagement2sController < ApplicationController
  before_action :set_deficit_management2, only: [:show, :edit, :update, :destroy]

  # GET /deficit_management2s
  def index
    @deficit_management2s = DeficitManagement2.all
  end

  # GET /deficit_management2s/1
  def show
  end

  # GET /deficit_management2s/new
  def new
    @deficit_management2 = DeficitManagement2.new
  end

def test
  ji = [:Gross_Fiscal_Deficit]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1  = [:State, :Gross_Fiscal_Deficit, :Year]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = DeficitManagement2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = DeficitManagement2.map(b,params[:year],rain_fall_type,views)
         else
          b = DeficitManagement2.map_search(params[:search],compare,year,rain_fall_type)
          a = DeficitManagement2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = DeficitManagement2.search(params[:search],compare,year,rain_fall_type)
        a = DeficitManagement2.table(b,rain_fall_type,year,ji1,compare)
      else
        @DeficitManagement2s = DeficitManagement2.search(params[:search],compare,year,rain_fall_type)
        a = DeficitManagement2.query(@DeficitManagement2s,params[:year],rain_fall_type,views,ji,compare)
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
    DeficitManagement2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /deficit_management2s/1/edit
  def edit
  end

  # POST /deficit_management2s
  def create
    @deficit_management2 = DeficitManagement2.new(deficit_management2_params)

    if @deficit_management2.save
      redirect_to @deficit_management2, notice: 'Deficit management2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /deficit_management2s/1
  def update
    if @deficit_management2.update(deficit_management2_params)
      redirect_to @deficit_management2, notice: 'Deficit management2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /deficit_management2s/1
  def destroy
    @deficit_management2.destroy
    redirect_to deficit_management2s_url, notice: 'Deficit management2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deficit_management2
      @deficit_management2 = DeficitManagement2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def deficit_management2_params
      params.require(:deficit_management2).permit(:State, :Gross_Fiscal_Deficit, :Year)
    end
end
