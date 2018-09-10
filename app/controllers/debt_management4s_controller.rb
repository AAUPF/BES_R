class DebtManagement4sController < ApplicationController
  before_action :set_debt_management4, only: [:show, :edit, :update, :destroy]

  # GET /debt_management4s
  def index
    @debt_management4s = DebtManagement4.all

    respond_to do |format|
      format.html { render json: @debt_management4s}
  end
  end

  # GET /debt_management4s/1
  def show
  end

  # GET /debt_management4s/new
  def new
    @debt_management4 = DebtManagement4.new
  end

  def test
    ji = [:Sector, :"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17", :"2017-18_BE"]
    rain_fall_type = params[:rain_fall_type]
     views  = params[:views]
     year  = params[:year]
     compare = params[:compare]
     search = params[:search]
  
  
     ji1 = [:Sector, :"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17", :"2017-18_BE"]
  
     jip = [:"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17", :"2017-18_BE"]
  
     search = rain_fall_type


     if views == "Table"


      data = [

        "Gross Central Loans Received",
        "Internal Debt Recd",
        "Total Public Debt Received",
        "Recoveries of Loans and Advances",
        "Interest payments",
        "Interest Received",
        "Repayment of Debt ",
        "Net Public Debt Received",
        "Net Debt Received as percentage             of total borrowing",
       ]
       
     else
       data = [

        "Gross Central Loans Received",
        "Internal Debt Recd",
        "Total Public Debt Received",
        "Recoveries of Loans and Advances",
        "Interest payments",
        "Interest Received",
        "Repayment of Debt ",
        "Net Public Debt Received",
       ]
     end
  
     
  
    if rain_fall_type || views
  
        if views == "Map View"
          l =  rain_fall_type.gsub(" ","")           
           if rain_fall_type  ==  "All"
            b = DebtManagement4.map_search("All",compare,year,rain_fall_type)
            u = "Total"
            a = DebtManagement4.map(b,params[:year],rain_fall_type,views)
           else
            b = DebtManagement4.map_search(params[:search],compare,year,rain_fall_type)
            a = DebtManagement4.map(b,rain_fall_type,year,ji)
           end
        elsif views == "Table"  
          b = DebtManagement4.search(params[:search],compare,year,rain_fall_type)
          a = DebtManagement4.table(b,rain_fall_type,year,ji1,compare,search,data)
        else
          @DebtManagement4s = DebtManagement4.search(params[:search],compare,year,rain_fall_type)
          a = DebtManagement4.query(@DebtManagement4s,params[:year],rain_fall_type,views,ji,compare,search,data,jip)
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
    DebtManagement4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /debt_management4s/1/edit
  def edit
  end

  # POST /debt_management4s
  def create
    @debt_management4 = DebtManagement4.new(debt_management4_params)

    if @debt_management4.save
      redirect_to @debt_management4, notice: 'Debt management4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /debt_management4s/1
  def update
    if @debt_management4.update(debt_management4_params)
      redirect_to @debt_management4, notice: 'Debt management4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /debt_management4s/1
  def destroy
    @debt_management4.destroy
    redirect_to debt_management4s_url, notice: 'Debt management4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_debt_management4
      @debt_management4 = DebtManagement4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def debt_management4_params
      params.require(:debt_management4).permit(:Sector, :"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17", :"2017-18_BE")
    end
end
