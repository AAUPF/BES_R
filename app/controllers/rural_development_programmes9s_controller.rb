class RuralDevelopmentProgrammes9sController < ApplicationController
  before_action :set_rural_development_programmes9, only: [:show, :edit, :update, :destroy]

  # GET /rural_development_programmes9s
  def index
    @rural_development_programmes9s = RuralDevelopmentProgrammes9.all
  end

  # GET /rural_development_programmes9s/1
  def show
  end

  # GET /rural_development_programmes9s/new
  def new
    @rural_development_programmes9 = RuralDevelopmentProgrammes9.new
  end

def test
  ji = [:Dealers_belonging_to_SC_or_ST, :Dealers_belonging_to_BC_or_EBC, :Dealers_belonging_to_Minority, :Dealers_belonging_to_Women, :Dealers_belonging_to_Women_or_Other_SHG, :Dealers_from_Helper_Samiti_or_PACS_or_Samiti_of_ExArmy_Personnel, :Dealers_belonging_to_General]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
ji1 = [:Districts, :Number_of_Dealers, :Dealers_belonging_to_SC_or_ST, :Dealers_belonging_to_BC_or_EBC, :Dealers_belonging_to_Minority, :Dealers_belonging_to_Women, :Dealers_belonging_to_Women_or_Other_SHG, :Dealers_from_Helper_Samiti_or_PACS_or_Samiti_of_ExArmy_Personnel, :Dealers_belonging_to_General, :Total]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = RuralDevelopmentProgrammes9.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = RuralDevelopmentProgrammes9.map(b,params[:year],rain_fall_type,views)
         else
          b = RuralDevelopmentProgrammes9.map_search(params[:search],compare,year,rain_fall_type)
          a = RuralDevelopmentProgrammes9.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = RuralDevelopmentProgrammes9.search(params[:search],compare,year,rain_fall_type)
        a = RuralDevelopmentProgrammes9.table(b,rain_fall_type,year,ji1,compare)
      else
        @RuralDevelopmentProgrammes9s = RuralDevelopmentProgrammes9.search(params[:search],compare,year,rain_fall_type)
        a = RuralDevelopmentProgrammes9.query(@RuralDevelopmentProgrammes9s,params[:year],rain_fall_type,views,ji,compare,search)
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
    RuralDevelopmentProgrammes9.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /rural_development_programmes9s/1/edit
  def edit
  end

  # POST /rural_development_programmes9s
  def create
    @rural_development_programmes9 = RuralDevelopmentProgrammes9.new(rural_development_programmes9_params)

    if @rural_development_programmes9.save
      redirect_to @rural_development_programmes9, notice: 'Rural development programmes9 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /rural_development_programmes9s/1
  def update
    if @rural_development_programmes9.update(rural_development_programmes9_params)
      redirect_to @rural_development_programmes9, notice: 'Rural development programmes9 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /rural_development_programmes9s/1
  def destroy
    @rural_development_programmes9.destroy
    redirect_to rural_development_programmes9s_url, notice: 'Rural development programmes9 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rural_development_programmes9
      @rural_development_programmes9 = RuralDevelopmentProgrammes9.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rural_development_programmes9_params
      params.require(:rural_development_programmes9).permit(:Districts, :Number_of_Dealers, :Dealers_belonging_to_SC_or_ST, :Dealers_belonging_to_BC_or_EBC, :Dealers_belonging_to_Minority, :Dealers_belonging_to_Women, :Dealers_belonging_to_Women_or_Other_SHG, :Dealers_from_Helper_Samiti_or_PACS_or_Samiti_of_ExArmy_Personnel, :Dealers_belonging_to_General, :Total)
    end
end
