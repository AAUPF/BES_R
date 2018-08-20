class TaxGsdpRatiosController < ApplicationController
  before_action :set_tax_gsdp_ratio, only: [:show, :edit, :update, :destroy]

  # GET /tax_gsdp_ratios
  def index
    @tax_gsdp_ratios = TaxGsdpRatio.all
  end

  # GET /tax_gsdp_ratios/1
  def show
  end

  # GET /tax_gsdp_ratios/new
  def new
    @tax_gsdp_ratio = TaxGsdpRatio.new
  end

def test
  ji = [:Revenue_Receipts, :States_Own_Tax, :GSDP, :Ratio_of_SOT_and_RR, :Ratio_of_SOT_and_GSDP, :Ratio_of_Total_Revenue_and_GSDP]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1  = [:State, :Revenue_Receipts, :States_Own_Tax, :GSDP, :Ratio_of_SOT_and_RR, :Ratio_of_SOT_and_GSDP, :Ratio_of_Total_Revenue_and_GSDP]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = TaxGsdpRatio.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = TaxGsdpRatio.map(b,params[:year],rain_fall_type,views)
         else
          b = TaxGsdpRatio.map_search(params[:search],compare,year,rain_fall_type)
          a = TaxGsdpRatio.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = TaxGsdpRatio.search(params[:search],compare,year,rain_fall_type)
        a = TaxGsdpRatio.table(b,rain_fall_type,year,ji1,compare)
      else
        @TaxGsdpRatios = TaxGsdpRatio.search(params[:search],compare,year,rain_fall_type)
        a = TaxGsdpRatio.query(@TaxGsdpRatios,params[:year],rain_fall_type,views,ji,compare)
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
    TaxGsdpRatio.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /tax_gsdp_ratios/1/edit
  def edit
  end

  # POST /tax_gsdp_ratios
  def create
    @tax_gsdp_ratio = TaxGsdpRatio.new(tax_gsdp_ratio_params)

    if @tax_gsdp_ratio.save
      redirect_to @tax_gsdp_ratio, notice: 'Tax gsdp ratio was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tax_gsdp_ratios/1
  def update
    if @tax_gsdp_ratio.update(tax_gsdp_ratio_params)
      redirect_to @tax_gsdp_ratio, notice: 'Tax gsdp ratio was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tax_gsdp_ratios/1
  def destroy
    @tax_gsdp_ratio.destroy
    redirect_to tax_gsdp_ratios_url, notice: 'Tax gsdp ratio was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tax_gsdp_ratio
      @tax_gsdp_ratio = TaxGsdpRatio.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tax_gsdp_ratio_params
      params.require(:tax_gsdp_ratio).permit(:State, :Revenue_Receipts, :States_Own_Tax, :GSDP, :Ratio_of_SOT_and_RR, :Ratio_of_SOT_and_GSDP, :Ratio_of_Total_Revenue_and_GSDP)
    end
end
