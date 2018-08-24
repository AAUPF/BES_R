class RevenueAccount5sController < ApplicationController
  before_action :set_revenue_account5, only: [:show, :edit, :update, :destroy]

  # GET /revenue_account5s
  def index
    @revenue_account5s = RevenueAccount5.all
  end

  # GET /revenue_account5s/1
  def show
  end

  # GET /revenue_account5s/new
  def new
    @revenue_account5 = RevenueAccount5.new
  end

def test
  ji = [:Amount]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1 = [:Transfer_of_Resources, :Amount, :Year]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = RevenueAccount5.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = RevenueAccount5.map(b,params[:year],rain_fall_type,views)
         else
          b = RevenueAccount5.map_search(params[:search],compare,year,rain_fall_type)
          a = RevenueAccount5.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = RevenueAccount5.search(params[:search],compare,year,rain_fall_type)
        a = RevenueAccount5.table(b,rain_fall_type,year,ji1,compare)
      else
        @RevenueAccount5s = RevenueAccount5.search(params[:search],compare,year,rain_fall_type)
        a = RevenueAccount5.query(@RevenueAccount5s,params[:year],rain_fall_type,views,ji,compare)
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
    RevenueAccount5.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /revenue_account5s/1/edit
  def edit
  end

  # POST /revenue_account5s
  def create
    @revenue_account5 = RevenueAccount5.new(revenue_account5_params)

    if @revenue_account5.save
      redirect_to @revenue_account5, notice: 'Revenue account5 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /revenue_account5s/1
  def update
    if @revenue_account5.update(revenue_account5_params)
      redirect_to @revenue_account5, notice: 'Revenue account5 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /revenue_account5s/1
  def destroy
    @revenue_account5.destroy
    redirect_to revenue_account5s_url, notice: 'Revenue account5 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_revenue_account5
      @revenue_account5 = RevenueAccount5.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def revenue_account5_params
      params.require(:revenue_account5).permit(:Transfer_of_Resources, :Amount, :Year)
    end
end
