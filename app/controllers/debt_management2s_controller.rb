class DebtManagement2sController < ApplicationController
  before_action :set_debt_management2, only: [:show, :edit, :update, :destroy]

  # GET /debt_management2s
  def index
    @debt_management2s = DebtManagement2.all
    respond_to do |format|
      format.html { render json: @debt_management2s}
  end
  end

  # GET /debt_management2s/1
  def show
  end

  # GET /debt_management2s/new
  def new
    @debt_management2 = DebtManagement2.new
  end

def test
  ji = [:Sector, :'2015-16', :'2016-17', :'31_03_2016', :'31_03_2017', :'Percentage_increase_over_2017_from_2016', :'Percentage_composition_of_outstanding_balance_as_on_31_03_17']
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]

   ji1 = [:Sector, :'2015-16', :'2016-17', :'31_03_2016', :'31_03_2017', :'Percentage_increase_over_2017_from_2016', :'Percentage_composition_of_outstanding_balance_as_on_31_03_17']
   jip = [:'2015-16', :'2016-17', :'31_03_2016', :'31_03_2017']
   search = rain_fall_type
  #  if rain_fall_type == "All"
  #   jip = [:'2015-16', :'2016-17', :'31_03_2016', :'31_03_2017']
  #  else
  #   jip = [:'2015-16', :'2016-17', :'31_03_2016', :'31_03_2017']
  #  end

   data = [
    "A. Internal Debt ",
    "Market Loans",
    "WMA from the RBI",
    "Bonds",
    "Loans from Financial Institutions",
    "Special Securities Issued to NSSF",
    "Others",
    "B.  Loans and Advances from Central Government ",
    "Non plan loans",
    "Loans for Central Plan Schemes",
    "Loans for State Plan Schemes",
    "Loans for Centrally Sponsored Plan Schemes",
    "Other Loans",
    "Total A plus B",
   ]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = DebtManagement2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = DebtManagement2.map(b,params[:year],rain_fall_type,views)
         else
          b = DebtManagement2.map_search(params[:search],compare,year,rain_fall_type)
          a = DebtManagement2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = DebtManagement2.search(params[:search],compare,year,rain_fall_type)
        a = DebtManagement2.table(b,rain_fall_type,year,ji1,compare,search,data)
      else
        @DebtManagement2s = DebtManagement2.search(params[:search],compare,year,rain_fall_type)
        a = DebtManagement2.query(@DebtManagement2s,params[:year],rain_fall_type,views,ji,compare,search,data,jip)
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
    DebtManagement2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /debt_management2s/1/edit
  def edit
  end

  # POST /debt_management2s
  def create
    @debt_management2 = DebtManagement2.new(debt_management2_params)

    if @debt_management2.save
      redirect_to @debt_management2, notice: 'Debt management2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /debt_management2s/1
  def update
    if @debt_management2.update(debt_management2_params)
      redirect_to @debt_management2, notice: 'Debt management2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /debt_management2s/1
  def destroy
    @debt_management2.destroy
    redirect_to debt_management2s_url, notice: 'Debt management2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_debt_management2
      @debt_management2 = DebtManagement2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def debt_management2_params
      params.require(:debt_management2).permit(:Sector, :'2015-16', :'2016-17', :'31_03_2016', :'31_03_2017', :'Percentage_increase_over_2017_from_2016', :'Percentage_composition_of_outstanding_balance_as_on_31_03_17')
    end
end
