class StatePublicSector1sController < ApplicationController
  before_action :set_state_public_sector1, only: [:show, :edit, :update, :destroy]

  # GET /state_public_sector1s
  def index
    @state_public_sector1s = StatePublicSector1.all
  end

  # GET /state_public_sector1s/1
  def show
  end

  # GET /state_public_sector1s/new
  def new
    @state_public_sector1 = StatePublicSector1.new
  end

def test
  ji = [:Number_of_Working_PSUs, :Number_of_Non_Working_PSUs, :Statutory_Corporations, :Public_Sector_Companies, :Equity, :Loans, :Investment]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
ji1 = [:Year_as_on_31st_March, :Number_of_Working_PSUs, :Number_of_Non_Working_PSUs, :Statutory_Corporations, :Public_Sector_Companies, :Equity, :Loans, :Investment]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = StatePublicSector1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = StatePublicSector1.map(b,params[:year],rain_fall_type,views)
         else
          b = StatePublicSector1.map_search(params[:search],compare,year,rain_fall_type)
          a = StatePublicSector1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = StatePublicSector1.search(params[:search],compare,year,rain_fall_type)
        a = StatePublicSector1.table(b,rain_fall_type,year,ji1,compare)
      else
        @StatePublicSector1s = StatePublicSector1.search(params[:search],compare,year,rain_fall_type)
        a = StatePublicSector1.query(@StatePublicSector1s,params[:year],rain_fall_type,views,ji,compare)
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
    StatePublicSector1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /state_public_sector1s/1/edit
  def edit
  end

  # POST /state_public_sector1s
  def create
    @state_public_sector1 = StatePublicSector1.new(state_public_sector1_params)

    if @state_public_sector1.save
      redirect_to @state_public_sector1, notice: 'State public sector1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /state_public_sector1s/1
  def update
    if @state_public_sector1.update(state_public_sector1_params)
      redirect_to @state_public_sector1, notice: 'State public sector1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /state_public_sector1s/1
  def destroy
    @state_public_sector1.destroy
    redirect_to state_public_sector1s_url, notice: 'State public sector1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state_public_sector1
      @state_public_sector1 = StatePublicSector1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def state_public_sector1_params
      params.require(:state_public_sector1).permit(:Year_as_on_31st_March, :Number_of_Working_PSUs, :Number_of_Non_Working_PSUs, :Statutory_Corporations, :Public_Sector_Companies, :Equity, :Loans, :Investment)
    end
end
