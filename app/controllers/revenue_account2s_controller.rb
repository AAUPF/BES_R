class RevenueAccount2sController < ApplicationController
  before_action :set_revenue_account2, only: [:show, :edit, :update, :destroy]

  # GET /revenue_account2s
  def index
    @revenue_account2s = RevenueAccount2.all
  end

  # GET /revenue_account2s/1
  def show
  end

  # GET /revenue_account2s/new
  def new
    @revenue_account2 = RevenueAccount2.new
  end

def test
  ji = [:Amount]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1 = [:Expenditure_Pattern, :Amount, :Year]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = RevenueAccount2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = RevenueAccount2.map(b,params[:year],rain_fall_type,views)
         else
          b = RevenueAccount2.map_search(params[:search],compare,year,rain_fall_type)
          a = RevenueAccount2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = RevenueAccount2.search(params[:search],compare,year,rain_fall_type)
        a = RevenueAccount2.table(b,rain_fall_type,year,ji1,compare)
      else
        @RevenueAccount2s = RevenueAccount2.search(params[:search],compare,year,rain_fall_type)
        a = RevenueAccount2.query(@RevenueAccount2s,params[:year],rain_fall_type,views,ji,compare)
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
    RevenueAccount2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /revenue_account2s/1/edit
  def edit
  end

  # POST /revenue_account2s
  def create
    @revenue_account2 = RevenueAccount2.new(revenue_account2_params)

    if @revenue_account2.save
      redirect_to @revenue_account2, notice: 'Revenue account2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /revenue_account2s/1
  def update
    if @revenue_account2.update(revenue_account2_params)
      redirect_to @revenue_account2, notice: 'Revenue account2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /revenue_account2s/1
  def destroy
    @revenue_account2.destroy
    redirect_to revenue_account2s_url, notice: 'Revenue account2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_revenue_account2
      @revenue_account2 = RevenueAccount2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def revenue_account2_params
      params.require(:revenue_account2).permit(:Expenditure_Pattern, :Amount, :Year)
    end
end
