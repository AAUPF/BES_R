class RevenueAccount4sController < ApplicationController
  before_action :set_revenue_account4, only: [:show, :edit, :update, :destroy]

  # GET /revenue_account4s
  def index
    @revenue_account4s = RevenueAccount4.all
  end

  # GET /revenue_account4s/1
  def show
  end

  # GET /revenue_account4s/new
  def new
    @revenue_account4 = RevenueAccount4.new
  end

def test
  ji = [:Amount]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
# ji1 = [:Revenue, :Amount, :Year]
if year == "All"
  ji1 = [:Revenue, :"2012-13", :"2013-14",:"2014-15",:"2015-16",:"2016-17",:"2017-18_BE"]
 else
  ji1 = [:Revenue, :Amount, :Year]
 end
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = RevenueAccount4.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = RevenueAccount4.map(b,params[:year],rain_fall_type,views)
         else
          b = RevenueAccount4.map_search(params[:search],compare,year,rain_fall_type)
          a = RevenueAccount4.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = RevenueAccount4.search(params[:search],compare,year,rain_fall_type)
        a = RevenueAccount4.table(b,rain_fall_type,year,ji1,compare)
      else
        @RevenueAccount4s = RevenueAccount4.search(params[:search],compare,year,rain_fall_type)
        a = RevenueAccount4.query(@RevenueAccount4s,params[:year],rain_fall_type,views,ji,compare,search)
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
    RevenueAccount4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /revenue_account4s/1/edit
  def edit
  end

  # POST /revenue_account4s
  def create
    @revenue_account4 = RevenueAccount4.new(revenue_account4_params)

    if @revenue_account4.save
      redirect_to @revenue_account4, notice: 'Revenue account4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /revenue_account4s/1
  def update
    if @revenue_account4.update(revenue_account4_params)
      redirect_to @revenue_account4, notice: 'Revenue account4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /revenue_account4s/1
  def destroy
    @revenue_account4.destroy
    redirect_to revenue_account4s_url, notice: 'Revenue account4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_revenue_account4
      @revenue_account4 = RevenueAccount4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def revenue_account4_params
      params.require(:revenue_account4).permit(:Revenue, :Amount, :Year)
    end
end
