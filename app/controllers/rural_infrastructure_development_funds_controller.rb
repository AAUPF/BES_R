class RuralInfrastructureDevelopmentFundsController < ApplicationController
  before_action :set_rural_infrastructure_development_fund, only: [:show, :edit, :update, :destroy]

  # GET /rural_infrastructure_development_funds
  def index
    @rural_infrastructure_development_funds = RuralInfrastructureDevelopmentFund.all
  end

  # GET /rural_infrastructure_development_funds/1
  def show
  end

  # GET /rural_infrastructure_development_funds/new
  def new
    @rural_infrastructure_development_fund = RuralInfrastructureDevelopmentFund.new
  end

def test
  ji = [:Sanction, :Disbursement, :Disbursement_Percentage]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "RIDF_Tranche"
   ji1 = [:RIDF_Tranche, :Sanction, :Disbursement, :Disbursement_Percentage]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = RuralInfrastructureDevelopmentFund.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = RuralInfrastructureDevelopmentFund.map(b,params[:year],rain_fall_type,views)
         else
          b = RuralInfrastructureDevelopmentFund.map_search(params[:search],compare,year,rain_fall_type)
          a = RuralInfrastructureDevelopmentFund.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = RuralInfrastructureDevelopmentFund.search(params[:search],compare,year,rain_fall_type,legend)
        a = RuralInfrastructureDevelopmentFund.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @RuralInfrastructureDevelopmentFunds = RuralInfrastructureDevelopmentFund.search(params[:search],compare,year,rain_fall_type,legend)
        a = RuralInfrastructureDevelopmentFund.query(@RuralInfrastructureDevelopmentFunds,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    RuralInfrastructureDevelopmentFund.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /rural_infrastructure_development_funds/1/edit
  def edit
  end

  # POST /rural_infrastructure_development_funds
  def create
    @rural_infrastructure_development_fund = RuralInfrastructureDevelopmentFund.new(rural_infrastructure_development_fund_params)

    if @rural_infrastructure_development_fund.save
      redirect_to @rural_infrastructure_development_fund, notice: 'Rural infrastructure development fund was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /rural_infrastructure_development_funds/1
  def update
    if @rural_infrastructure_development_fund.update(rural_infrastructure_development_fund_params)
      redirect_to @rural_infrastructure_development_fund, notice: 'Rural infrastructure development fund was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /rural_infrastructure_development_funds/1
  def destroy
    @rural_infrastructure_development_fund.destroy
    redirect_to rural_infrastructure_development_funds_url, notice: 'Rural infrastructure development fund was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rural_infrastructure_development_fund
      @rural_infrastructure_development_fund = RuralInfrastructureDevelopmentFund.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rural_infrastructure_development_fund_params
      params.require(:rural_infrastructure_development_fund).permit(:RIDF_Tranche, :Sanction, :Disbursement, :Disbursement_Percentage)
    end
end
