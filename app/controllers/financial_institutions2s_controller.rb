class FinancialInstitutions2sController < ApplicationController
  before_action :set_financial_institutions2, only: [:show, :edit, :update, :destroy]

  # GET /financial_institutions2s
  def index
    @financial_institutions2s = FinancialInstitutions2.all
  end

  # GET /financial_institutions2s/1
  def show
  end

  # GET /financial_institutions2s/new
  def new
    @financial_institutions2 = FinancialInstitutions2.new
  end

def test
  ji = [:Sector, :'2010-11', :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
 
   search = rain_fall_type
 
   jip = [:'2010-11', :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']
   ji1 = [:Sector, :'2010-11', :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']
 
 
   if views != "Table"
 
 
     data = [
      "Minor Irrigation",
      "Farm Mechanization",
      "Dairy",
      "Self-Help Groups",
      "Non-Farm Sector",
      "Others",
      "Total"
 ]
 
     
   else
 
     data = [
      "Minor Irrigation",
      "Farm Mechanization",
      "Dairy",
      "Self-Help Groups",
      "Non-Farm Sector",
      "Others",
      "Total"
     ]
 
     
   end

   legend = "Sector"

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = FinancialInstitutions2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = FinancialInstitutions2.map(b,params[:year],rain_fall_type,views)
         else
          b = FinancialInstitutions2.map_search(params[:search],compare,year,rain_fall_type)
          a = FinancialInstitutions2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = FinancialInstitutions2.search(params[:search],compare,year,rain_fall_type)
        a = FinancialInstitutions2.table(b,rain_fall_type,year,ji1,compare, search, data)
      else
        @FinancialInstitutions2s = FinancialInstitutions2.search(params[:search],compare,year,rain_fall_type)
        a = FinancialInstitutions2.query(@FinancialInstitutions2s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    FinancialInstitutions2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /financial_institutions2s/1/edit
  def edit
  end

  # POST /financial_institutions2s
  def create
    @financial_institutions2 = FinancialInstitutions2.new(financial_institutions2_params)

    if @financial_institutions2.save
      redirect_to @financial_institutions2, notice: 'Financial institutions2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /financial_institutions2s/1
  def update
    if @financial_institutions2.update(financial_institutions2_params)
      redirect_to @financial_institutions2, notice: 'Financial institutions2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /financial_institutions2s/1
  def destroy
    @financial_institutions2.destroy
    redirect_to financial_institutions2s_url, notice: 'Financial institutions2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_financial_institutions2
      @financial_institutions2 = FinancialInstitutions2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def financial_institutions2_params
      params.require(:financial_institutions2).permit(:Sectors, :'2010-11', :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17')
    end
end
