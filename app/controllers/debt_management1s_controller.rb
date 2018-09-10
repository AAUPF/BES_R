class DebtManagement1sController < ApplicationController
  before_action :set_debt_management1, only: [:show, :edit, :update, :destroy]

  # GET /debt_management1s
  def index
    @debt_management1s = DebtManagement1.all

    respond_to do |format|
      format.html { render json:@debt_management1s }
  end
  end

  # GET /debt_management1s/1
  def show
  end

  # GET /debt_management1s/new
  def new
    @debt_management1 = DebtManagement1.new
  end

  def test
    ji = [:Sector, :"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17", :"2017-18_BE", :Indicator]
    rain_fall_type = params[:rain_fall_type]
     views  = params[:views]
     year  = params[:year]
     compare = params[:compare]
     search = params[:search]
  
  
     ji1 = [:Sector, :"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17", :"2017-18_BE", :Indicator]
  
     jip = [:"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17", :"2017-18_BE"]
  
  
     if search == "Public Debt"
  
      data = [
        "Internal  Debt",
        "Central Loans",
        "Total",
       ]
  
       elsif search == "Other Liabilities"
  
        data = [
          "Small Savings, PF etc.",
          "Reserve Funds",
          "Deposits and Advances",
          "Total",
          "Total (Public Debt plus Other Liabilities)",
          "Outstanding Liability as Percentage of GSDP",
         ]
  
  
     else
  
      data = [
        "Internal  Debt",
        "Central Loans",
        "Total",
        "Small Savings, PF etc.",
        "Reserve Funds",
        "Deposits and Advances",
        "Total",
        "Total (Public Debt plus Other Liabilities)",
        "Outstanding Liability as Percentage of GSDP",
      ]
       
     end
  
     
  
    if rain_fall_type || views
  
        if views == "Map View"
          l =  rain_fall_type.gsub(" ","")           
           if rain_fall_type  ==  "All"
            b = DebtManagement1.map_search("All",compare,year,rain_fall_type)
            u = "Total"
            a = DebtManagement1.map(b,params[:year],rain_fall_type,views)
           else
            b = DebtManagement1.map_search(params[:search],compare,year,rain_fall_type)
            a = DebtManagement1.map(b,rain_fall_type,year,ji)
           end
        elsif views == "Table"  
          b = DebtManagement1.search(params[:search],compare,year,rain_fall_type)
          a = DebtManagement1.table(b,rain_fall_type,year,ji1,compare,search,data)
        else
          @DebtManagement1s = DebtManagement1.search(params[:search],compare,year,rain_fall_type)
          a = DebtManagement1.query(@DebtManagement1s,params[:year],rain_fall_type,views,ji,compare,search,data,jip)
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
    DebtManagement1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /debt_management1s/1/edit
  def edit
  end

  # POST /debt_management1s
  def create
    @debt_management1 = DebtManagement1.new(debt_management1_params)

    if @debt_management1.save
      redirect_to @debt_management1, notice: 'Debt management1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /debt_management1s/1
  def update
    if @debt_management1.update(debt_management1_params)
      redirect_to @debt_management1, notice: 'Debt management1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /debt_management1s/1
  def destroy
    @debt_management1.destroy
    redirect_to debt_management1s_url, notice: 'Debt management1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_debt_management1
      @debt_management1 = DebtManagement1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def debt_management1_params
      params.require(:debt_management1).permit(:Sector, :"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17", :"2017-18_BE", :Indicator)
    end
end
