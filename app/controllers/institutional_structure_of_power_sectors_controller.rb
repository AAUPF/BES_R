class InstitutionalStructureOfPowerSectorsController < ApplicationController
  before_action :set_institutional_structure_of_power_sector, only: [:show, :edit, :update, :destroy]

  # GET /institutional_structure_of_power_sectors
  def index
    @institutional_structure_of_power_sectors = InstitutionalStructureOfPowerSector.all
  end

  # GET /institutional_structure_of_power_sectors/1
  def show
  end

  # GET /institutional_structure_of_power_sectors/new
  def new
    @institutional_structure_of_power_sector = InstitutionalStructureOfPowerSector.new
  end

def test
  ji = [:BRGF, :State_Plan_BSPHCL, :State_Plan_Generation, :State_Plan_Transmission, :State_Plan_Distribution, :State_Plan_BREDA, :State_Plan_BSHPC, :BSHPC_RIDF, :EAP, :Mukhya_Mantri_Vidyut_Sambandh_Nishchay_Yojna]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1 = [:Year, :BRGF, :State_Plan_BSPHCL, :State_Plan_Generation, :State_Plan_Transmission, :State_Plan_Distribution, :State_Plan_BREDA, :State_Plan_BSHPC, :BSHPC_RIDF, :EAP, :Mukhya_Mantri_Vidyut_Sambandh_Nishchay_Yojna, :Total]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = InstitutionalStructureOfPowerSector.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = InstitutionalStructureOfPowerSector.map(b,params[:year],rain_fall_type,views)
         else
          b = InstitutionalStructureOfPowerSector.map_search(params[:search],compare,year,rain_fall_type)
          a = InstitutionalStructureOfPowerSector.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = InstitutionalStructureOfPowerSector.search(params[:search],compare,year,rain_fall_type)
        a = InstitutionalStructureOfPowerSector.table(b,rain_fall_type,year,ji1,compare)
      else
        @InstitutionalStructureOfPowerSectors = InstitutionalStructureOfPowerSector.search(params[:search],compare,year,rain_fall_type)
        a = InstitutionalStructureOfPowerSector.query(@InstitutionalStructureOfPowerSectors,params[:year],rain_fall_type,views,ji,compare)
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
    InstitutionalStructureOfPowerSector.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /institutional_structure_of_power_sectors/1/edit
  def edit
  end

  # POST /institutional_structure_of_power_sectors
  def create
    @institutional_structure_of_power_sector = InstitutionalStructureOfPowerSector.new(institutional_structure_of_power_sector_params)

    if @institutional_structure_of_power_sector.save
      redirect_to @institutional_structure_of_power_sector, notice: 'Institutional structure of power sector was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /institutional_structure_of_power_sectors/1
  def update
    if @institutional_structure_of_power_sector.update(institutional_structure_of_power_sector_params)
      redirect_to @institutional_structure_of_power_sector, notice: 'Institutional structure of power sector was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /institutional_structure_of_power_sectors/1
  def destroy
    @institutional_structure_of_power_sector.destroy
    redirect_to institutional_structure_of_power_sectors_url, notice: 'Institutional structure of power sector was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_institutional_structure_of_power_sector
      @institutional_structure_of_power_sector = InstitutionalStructureOfPowerSector.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def institutional_structure_of_power_sector_params
      params.require(:institutional_structure_of_power_sector).permit(:Years, :BRGF, :State_Plan_BSPHCL, :State_Plan_Generation, :State_Plan_Transmission, :State_Plan_Distribution, :State_Plan_BREDA, :State_Plan_BSHPC, :BSHPC_RIDF, :EAP, :Mukhya_Mantri_Vidyut_Sambandh_Nishchay_Yojna, :Total)
    end
end
