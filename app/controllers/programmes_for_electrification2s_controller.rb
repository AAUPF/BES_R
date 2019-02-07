class ProgrammesForElectrification2sController < ApplicationController
  before_action :set_programmes_for_electrification2, only: [:show, :edit, :update, :destroy]

  # GET /programmes_for_electrification2s
  def index
    @programmes_for_electrification2s = ProgrammesForElectrification2.all
  end

  # GET /programmes_for_electrification2s/1
  def show
  end

  # GET /programmes_for_electrification2s/new
  def new
    @programmes_for_electrification2 = ProgrammesForElectrification2.new
  end

def test
  ji = [:Tenth_Plan, :Eleventh_Plan, :Total, :Eleventh_Plan_Phase_II, :Twelfth_Plan, :Under_DDG, :DDG_converted_into_UEV]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]

   legend = "Agencies"

   ji1 = [:Agencies, :Tenth_Plan, :Eleventh_Plan, :Eleventh_Plan_Phase_II, :Twelfth_Plan, :Under_DDG, :DDG_converted_into_UEV, :Total, :Indicator, :Indicator1]


  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = ProgrammesForElectrification2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = ProgrammesForElectrification2.map(b,params[:year],rain_fall_type,views)
         else
          b = ProgrammesForElectrification2.map_search(params[:search],compare,year,rain_fall_type)
          a = ProgrammesForElectrification2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = ProgrammesForElectrification2.search(params[:search],compare,year,rain_fall_type,legend)
        a = ProgrammesForElectrification2.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @ProgrammesForElectrification2s = ProgrammesForElectrification2.search(params[:search],compare,year,rain_fall_type,legend)
        a = ProgrammesForElectrification2.query(@ProgrammesForElectrification2s,params[:year],rain_fall_type,views,ji,compare,legend,search)
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
    ProgrammesForElectrification2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /programmes_for_electrification2s/1/edit
  def edit
  end

  # POST /programmes_for_electrification2s
  def create
    @programmes_for_electrification2 = ProgrammesForElectrification2.new(programmes_for_electrification2_params)

    if @programmes_for_electrification2.save
      redirect_to @programmes_for_electrification2, notice: 'Programmes for electrification2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /programmes_for_electrification2s/1
  def update
    if @programmes_for_electrification2.update(programmes_for_electrification2_params)
      redirect_to @programmes_for_electrification2, notice: 'Programmes for electrification2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /programmes_for_electrification2s/1
  def destroy
    @programmes_for_electrification2.destroy
    redirect_to programmes_for_electrification2s_url, notice: 'Programmes for electrification2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programmes_for_electrification2
      @programmes_for_electrification2 = ProgrammesForElectrification2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def programmes_for_electrification2_params
      params.require(:programmes_for_electrification2).permit(:Agencies, :Tenth_Plan, :Eleventh_Plan, :Total, :Eleventh_Plan_Phase_II, :Twelfth_Plan, :Under_DDG, :DDG_converted_into_UEV, :Total, :Indicator, :Indicator1)
    end
end
