class FinancialInstitutions1sController < ApplicationController
  before_action :set_financial_institutions1, only: [:show, :edit, :update, :destroy]

  # GET /financial_institutions1s
  def index
    @financial_institutions1s = FinancialInstitutions1.all
  end

  # GET /financial_institutions1s/1
  def show
  end

  # GET /financial_institutions1s/new
  def new
    @financial_institutions1 = FinancialInstitutions1.new
  end

def test
  ji = [:Crop_Loan_Refinance, :Investment_Credit_Refinancing, :RIDF_plus_WIF_plus_FPF_Loan_sanctioned, :Total_Financial_Support]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   ji1 = [:Year, :Crop_Loan_Refinance, :Investment_Credit_Refinancing, :RIDF_plus_WIF_plus_FPF_Loan_sanctioned, :Total_Financial_Support]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = FinancialInstitutions1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = FinancialInstitutions1.map(b,params[:year],rain_fall_type,views)
         else
          b = FinancialInstitutions1.map_search(params[:search],compare,year,rain_fall_type)
          a = FinancialInstitutions1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = FinancialInstitutions1.search(params[:search],compare,year,rain_fall_type)
        a = FinancialInstitutions1.table(b,rain_fall_type,year,ji1,compare)
      else
        @FinancialInstitutions1s = FinancialInstitutions1.search(params[:search],compare,year,rain_fall_type)
        a = FinancialInstitutions1.query(@FinancialInstitutions1s,params[:year],rain_fall_type,views,ji,compare)
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
    FinancialInstitutions1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /financial_institutions1s/1/edit
  def edit
  end

  # POST /financial_institutions1s
  def create
    @financial_institutions1 = FinancialInstitutions1.new(financial_institutions1_params)

    if @financial_institutions1.save
      redirect_to @financial_institutions1, notice: 'Financial institutions1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /financial_institutions1s/1
  def update
    if @financial_institutions1.update(financial_institutions1_params)
      redirect_to @financial_institutions1, notice: 'Financial institutions1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /financial_institutions1s/1
  def destroy
    @financial_institutions1.destroy
    redirect_to financial_institutions1s_url, notice: 'Financial institutions1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_financial_institutions1
      @financial_institutions1 = FinancialInstitutions1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def financial_institutions1_params
      params.require(:financial_institutions1).permit(:Year, :Crop_Loan_Refinance, :Investment_Credit_Refinancing, :RIDF_plus_WIF_plus_FPF_Loan_sanctioned, :Total_Financial_Support)
    end
end
