class FiscalPerformance1sController < ApplicationController
  before_action :set_fiscal_performance1, only: [:show, :edit, :update, :destroy]

  # GET /fiscal_performance1s
  def index
    @fiscal_performance1s = FiscalPerformance1.all
  end

  # GET /fiscal_performance1s/1
  def show
  end

  # GET /fiscal_performance1s/new
  def new
    @fiscal_performance1 = FiscalPerformance1.new
  end

def test
  ji = [:Revenue_Deficit_GFD_Percentage, :Capital_Outlay_GFD_Percentage, :Non_Dev_Exp_Agg_Disbursements_Percentage, :Non_Dev_Exp_Revenue_Receipts_Percentage, :Interest_Payments_Revenue_Exp_Percentage, :State_Own_Revenue_Revenue_Exp_Percentage, :Gross_Transfers_Aggregate_Disbursements_Percentage, :Debt_Servicing_Gross_Transfers_Percentage]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
# ji1 = [:State, :Revenue_Deficit_GFD_Percentage, :Capital_Outlay_GFD_Percentage, :Non_Dev_Exp_Agg_Disbursements_Percentage, :Non_Dev_Exp_Revenue_Receipts_Percentage, :Interest_Payments_Revenue_Exp_Percentage, :State_Own_Revenue_Revenue_Exp_Percentage, :Gross_Transfers_Aggregate_Disbursements_Percentage, :Debt_Servicing_Gross_Transfers_Percentage, :Year]
if year == "All"
  ji1 = [:State, :"2015", :"2016_RE", :"2017_BE"]
else
  if rain_fall_type == "Revenue_Deficit_GFD_Percentage"
    ji1 = [:State, :Revenue_Deficit_GFD_Percentage, :Year]
  elsif rain_fall_type == "Capital_Outlay_GFD_Percentage"
    ji1 = [:State, :Capital_Outlay_GFD_Percentage, :Year]
  elsif rain_fall_type == "Non_Dev_Exp_Agg_Disbursements_Percentage"
    ji1 = [:State, :Non_Dev_Exp_Agg_Disbursements_Percentage, :Year]
  elsif rain_fall_type == "Non_Dev_Exp_Revenue_Receipts_Percentage"
    ji1 = [:State, :Non_Dev_Exp_Revenue_Receipts_Percentage, :Year]
  elsif rain_fall_type == "Interest_Payments_Revenue_Exp_Percentage"
    ji1 = [:State, :Interest_Payments_Revenue_Exp_Percentage, :Year]
  elsif rain_fall_type == "State_Own_Revenue_Revenue_Exp_Percentage"
    ji1 = [:State, :State_Own_Revenue_Revenue_Exp_Percentage, :Year]
  elsif rain_fall_type == "Gross_Transfers_Aggregate_Disbursements_Percentage"
    ji1 = [:State, :Gross_Transfers_Aggregate_Disbursements_Percentage, :Year]
  elsif rain_fall_type == "Debt_Servicing_Gross_Transfers_Percentage"
    ji1 = [:State, :Debt_Servicing_Gross_Transfers_Percentage, :Year]
  else
  ji1 = [:State, :Revenue_Deficit_GFD_Percentage, :Capital_Outlay_GFD_Percentage, :Non_Dev_Exp_Agg_Disbursements_Percentage, :Non_Dev_Exp_Revenue_Receipts_Percentage, :Interest_Payments_Revenue_Exp_Percentage, :State_Own_Revenue_Revenue_Exp_Percentage, :Gross_Transfers_Aggregate_Disbursements_Percentage, :Debt_Servicing_Gross_Transfers_Percentage, :Year]
end
end
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")        
         if rain_fall_type  ==  "All"
          b = FiscalPerformance1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = FiscalPerformance1.map(b,params[:year],rain_fall_type,views)
         else
          b = FiscalPerformance1.map_search(params[:search],compare,year,rain_fall_type)
          a = FiscalPerformance1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = FiscalPerformance1.search(params[:search],compare,year,rain_fall_type)
        a = FiscalPerformance1.table(b,rain_fall_type,year,ji1,compare)
      else
        @FiscalPerformance1s = FiscalPerformance1.search(params[:search],compare,year,rain_fall_type)
        a = FiscalPerformance1.query(@FiscalPerformance1s,params[:year],rain_fall_type,views,ji,compare,search)
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
    FiscalPerformance1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /fiscal_performance1s/1/edit
  def edit
  end

  # POST /fiscal_performance1s
  def create
    @fiscal_performance1 = FiscalPerformance1.new(fiscal_performance1_params)

    if @fiscal_performance1.save
      redirect_to @fiscal_performance1, notice: 'Fiscal performance1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /fiscal_performance1s/1
  def update
    if @fiscal_performance1.update(fiscal_performance1_params)
      redirect_to @fiscal_performance1, notice: 'Fiscal performance1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /fiscal_performance1s/1
  def destroy
    @fiscal_performance1.destroy
    redirect_to fiscal_performance1s_url, notice: 'Fiscal performance1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fiscal_performance1
      @fiscal_performance1 = FiscalPerformance1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fiscal_performance1_params
      params.require(:fiscal_performance1).permit(:State, :Revenue_Deficit_GFD_Percentage, :Capital_Outlay_GFD_Percentage, :Non_Dev_Exp_Agg_Disbursements_Percentage, :Non_Dev_Exp_Revenue_Receipts_Percentage, :Interest_Payments_Revenue_Exp_Percentage, :State_Own_Revenue_Revenue_Exp_Percentage, :Gross_Transfers_Aggregate_Disbursements_Percentage, :Debt_Servicing_Gross_Transfers_Percentage, :Year)
    end
end
