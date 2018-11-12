class BiharRenewableEnergiesController < ApplicationController
  before_action :set_bihar_renewable_energy, only: [:show, :edit, :update, :destroy]

  # GET /bihar_renewable_energies
  def index
    @bihar_renewable_energies = BiharRenewableEnergy.all
  end

  # GET /bihar_renewable_energies/1
  def show
  end

  # GET /bihar_renewable_energies/new
  def new
    @bihar_renewable_energy = BiharRenewableEnergy.new
  end


def test
  ji = [:Schemes, :Physical_Achievement, :Financial_Outlay, :Year, :Indicator]
 rain_fall_type = params[:rain_fall_type]
  views  = params[:views]
  year  = params[:year]
  compare = params[:compare]
  search = params[:search]
  legend = "Year"

if rain_fall_type != "All"
 ji1 = [:Schemes, "#{rain_fall_type}"]
else
 ji1 = [:Schemes, :Physical_Achievement, :Financial_Outlay, :Year, :Indicator]
end
 if rain_fall_type || views

      b = BiharRenewableEnergy.search(params[:search],compare,year,rain_fall_type,legend)
       a = BiharRenewableEnergy.table(b,rain_fall_type,year,ji1,compare,legend)
    
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
    BiharRenewableEnergy.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /bihar_renewable_energies/1/edit
  def edit
  end

  # POST /bihar_renewable_energies
  def create
    @bihar_renewable_energy = BiharRenewableEnergy.new(bihar_renewable_energy_params)

    if @bihar_renewable_energy.save
      redirect_to @bihar_renewable_energy, notice: 'Bihar renewable energy was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /bihar_renewable_energies/1
  def update
    if @bihar_renewable_energy.update(bihar_renewable_energy_params)
      redirect_to @bihar_renewable_energy, notice: 'Bihar renewable energy was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /bihar_renewable_energies/1
  def destroy
    @bihar_renewable_energy.destroy
    redirect_to bihar_renewable_energies_url, notice: 'Bihar renewable energy was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bihar_renewable_energy
      @bihar_renewable_energy = BiharRenewableEnergy.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bihar_renewable_energy_params
      params.require(:bihar_renewable_energy).permit(:Schemes, :Physical_Achievement, :Financial_Outlay, :Year, :Indicator)
    end
end
