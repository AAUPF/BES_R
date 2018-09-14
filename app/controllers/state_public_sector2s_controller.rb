class StatePublicSector2sController < ApplicationController
  before_action :set_state_public_sector2, only: [:show, :edit, :update, :destroy]

  # GET /state_public_sector2s
  def index
    @state_public_sector2s = StatePublicSector2.all
  end

  # GET /state_public_sector2s/1
  def show
  end

  # GET /state_public_sector2s/new
  def new
    @state_public_sector2 = StatePublicSector2.new
  end

def test
  ji = [:Government_Companies_Capital, :Government_Companies_Long_Term_Loans, :Total_Government_Companies, :Statutory_Corporations_Capital, :Statutory_Corporations_Long_Term_Loans, :Total_Statutory_Corporations]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]

ji1 = [:Type_of_Company_or_corporation, :Government_Companies_Capital, :Government_Companies_Long_Term_Loans, :Total_Government_Companies, :Statutory_Corporations_Capital, :Statutory_Corporations_Long_Term_Loans, :Total_Statutory_Corporations, :Grand_Total]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = StatePublicSector2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = StatePublicSector2.map(b,params[:year],rain_fall_type,views)
         else
          b = StatePublicSector2.map_search(params[:search],compare,year,rain_fall_type)
          a = StatePublicSector2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table" 
        b = StatePublicSector2.search(params[:search],compare,year,rain_fall_type)
        a = StatePublicSector2.table(b,rain_fall_type,year,ji1,compare)
      else
        @StatePublicSector2s = StatePublicSector2.search(params[:search],compare,year,rain_fall_type)
        a = StatePublicSector2.query(@StatePublicSector2s,params[:year],rain_fall_type,views,ji,compare,search)
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
    StatePublicSector2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /state_public_sector2s/1/edit
  def edit
  end

  # POST /state_public_sector2s
  def create
    @state_public_sector2 = StatePublicSector2.new(state_public_sector2_params)

    if @state_public_sector2.save
      redirect_to @state_public_sector2, notice: 'State public sector2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /state_public_sector2s/1
  def update
    if @state_public_sector2.update(state_public_sector2_params)
      redirect_to @state_public_sector2, notice: 'State public sector2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /state_public_sector2s/1
  def destroy
    @state_public_sector2.destroy
    redirect_to state_public_sector2s_url, notice: 'State public sector2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state_public_sector2
      @state_public_sector2 = StatePublicSector2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def state_public_sector2_params
      params.require(:state_public_sector2).permit(:Type_of_Company_or_corporation, :Government_Companies_Capital, :Government_Companies_Long_Term_Loans, :Total_Government_Companies, :Statutory_Corporations_Capital, :Statutory_Corporations_Long_Term_Loans, :Total_Statutory_Corporations, :Grand_Total)
    end
end
