class StatePublicSector3sController < ApplicationController
  before_action :set_state_public_sector3, only: [:show, :edit, :update, :destroy]

  # GET /state_public_sector3s
  def index
    @state_public_sector3s = StatePublicSector3.all
  end

  # GET /state_public_sector3s/1
  def show
  end

  # GET /state_public_sector3s/new
  def new
    @state_public_sector3 = StatePublicSector3.new
  end

def test
  ji = [:Number_of_Statutory_Corporations, :Number_of_Working_Companies, :Number_of_NonWorking_Companies]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
  search = params[:search]
  ji1 = [:Sector, :Number_of_Statutory_Corporations, :Number_of_Working_Companies, :Number_of_NonWorking_Companies]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = StatePublicSector3.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = StatePublicSector3.map(b,params[:year],rain_fall_type,views)
         else
          b = StatePublicSector3.map_search(params[:search],compare,year,rain_fall_type)
          a = StatePublicSector3.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = StatePublicSector3.search(params[:search],compare,year,rain_fall_type)
        a = StatePublicSector3.table(b,rain_fall_type,year,ji1,compare)
      else
        @StatePublicSector3s = StatePublicSector3.search(params[:search],compare,year,rain_fall_type)
        a = StatePublicSector3.query(@StatePublicSector3s,params[:year],rain_fall_type,views,ji,compare,search)
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
    StatePublicSector3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /state_public_sector3s/1/edit
  def edit
  end

  # POST /state_public_sector3s
  def create
    @state_public_sector3 = StatePublicSector3.new(state_public_sector3_params)

    if @state_public_sector3.save
      redirect_to @state_public_sector3, notice: 'State public sector3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /state_public_sector3s/1
  def update
    if @state_public_sector3.update(state_public_sector3_params)
      redirect_to @state_public_sector3, notice: 'State public sector3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /state_public_sector3s/1
  def destroy
    @state_public_sector3.destroy
    redirect_to state_public_sector3s_url, notice: 'State public sector3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state_public_sector3
      @state_public_sector3 = StatePublicSector3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def state_public_sector3_params
      params.require(:state_public_sector3).permit(:Sector, :Number_of_Statutory_Corporations, :Number_of_Working_Companies, :Number_of_NonWorking_Companies)
    end
end
