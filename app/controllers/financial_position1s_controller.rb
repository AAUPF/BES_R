class FinancialPosition1sController < ApplicationController
  before_action :set_financial_position1, only: [:show, :edit, :update, :destroy]
include Newmodulefunctions
  # GET /financial_position1s
  def index
    @financial_position1s = FinancialPosition1.all
    respond_to do |format|
      format.html { render json:@financial_position1s }
  end
  end

  # GET /financial_position1s/1
  def show
  end

  # GET /financial_position1s/new
  def new
    @financial_position1 = FinancialPosition1.new
  end

# def test
#   ji = [:Sector, :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17', :'2017-18_BE', :Indicator]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]
#    price = params[:price]
#    search = params[:search]
#    ji1 = %i[Sector 2012-13 2013-14 2014-15 2015-16 2016-17 2017-18_BE]
#    jip = %i[2012-13 2013-14 2014-15 2015-16 2016-17 2017-18_BE]
#    data  = Newmodulefunctions.controller_code(rain_fall_type,search,compare)

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = FinancialPosition1.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = FinancialPosition1.map(b,params[:year],rain_fall_type,views)
#          else
#           b = FinancialPosition1.map_search(params[:search],compare,year,rain_fall_type)
#           a = FinancialPosition1.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = FinancialPosition1.new_search(params[:search],compare,year,rain_fall_type,price)
#         a = FinancialPosition1.table(b,rain_fall_type,year,ji1,compare, search, data)
#       else
#         @FinancialPosition1s = FinancialPosition1.new_search(params[:search],compare,year,rain_fall_type,price)
#         a = FinancialPosition1.query(@FinancialPosition1s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
#       end
#       respond_to do |format|
#         format.html { render json:a }
#     end

#   else
#     respond_to do |format|
#       format.html { render json: "error"}
#   end
#   end

# end



def test
  ji = [:'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17', :'2017-18_BE',]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
    data = [
      "Total Receipts Revenue Account",
      "Tax Revenue",
      "Non Tax Revenue",
      "Grants in Aid and Contributions",
      "Total Exp. Revenue Account",
      "General Services, of which",
      "Interest Payments",
      "Social Services",
      "Economic Services",
      "Grants-in-aid",
      "Revenue Deficit",
      "Capital Receipts",
      "Public Debt etc.",
      "Recovery of Loan and Advances",
      "Capital Expenditure, of which",
      "Capital Outlay",
      "Loans and Advances",
      "Public Debt.",
      "Total Expenditure",
      "Plan Expenditure",
      "Non Plan Expenditure",
      "Gross Fiscal Deficit",
      "Primary Deficit",
      "Total Borrowings",
      "Internal Debt Receipt",
      "Loans from Central Government",
      "Repayment of Public Debt",
      "Debt Outstanding",
      "GSDP",
    ]

 search = rain_fall_type

 jip = [:'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17', :'2017-18_BE',]
 ji1 = [:Sector, :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17', :'2017-18_BE',]

 legend = "Item"
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = FinancialPosition1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = FinancialPosition1.map(b,params[:year],rain_fall_type,views)
         else
          b = FinancialPosition1.map_search(params[:search],compare,year,rain_fall_type)
          a = FinancialPosition1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = FinancialPosition1.search(params[:search],compare,year,rain_fall_type)
        a = FinancialPosition1.new_table(b,rain_fall_type,year,ji1,compare, search, data,legend)
      else
        @FinancialPosition1s = FinancialPosition1.search(params[:search],compare,year,rain_fall_type)
        a = FinancialPosition1.query(@FinancialPosition1s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    FinancialPosition1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /financial_position1s/1/edit
  def edit
  end

  # POST /financial_position1s
  def create
    @financial_position1 = FinancialPosition1.new(financial_position1_params)

    if @financial_position1.save
      redirect_to @financial_position1, notice: 'Financial position1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /financial_position1s/1
  def update
    if @financial_position1.update(financial_position1_params)
      redirect_to @financial_position1, notice: 'Financial position1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /financial_position1s/1
  def destroy
    @financial_position1.destroy
    redirect_to financial_position1s_url, notice: 'Financial position1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_financial_position1
      @financial_position1 = FinancialPosition1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def financial_position1_params
      params.require(:financial_position1).permit(:Sector, :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17', :'2017-18_BE', :Indicator)
    end
end
