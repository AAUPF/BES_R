class RuralDevelopmentProgrammes4sController < ApplicationController
  before_action :set_rural_development_programmes4, only: [:show, :edit, :update, :destroy]

  # GET /rural_development_programmes4s
  def index
    @rural_development_programmes4s = RuralDevelopmentProgrammes4.all
  end

  # GET /rural_development_programmes4s/1
  def show
  end

  # GET /rural_development_programmes4s/new
  def new
    @rural_development_programmes4 = RuralDevelopmentProgrammes4.new
  end

def test
  ji = [:Annual_Physical_Target, :Total_Houses_Completed, :Houses_Completed_for_SC_and_ST, :Percentage_of_Fund_Utilisation]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1 = [:Year, :Annual_Physical_Target, :Total_Houses_Completed, :Houses_Completed_for_SC_and_ST, :Percentage_of_Fund_Utilisation]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = RuralDevelopmentProgrammes4.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = RuralDevelopmentProgrammes4.map(b,params[:year],rain_fall_type,views)
         else
          b = RuralDevelopmentProgrammes4.map_search(params[:search],compare,year,rain_fall_type)
          a = RuralDevelopmentProgrammes4.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = RuralDevelopmentProgrammes4.search(params[:search],compare,year,rain_fall_type)
        a = RuralDevelopmentProgrammes4.table(b,rain_fall_type,year,ji1,compare)
      else
        @RuralDevelopmentProgrammes4s = RuralDevelopmentProgrammes4.search(params[:search],compare,year,rain_fall_type)
        a = RuralDevelopmentProgrammes4.query(@RuralDevelopmentProgrammes4s,params[:year],rain_fall_type,views,ji,compare)
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
    RuralDevelopmentProgrammes4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /rural_development_programmes4s/1/edit
  def edit
  end

  # POST /rural_development_programmes4s
  def create
    @rural_development_programmes4 = RuralDevelopmentProgrammes4.new(rural_development_programmes4_params)

    if @rural_development_programmes4.save
      redirect_to @rural_development_programmes4, notice: 'Rural development programmes4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /rural_development_programmes4s/1
  def update
    if @rural_development_programmes4.update(rural_development_programmes4_params)
      redirect_to @rural_development_programmes4, notice: 'Rural development programmes4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /rural_development_programmes4s/1
  def destroy
    @rural_development_programmes4.destroy
    redirect_to rural_development_programmes4s_url, notice: 'Rural development programmes4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rural_development_programmes4
      @rural_development_programmes4 = RuralDevelopmentProgrammes4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rural_development_programmes4_params
      params.require(:rural_development_programmes4).permit(:Year, :Annual_Physical_Target, :Total_Houses_Completed, :Houses_Completed_for_SC_and_ST, :Percentage_of_Fund_Utilisation)
    end
end
