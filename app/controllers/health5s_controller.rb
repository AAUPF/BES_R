class Health5sController < ApplicationController
  before_action :set_health5, only: [:show, :edit, :update, :destroy]

  # GET /health5s
  def index
    @health5s = Health5.all
  end

  # GET /health5s/1
  def show
  end

  # GET /health5s/new
  def new
    @health5 = Health5.new
  end

def test
  ji = [:District_Hospital, :Referral_Hospital, :Sub_Divisional_Hospital, :PHC, :Sub_Centre, :APHC, :Total_Health_Centre, :Health_centres_per_lakh_of_population]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1 = [:Year, :District_Hospital, :Referral_Hospital, :Sub_Divisional_Hospital, :PHC, :Sub_Centre, :APHC, :Total_Health_Centre, :Health_centres_per_lakh_of_population]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Health5.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Health5.map(b,params[:year],rain_fall_type,views)
         else
          b = Health5.map_search(params[:search],compare,year,rain_fall_type)
          a = Health5.map(b,rain_fall_type,year,ji,unit1)
         end
      elsif views == "Table"  
        b = Health5.search(params[:search],compare,year,rain_fall_type)
        a = Health5.table(b,rain_fall_type,year,ji1,compare)
      else
        @Health5s = Health5.search(params[:search],compare,year,rain_fall_type)
        a = Health5.query(@Health5s,params[:year],rain_fall_type,views,ji,compare)
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
    Health5.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /health5s/1/edit
  def edit
  end

  # POST /health5s
  def create
    @health5 = Health5.new(health5_params)

    if @health5.save
      redirect_to @health5, notice: 'Health5 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /health5s/1
  def update
    if @health5.update(health5_params)
      redirect_to @health5, notice: 'Health5 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /health5s/1
  def destroy
    @health5.destroy
    redirect_to health5s_url, notice: 'Health5 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health5
      @health5 = Health5.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def health5_params
      params.require(:health5).permit(:Year, :District_Hospital, :Referral_Hospital, :Sub_Divisional_Hospital, :PHC, :Sub_Centre, :APHC, :Total_Health_Centre, :Health_centres_per_lakh_of_population)
    end
end
