class BiharIndustrialInvestment1sController < ApplicationController
  before_action :set_bihar_industrial_investment1, only: [:show, :edit, :update, :destroy]

  # GET /bihar_industrial_investment1s
  def index
    @bihar_industrial_investment1s = BiharIndustrialInvestment1.all
  end

  # GET /bihar_industrial_investment1s/1
  def show
  end

  # GET /bihar_industrial_investment1s/new
  def new
    @bihar_industrial_investment1 = BiharIndustrialInvestment1.new
  end

def test
  ji = [:Number_of_Proposed_Units, :Proposed_Investment]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   ji1 = [:Sectors, :Number_of_Proposed_Units, :Proposed_Investment]

legend = "Sectors"
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = BiharIndustrialInvestment1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = BiharIndustrialInvestment1.map(b,params[:year],rain_fall_type,views)
         else
          b = BiharIndustrialInvestment1.map_search(params[:search],compare,year,rain_fall_type)
          a = BiharIndustrialInvestment1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = BiharIndustrialInvestment1.search(params[:search],compare,year,rain_fall_type,legend)
        a = BiharIndustrialInvestment1.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @BiharIndustrialInvestment1s = BiharIndustrialInvestment1.search(params[:search],compare,year,rain_fall_type,legend)
        a = BiharIndustrialInvestment1.query(@BiharIndustrialInvestment1s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    BiharIndustrialInvestment1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /bihar_industrial_investment1s/1/edit
  def edit
  end

  # POST /bihar_industrial_investment1s
  def create
    @bihar_industrial_investment1 = BiharIndustrialInvestment1.new(bihar_industrial_investment1_params)

    if @bihar_industrial_investment1.save
      redirect_to @bihar_industrial_investment1, notice: 'Bihar industrial investment1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /bihar_industrial_investment1s/1
  def update
    if @bihar_industrial_investment1.update(bihar_industrial_investment1_params)
      redirect_to @bihar_industrial_investment1, notice: 'Bihar industrial investment1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /bihar_industrial_investment1s/1
  def destroy
    @bihar_industrial_investment1.destroy
    redirect_to bihar_industrial_investment1s_url, notice: 'Bihar industrial investment1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bihar_industrial_investment1
      @bihar_industrial_investment1 = BiharIndustrialInvestment1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bihar_industrial_investment1_params
      params.require(:bihar_industrial_investment1).permit(:Sectors, :Number_of_Proposed_Units, :Proposed_Investment)
    end
end
