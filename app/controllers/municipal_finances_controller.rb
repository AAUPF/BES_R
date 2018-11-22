class MunicipalFinancesController < ApplicationController
  before_action :set_municipal_finance, only: [:show, :edit, :update, :destroy]

  # GET /municipal_finances
  def index
    @municipal_finances = MunicipalFinance.all

    respond_to do |format|
      format.html { render json: @municipal_finances}
  end
  end

  # GET /municipal_finances/1
  def show
  end

  # GET /municipal_finances/new
  def new
    @municipal_finance = MunicipalFinance.new
  end


def test
  ji = [:'2014-15', :'2015-16']  
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

   search = params[:search]

   jip = [:'2014-15', :'2015-16']

   compare = "None"



   if search === "Revenue Expenditure"

  data = [
    "(a) Establishment ",
    "(b) Programme",
    "(c) Operation/ Maintenance ",
    "(d) Finance /Interest",
    "(e) Others",
    "Total ",
    "Capital Grants"
  ]     
   elsif search == "Revenue Income"

      data = [
    "(a) Self -Generated Income",
    "(i) Holding Tax",
    "(ii) Other Tax",
    "(iii) Non Taxes",
    "(b) Assigned Income ",
    "(c) Revenue  Grants ",
    "(d) Other Income/Receipts",
    "Total",
  ]
     
   else

      data = [
    "Self-Generated Income/ Revenue Income (Percentage)",
   "Self-Generated Income/ Establishment Expenditure (Percentage)"
  ]
     
   end


# if search = "Revenue Income"

#   data = [
#     "(a) Self -Generated Income",
#     "(i) Holding Tax",
#     "(ii) Other Tax",
#     "(iii) Non Taxes",
#     "(b) Assigned Income ",
#     "(c) Revenue  Grants ",
#     "(d) Other Income/Receipts",
#     "Total",
#   ]
  
# elsif  search = "Revenue Expenditure"


#   data = [
#     "(a) Establishment ",
#     "(b) Programme",
#     "(c) Operation/ Maintenance ",
#     "(d) Finance /Interest",
#     "(e) Others",
#     "Total ",
#     "Capital Grants"
#   ]

# else

#   data = [
#     "Self-Generated Income/ Revenue Income (Percentage)",
#    " Self-Generated Income/ Establishment Expenditure (Percentage)"
#   ]
  
# end

  
  legend = "Indicators"

search = rain_fall_type

   ji1 = [:Sector, :'2014-15', :'2015-16', :Indicator]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = MunicipalFinance.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = MunicipalFinance.map(b,params[:year],rain_fall_type,views)
         else
          b = MunicipalFinance.map_search(params[:search],compare,year,rain_fall_type)
          a = MunicipalFinance.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = MunicipalFinance.search(params[:search],compare,year,rain_fall_type)
        a = MunicipalFinance.new_table(b,rain_fall_type,year,ji1,compare, search, data,legend)
      else
        @MunicipalFinances = MunicipalFinance.search(params[:search],compare,year,rain_fall_type)
        a = MunicipalFinance.query(@MunicipalFinances,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    MunicipalFinance.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /municipal_finances/1/edit
  def edit
  end

  # POST /municipal_finances
  def create
    @municipal_finance = MunicipalFinance.new(municipal_finance_params)

    if @municipal_finance.save
      redirect_to @municipal_finance, notice: 'Municipal finance was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /municipal_finances/1
  def update
    if @municipal_finance.update(municipal_finance_params)
      redirect_to @municipal_finance, notice: 'Municipal finance was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /municipal_finances/1
  def destroy
    @municipal_finance.destroy
    redirect_to municipal_finances_url, notice: 'Municipal finance was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_municipal_finance
      @municipal_finance = MunicipalFinance.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def municipal_finance_params
      params.require(:municipal_finance).permit(:Indicators, :'2014-15', :'2015-16', :Indicator)
    end
end
