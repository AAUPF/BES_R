class DeficitManagement3sController < ApplicationController
  before_action :set_deficit_management3, only: [:show, :edit, :update, :destroy]

  # GET /deficit_management3s
  def index
    @deficit_management3s = DeficitManagement3.all
  end

  # GET /deficit_management3s/1
  def show
  end

  # GET /deficit_management3s/new
  def new
    @deficit_management3 = DeficitManagement3.new
  end

def test
  ji = [:Amount]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1  = [:Gross_Fiscal_Deficit, :Amount, :Year]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = DeficitManagement3.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = DeficitManagement3.map(b,params[:year],rain_fall_type,views)
         else
          b = DeficitManagement3.map_search(params[:search],compare,year,rain_fall_type)
          a = DeficitManagement3.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = DeficitManagement3.search(params[:search],compare,year,rain_fall_type)
        a = DeficitManagement3.table(b,rain_fall_type,year,ji1,compare)
      else
        @DeficitManagement3s = DeficitManagement3.search(params[:search],compare,year,rain_fall_type)
        a = DeficitManagement3.query(@DeficitManagement3s,params[:year],rain_fall_type,views,ji,compare)
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
    DeficitManagement3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /deficit_management3s/1/edit
  def edit
  end

  # POST /deficit_management3s
  def create
    @deficit_management3 = DeficitManagement3.new(deficit_management3_params)

    if @deficit_management3.save
      redirect_to @deficit_management3, notice: 'Deficit management3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /deficit_management3s/1
  def update
    if @deficit_management3.update(deficit_management3_params)
      redirect_to @deficit_management3, notice: 'Deficit management3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /deficit_management3s/1
  def destroy
    @deficit_management3.destroy
    redirect_to deficit_management3s_url, notice: 'Deficit management3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deficit_management3
      @deficit_management3 = DeficitManagement3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def deficit_management3_params
      params.require(:deficit_management3).permit(:Gross_Fiscal_Deficit, :Amount, :Year)
    end
end
