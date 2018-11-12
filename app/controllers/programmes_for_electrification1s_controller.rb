class ProgrammesForElectrification1sController < ApplicationController
  before_action :set_programmes_for_electrification1, only: [:show, :edit, :update, :destroy]

  # GET /programmes_for_electrification1s
  def index
    @programmes_for_electrification1s = ProgrammesForElectrification1.all
  end

  # GET /programmes_for_electrification1s/1
  def show
  end

  # GET /programmes_for_electrification1s/new
  def new
    @programmes_for_electrification1 = ProgrammesForElectrification1.new
  end

def test
  ji = [:Outlay, :Expenditure_incurred]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   ji1 = [:Project_Component_under_R_APDRP, :Outlay, :Expenditure_incurred]
legend = "Project_Component_under_R_APDRP"

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = ProgrammesForElectrification1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = ProgrammesForElectrification1.map(b,params[:year],rain_fall_type,views)
         else
          b = ProgrammesForElectrification1.map_search(params[:search],compare,year,rain_fall_type)
          a = ProgrammesForElectrification1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = ProgrammesForElectrification1.search(params[:search],compare,year,rain_fall_type,legend)
        a = ProgrammesForElectrification1.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @ProgrammesForElectrification1s = ProgrammesForElectrification1.search(params[:search],compare,year,rain_fall_type,legend)
        a = ProgrammesForElectrification1.query(@ProgrammesForElectrification1s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    ProgrammesForElectrification1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /programmes_for_electrification1s/1/edit
  def edit
  end

  # POST /programmes_for_electrification1s
  def create
    @programmes_for_electrification1 = ProgrammesForElectrification1.new(programmes_for_electrification1_params)

    if @programmes_for_electrification1.save
      redirect_to @programmes_for_electrification1, notice: 'Programmes for electrification1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /programmes_for_electrification1s/1
  def update
    if @programmes_for_electrification1.update(programmes_for_electrification1_params)
      redirect_to @programmes_for_electrification1, notice: 'Programmes for electrification1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /programmes_for_electrification1s/1
  def destroy
    @programmes_for_electrification1.destroy
    redirect_to programmes_for_electrification1s_url, notice: 'Programmes for electrification1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programmes_for_electrification1
      @programmes_for_electrification1 = ProgrammesForElectrification1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def programmes_for_electrification1_params
      params.require(:programmes_for_electrification1).permit(:Project_Component_under_R_APDRP, :Outlay, :Expenditure_incurred)
    end
end
