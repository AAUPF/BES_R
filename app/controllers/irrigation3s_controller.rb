class Irrigation3sController < ApplicationController
  before_action :set_irrigation3, only: [:show, :edit, :update, :destroy]

  # GET /irrigation3s
  def index
    @irrigation3s = Irrigation3.all
  end

  # GET /irrigation3s/1
  def show
  end

  # GET /irrigation3s/new
  def new
    @irrigation3 = Irrigation3.new
  end

def test
  ji = [:Created_Irrigation_Potential, :Kharif_Target, :Kharif_Irrigation, :Rabi_Target, :Rabi_Irrigation, :Hot_Weather_Target, :Hot_Weather_Irrigation, :Total_Utilised_Irrigation_Potential, :Utilisation_Efficiency]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

   ji1 = [:Year,:Created_Irrigation_Potential, :Kharif_Target, :Kharif_Irrigation, :Rabi_Target, :Rabi_Irrigation, :Hot_Weather_Target, :Hot_Weather_Irrigation, :Total_Utilised_Irrigation_Potential, :Utilisation_Efficiency]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Irrigation3.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Irrigation3.map(b,params[:year],rain_fall_type,views)
         else
          b = Irrigation3.map_search(params[:search],compare,year,rain_fall_type)
          a = Irrigation3.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Irrigation3.search(params[:search],compare,year,rain_fall_type)
        a = Irrigation3.table(b,rain_fall_type,year,ji1,compare)
      else
        @Irrigation3s = Irrigation3.search(params[:search],compare,year,rain_fall_type)
        a = Irrigation3.query(@Irrigation3s,params[:year],rain_fall_type,views,ji,compare)
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
    Irrigation3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /irrigation3s/1/edit
  def edit
  end

  # POST /irrigation3s
  def create
    @irrigation3 = Irrigation3.new(irrigation3_params)

    if @irrigation3.save
      redirect_to @irrigation3, notice: 'Irrigation3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /irrigation3s/1
  def update
    if @irrigation3.update(irrigation3_params)
      redirect_to @irrigation3, notice: 'Irrigation3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /irrigation3s/1
  def destroy
    @irrigation3.destroy
    redirect_to irrigation3s_url, notice: 'Irrigation3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_irrigation3
      @irrigation3 = Irrigation3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def irrigation3_params
      params.require(:irrigation3).permit(:Year, :Created_Irrigation_Potential, :Kharif_Target, :Kharif_Irrigation, :Rabi_Target, :Rabi_Irrigation, :Hot_Weather_Target, :Hot_Weather_Irrigation, :Total_Utilised_Irrigation_Potential, :Utilisation_Efficiency)
    end
end
