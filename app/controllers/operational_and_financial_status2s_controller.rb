class OperationalAndFinancialStatus2sController < ApplicationController
  before_action :set_operational_and_financial_status2, only: [:show, :edit, :update, :destroy]

  # GET /operational_and_financial_status2s
  def index
    @operational_and_financial_status2s = OperationalAndFinancialStatus2.all
  end

  # GET /operational_and_financial_status2s/1
  def show
  end

  # GET /operational_and_financial_status2s/new
  def new
    @operational_and_financial_status2 = OperationalAndFinancialStatus2.new
  end

def test
  ji = [:Losses, :"2011-12", :"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17"]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
 
   search = rain_fall_type
 
   jip = [:'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']
   ji1 = [:Losses, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']
   compare = "None"
 data = [
    "AT&C Loss"
]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = OperationalAndFinancialStatus2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = OperationalAndFinancialStatus2.map(b,params[:year],rain_fall_type,views)
         else
          b = OperationalAndFinancialStatus2.map_search(params[:search],compare,year,rain_fall_type)
          a = OperationalAndFinancialStatus2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = OperationalAndFinancialStatus2.search(params[:search],compare,year,rain_fall_type)
        a = OperationalAndFinancialStatus2.table(b,rain_fall_type,year,ji1,compare, search, data)
      else
        @OperationalAndFinancialStatus2s = OperationalAndFinancialStatus2.search(params[:search],compare,year,rain_fall_type)
        a = OperationalAndFinancialStatus2.query(@OperationalAndFinancialStatus2s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    OperationalAndFinancialStatus2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /operational_and_financial_status2s/1/edit
  def edit
  end

  # POST /operational_and_financial_status2s
  def create
    @operational_and_financial_status2 = OperationalAndFinancialStatus2.new(operational_and_financial_status2_params)

    if @operational_and_financial_status2.save
      redirect_to @operational_and_financial_status2, notice: 'Operational and financial status2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /operational_and_financial_status2s/1
  def update
    if @operational_and_financial_status2.update(operational_and_financial_status2_params)
      redirect_to @operational_and_financial_status2, notice: 'Operational and financial status2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /operational_and_financial_status2s/1
  def destroy
    @operational_and_financial_status2.destroy
    redirect_to operational_and_financial_status2s_url, notice: 'Operational and financial status2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operational_and_financial_status2
      @operational_and_financial_status2 = OperationalAndFinancialStatus2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def operational_and_financial_status2_params
      params.require(:operational_and_financial_status2).permit(:Losses, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17')
    end
end
