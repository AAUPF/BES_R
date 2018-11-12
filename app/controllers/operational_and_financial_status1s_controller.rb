class OperationalAndFinancialStatus1sController < ApplicationController
  before_action :set_operational_and_financial_status1, only: [:show, :edit, :update, :destroy]

  # GET /operational_and_financial_status1s
  def index
    @operational_and_financial_status1s = OperationalAndFinancialStatus1.all
  end

  # GET /operational_and_financial_status1s/1
  def show
  end

  # GET /operational_and_financial_status1s/new
  def new
    @operational_and_financial_status1 = OperationalAndFinancialStatus1.new
  end

def test
  ji = [:NBPDCL, :SBPDCL]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Item"
   remove = ""
  #  ji1 = [:Characteristics, :India, :Bihar, :Year]
   if year == "All"
    ji1 = [:Item,:"2013-14",:"2014-15",:"2015-16",:"2016-17"]
   else
    if rain_fall_type != "All"
      ji1 = [:Item, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:Item, :NBPDCL, :SBPDCL, :Year]
    end
    
   end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = OperationalAndFinancialStatus1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = OperationalAndFinancialStatus1.map(b,params[:year],rain_fall_type,views)
         else
          b = OperationalAndFinancialStatus1.map_search(params[:search],compare,year,rain_fall_type)
          a = OperationalAndFinancialStatus1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = OperationalAndFinancialStatus1.search(params[:search],compare,year,rain_fall_type,legend)
        a = OperationalAndFinancialStatus1.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @OperationalAndFinancialStatus1s = OperationalAndFinancialStatus1.search(params[:search],compare,year,rain_fall_type,legend)
        a = OperationalAndFinancialStatus1.query(@OperationalAndFinancialStatus1s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    OperationalAndFinancialStatus1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /operational_and_financial_status1s/1/edit
  def edit
  end

  # POST /operational_and_financial_status1s
  def create
    @operational_and_financial_status1 = OperationalAndFinancialStatus1.new(operational_and_financial_status1_params)

    if @operational_and_financial_status1.save
      redirect_to @operational_and_financial_status1, notice: 'Operational and financial status1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /operational_and_financial_status1s/1
  def update
    if @operational_and_financial_status1.update(operational_and_financial_status1_params)
      redirect_to @operational_and_financial_status1, notice: 'Operational and financial status1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /operational_and_financial_status1s/1
  def destroy
    @operational_and_financial_status1.destroy
    redirect_to operational_and_financial_status1s_url, notice: 'Operational and financial status1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operational_and_financial_status1
      @operational_and_financial_status1 = OperationalAndFinancialStatus1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def operational_and_financial_status1_params
      params.require(:operational_and_financial_status1).permit(:Item, :NBPDCL, :SBPDCL, :Year)
    end
end
