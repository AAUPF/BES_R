class Health15sController < ApplicationController
  before_action :set_health15, only: [:show, :edit, :update, :destroy]

  # GET /health15s
  def index
    @health15s = Health15.all
  end

  # GET /health15s/1
  def show
  end

  # GET /health15s/new
  def new
    @health15 = Health15.new
  end

def test
  
  ji = [:District_Hospital, :Referral_Hospital, :SDH, :PHC, :Health_SubCentre, :APHC, :DH_RH_SDH_PHC_HSC_APHC, :Population_Health_Institution]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
ji1 = [:Districts, :District_Hospital, :Referral_Hospital, :SDH, :PHC, :Health_SubCentre, :APHC, :DH_RH_SDH_PHC_HSC_APHC, :Population_Health_Institution]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Health15.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Health15.map(b,params[:year],rain_fall_type,views)
         else
          b = Health15.map_search(params[:search],compare,year,rain_fall_type)
          a = Health15.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Health15.search(params[:search],compare,year,rain_fall_type)
        a = Health15.table(b,rain_fall_type,year,ji1,compare)
      else
        @Health15s = Health15.search(params[:search],compare,year,rain_fall_type)
        a = Health15.query(@Health15s,params[:year],rain_fall_type,views,ji,compare,search)
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
    Health15.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /health15s/1/edit
  def edit
  end

  # POST /health15s
  def create
    @health15 = Health15.new(health15_params)

    if @health15.save
      redirect_to @health15, notice: 'Health15 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /health15s/1
  def update
    if @health15.update(health15_params)
      redirect_to @health15, notice: 'Health15 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /health15s/1
  def destroy
    @health15.destroy
    redirect_to health15s_url, notice: 'Health15 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health15
      @health15 = Health15.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def health15_params
      params.require(:health15).permit(:Districts, :District_Hospital, :Referral_Hospital, :SDH, :PHC, :Health_SubCentre, :APHC, :DH_RH_SDH_PHC_HSC_APHC, :Population_Health_Institution)
    end
end
