class FiscalPerformance2sController < ApplicationController
  before_action :set_fiscal_performance2, only: [:show, :edit, :update, :destroy]

  # GET /fiscal_performance2s
  def index
    @fiscal_performance2s = FiscalPerformance2.all

    respond_to do |format|
      format.html { render json: @fiscal_performance2s  }
  end
  end

  # GET /fiscal_performance2s/1
  def show
  end

  # GET /fiscal_performance2s/new
  def new
    @fiscal_performance2 = FiscalPerformance2.new
  end

def test
  ji = [:Sector, :"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17", :"2017-18_BE", :Sub_Sector]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]

   ji1 = [:Sector, :"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17", :"2017-18_BE", :Sub_Sector]


   if search == "A. Sustainability"

    if views == "Table"
      data = [
        "Balance from Current Revenue (Rs. crore)",
        "Interest Ratio (Percentage)",
        "Buoyancy of Own Tax Receipts w.r.t. GSDP ",
        "Buoyancy of Non-Tax Receipts w.r.t. GSDP ",
        "Growth in outstanding debt (Percentage)",
        "Growth in total revenue receipts (Percentage)",
        "Growth in state’s own revenue receipts (Percentage)",
        "Growth in GSDP (Percentage)",
       ]
    else
      data = [
        # "Balance from Current Revenue (Rs. crore)",
        "Interest Ratio (Percentage)",
        "Buoyancy of Own Tax Receipts w.r.t. GSDP ",
        "Buoyancy of Non-Tax Receipts w.r.t. GSDP ",
        "Growth in outstanding debt (Percentage)",
        "Growth in total revenue receipts (Percentage)",
        "Growth in state’s own revenue receipts (Percentage)",
        "Growth in GSDP (Percentage)",
       ]
    end



     elsif search == "B. Flexibility"
      data = [
  
        "Capital Repayment / Capital Borrowings (Percentage)",
        "Total Tax Receipts / GSDP (Percentage)",
        "Capital Outlay / Capital Receipts (Percentage)",
        "State’s Own Tax Receipts / GSDP (Percentage)",
        "State’s Own Non-Tax Receipts / GSDP (Percentage)",
        "Debt Outstanding / GSDP (Percentage)",
    
       ]


      elsif search == "C. Vulnerability"

        data = [
          "Revenue Deficit (Rs. crore)",
          "Fiscal Deficit (Rs. crore)",
          "Primary Deficit (Rs. crore)",
          "Primary Deficit / Fiscal Deficit (Percentage)",
          "Revenue Deficit / Fiscal Deficit (Percentage)",      
         ]
     
   else

    if views == "Table"
      
    data = [
      "Balance from Current Revenue (Rs. crore)",
      "Interest Ratio (Percentage)",
      "Buoyancy of Own Tax Receipts w.r.t. GSDP ",
      "Buoyancy of Non-Tax Receipts w.r.t. GSDP ",
      "Growth in outstanding debt (Percentage)",
      "Growth in total revenue receipts (Percentage)",
      "Growth in state’s own revenue receipts (Percentage)",
      "Growth in GSDP (Percentage)",
      "Capital Repayment / Capital Borrowings (Percentage)",
      "Total Tax Receipts / GSDP (Percentage)",
      "Capital Outlay / Capital Receipts (Percentage)",
      "State’s Own Tax Receipts / GSDP (Percentage)",
      "State’s Own Non-Tax Receipts / GSDP (Percentage)",
      "Debt Outstanding / GSDP (Percentage)",
      "Revenue Deficit (Rs. crore)",
      "Fiscal Deficit (Rs. crore)",
      "Primary Deficit (Rs. crore)",
      "Primary Deficit / Fiscal Deficit (Percentage)",
      "Revenue Deficit / Fiscal Deficit (Percentage)"

    ]
    else

    data = [
      # "Balance from Current Revenue (Rs. crore)",
      "Interest Ratio (Percentage)",
      "Buoyancy of Own Tax Receipts w.r.t. GSDP ",
      "Buoyancy of Non-Tax Receipts w.r.t. GSDP ",
      "Growth in outstanding debt (Percentage)",
      "Growth in total revenue receipts (Percentage)",
      "Growth in state’s own revenue receipts (Percentage)",
      "Growth in GSDP (Percentage)",
      "Capital Repayment / Capital Borrowings (Percentage)",
      "Total Tax Receipts / GSDP (Percentage)",
      "Capital Outlay / Capital Receipts (Percentage)",
      "State’s Own Tax Receipts / GSDP (Percentage)",
      "State’s Own Non-Tax Receipts / GSDP (Percentage)",
      "Debt Outstanding / GSDP (Percentage)",
      "Revenue Deficit (Rs. crore)",
      "Fiscal Deficit (Rs. crore)",
      "Primary Deficit (Rs. crore)",
      "Primary Deficit / Fiscal Deficit (Percentage)",
    ]
      
    end

     
   end

 
   jip = [:"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17", :"2017-18_BE"]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = FiscalPerformance2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = FiscalPerformance2.map(b,params[:year],rain_fall_type,views)
         else
          b = FiscalPerformance2.map_search(params[:search],compare,year,rain_fall_type)
          a = FiscalPerformance2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = FiscalPerformance2.search(params[:search],compare,year,rain_fall_type)
        a = FiscalPerformance2.table(b,rain_fall_type,year,ji1,compare,search,data)
      else
        @FiscalPerformance2s = FiscalPerformance2.search(params[:search],compare,year,rain_fall_type)
        a = FiscalPerformance2.query(@FiscalPerformance2s,params[:year],rain_fall_type,views,ji,compare,search,data,jip)
      end
      respond_to do |format|
        format.html { render json:a}
    end

  else
    respond_to do |format|
      format.html { render json: "error"}
  end
  end

end


  def import
    # Module1.import(params[:file])
    FiscalPerformance2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /fiscal_performance2s/1/edit
  def edit
  end

  # POST /fiscal_performance2s
  def create
    @fiscal_performance2 = FiscalPerformance2.new(fiscal_performance2_params)

    if @fiscal_performance2.save
      redirect_to @fiscal_performance2, notice: 'Fiscal performance2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /fiscal_performance2s/1
  def update
    if @fiscal_performance2.update(fiscal_performance2_params)
      redirect_to @fiscal_performance2, notice: 'Fiscal performance2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /fiscal_performance2s/1
  def destroy
    @fiscal_performance2.destroy
    redirect_to fiscal_performance2s_url, notice: 'Fiscal performance2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fiscal_performance2
      @fiscal_performance2 = FiscalPerformance2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fiscal_performance2_params
      params.require(:fiscal_performance2).permit(:Sector, :"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17", :"2017-18_BE", :Sub_Sector)
    end
end
