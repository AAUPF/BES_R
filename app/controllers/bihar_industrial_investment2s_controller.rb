class BiharIndustrialInvestment2sController < ApplicationController
  before_action :set_bihar_industrial_investment2, only: [:show, :edit, :update, :destroy]

  # GET /bihar_industrial_investment2s
  def index
    @bihar_industrial_investment2s = BiharIndustrialInvestment2.all
  end

  # GET /bihar_industrial_investment2s/1
  def show
  end

  # GET /bihar_industrial_investment2s/new
  def new
    @bihar_industrial_investment2 = BiharIndustrialInvestment2.new
  end

def test
  ji = [:Number_of_Units]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   ji1 = [:Sectors, :Number_of_Units]

   legend = "Sectors"
  if rain_fall_type || views
      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = BiharIndustrialInvestment2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = BiharIndustrialInvestment2.map(b,params[:year],rain_fall_type,views)
         else
          b = BiharIndustrialInvestment2.map_search(params[:search],compare,year,rain_fall_type)
          a = BiharIndustrialInvestment2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = BiharIndustrialInvestment2.search(params[:search],compare,year,rain_fall_type,legend)
        a = BiharIndustrialInvestment2.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @BiharIndustrialInvestment2s = BiharIndustrialInvestment2.search(params[:search],compare,year,rain_fall_type,legend)
        a = BiharIndustrialInvestment2.query(@BiharIndustrialInvestment2s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    BiharIndustrialInvestment2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /bihar_industrial_investment2s/1/edit
  def edit
  end

  # POST /bihar_industrial_investment2s
  def create
    @bihar_industrial_investment2 = BiharIndustrialInvestment2.new(bihar_industrial_investment2_params)

    if @bihar_industrial_investment2.save
      redirect_to @bihar_industrial_investment2, notice: 'Bihar industrial investment2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /bihar_industrial_investment2s/1
  def update
    if @bihar_industrial_investment2.update(bihar_industrial_investment2_params)
      redirect_to @bihar_industrial_investment2, notice: 'Bihar industrial investment2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /bihar_industrial_investment2s/1
  def destroy
    @bihar_industrial_investment2.destroy
    redirect_to bihar_industrial_investment2s_url, notice: 'Bihar industrial investment2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bihar_industrial_investment2
      @bihar_industrial_investment2 = BiharIndustrialInvestment2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bihar_industrial_investment2_params
      params.require(:bihar_industrial_investment2).permit(:Sectors, :Number_of_Units)
    end
end
