class BridgeSector2sController < ApplicationController
  before_action :set_bridge_sector2, only: [:show, :edit, :update, :destroy]

  # GET /bridge_sector2s
  def index
    @bridge_sector2s = BridgeSector2.all
  end

  # GET /bridge_sector2s/1
  def show
  end

  # GET /bridge_sector2s/new
  def new
    @bridge_sector2 = BridgeSector2.new
  end

def test
  ji = [:Number_of_Bridges, :Expenditure, :Turnover, :Total_Revenue, :Administrative_Expenditure, :Gross_Profit, :Net_Profit]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   ji1  = [:Year, :Number_of_Bridges, :Expenditure, :Turnover, :Total_Revenue, :Administrative_Expenditure, :Gross_Profit, :Net_Profit]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = BridgeSector2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = BridgeSector2.map(b,params[:year],rain_fall_type,views)
         else
          b = BridgeSector2.map_search(params[:search],compare,year,rain_fall_type)
          a = BridgeSector2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = BridgeSector2.search(params[:search],compare,year,rain_fall_type)
        a = BridgeSector2.table(b,rain_fall_type,year,ji1,compare)
      else
        @BridgeSector2s = BridgeSector2.search(params[:search],compare,year,rain_fall_type)
        a = BridgeSector2.query(@BridgeSector2s,params[:year],rain_fall_type,views,ji,compare)
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
    BridgeSector2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /bridge_sector2s/1/edit
  def edit
  end

  # POST /bridge_sector2s
  def create
    @bridge_sector2 = BridgeSector2.new(bridge_sector2_params)

    if @bridge_sector2.save
      redirect_to @bridge_sector2, notice: 'Bridge sector2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /bridge_sector2s/1
  def update
    if @bridge_sector2.update(bridge_sector2_params)
      redirect_to @bridge_sector2, notice: 'Bridge sector2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /bridge_sector2s/1
  def destroy
    @bridge_sector2.destroy
    redirect_to bridge_sector2s_url, notice: 'Bridge sector2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bridge_sector2
      @bridge_sector2 = BridgeSector2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bridge_sector2_params
      params.require(:bridge_sector2).permit(:Year, :Number_of_Bridges, :Expenditure, :Turnover, :Total_Revenue, :Administrative_Expenditure, :Gross_Profit, :Net_Profit)
    end
end
