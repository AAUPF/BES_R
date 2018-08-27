class RevenueAccount1sController < ApplicationController
  before_action :set_revenue_account1, only: [:show, :edit, :update, :destroy]

  # GET /revenue_account1s
  def index
    @revenue_account1s = RevenueAccount1.all
  end

  # GET /revenue_account1s/1
  def show
  end

  # GET /revenue_account1s/new
  def new
    @revenue_account1 = RevenueAccount1.new
  end

def test
  ji = [:Amount]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1 = [:Sector, :"2012-13", :"2013-14",:"2014-15",:"2015-16",:"2016-17",:"2017-18_BE"]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = RevenueAccount1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = RevenueAccount1.map(b,params[:year],rain_fall_type,views)
         else
          b = RevenueAccount1.map_search(params[:search],compare,year,rain_fall_type)
          a = RevenueAccount1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = RevenueAccount1.search(params[:search],compare,year,rain_fall_type)
        a = RevenueAccount1.table(b,rain_fall_type,year,ji1,compare)
      else
        @RevenueAccount1s = RevenueAccount1.search(params[:search],compare,year,rain_fall_type)
        a = RevenueAccount1.query(@RevenueAccount1s,params[:year],rain_fall_type,views,ji,compare)
      end

      # group = b.group_by{|data| data[:Revenue_Account]}
      # du = []

      # @hash = {}
      # group.map do |i|
      #   i[1].map do |i|
      #     puts  "#{i.Year}" => i.Year

      #     @hash["#{i.Year}"] = i.Year
      #    end
      #    @hash["Sector"]  =i[0]
     
      # du.push(@hash)
      # end
     
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
    RevenueAccount1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /revenue_account1s/1/edit
  def edit
  end

  # POST /revenue_account1s
  def create
    @revenue_account1 = RevenueAccount1.new(revenue_account1_params)

    if @revenue_account1.save
      redirect_to @revenue_account1, notice: 'Revenue account1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /revenue_account1s/1
  def update
    if @revenue_account1.update(revenue_account1_params)
      redirect_to @revenue_account1, notice: 'Revenue account1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /revenue_account1s/1
  def destroy
    @revenue_account1.destroy
    redirect_to revenue_account1s_url, notice: 'Revenue account1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_revenue_account1
      @revenue_account1 = RevenueAccount1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def revenue_account1_params
      params.require(:revenue_account1).permit(:Revenue_Account, :Amount, :Year)
    end
end
