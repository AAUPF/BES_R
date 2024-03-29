class RevenueAccount3sController < ApplicationController
  before_action :set_revenue_account3, only: [:show, :edit, :update, :destroy]

  # GET /revenue_account3s
  def index
    @revenue_account3s = RevenueAccount3.all
  end

  # GET /revenue_account3s/1
  def show
  end

  # GET /revenue_account3s/new
  def new
    @revenue_account3 = RevenueAccount3.new
  end

# def test
#   ji = [:Amount]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]
#    search = params[:search]
# # ji1 = [:Interest_Payment_and_Receipt, :Amount, :Year]
# if year == "All"
#   ji1 = [:Interest_Payment_and_Receipt, :"2012-13", :"2013-14",:"2014-15",:"2015-16",:"2016-17",:"2017-18_BE"]
#  else
#   ji1 = [:Interest_Payment_and_Receipt, :Amount, :Year]
#  end
#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = RevenueAccount3.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = RevenueAccount3.map(b,params[:year],rain_fall_type,views)
#          else
#           b = RevenueAccount3.map_search(params[:search],compare,year,rain_fall_type)
#           a = RevenueAccount3.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = RevenueAccount3.search(params[:search],compare,year,rain_fall_type)
#         a = RevenueAccount3.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @RevenueAccount3s = RevenueAccount3.search(params[:search],compare,year,rain_fall_type)
#         a = RevenueAccount3.query(@RevenueAccount3s,params[:year],rain_fall_type,views,ji,compare,search)
#       end
#       respond_to do |format|
#         format.html { render json:a }
#     end

#   else
#     respond_to do |format|
#       format.html { render json: "error"}
#   end
#   end

# end



def test
  ji = [:Amount]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Interest_Payment_and_Receipt"
   remove = "Bihar"

   if year == "All"
    ji1 = [:Interest_Payment_and_Receipt, :"2012-13", :"2013-14",:"2014-15",:"2015-16",:"2016-17",:"2017-18_BE"]
   else
    if rain_fall_type != "All"
      ji1 = [:Interest_Payment_and_Receipt, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:Interest_Payment_and_Receipt, :Amount, :Year]
    end
    
   end

  if rain_fall_type || views

    if views == "Map View"
      l =  rain_fall_type.gsub(" ","")           
       if rain_fall_type  ==  "All"
        b = RevenueAccount3.map_search("All",compare,year,rain_fall_type)
        u = "Total"
        a = RevenueAccount3.map(b,params[:year],rain_fall_type,views)
       else
        b = RevenueAccount3.map_search(params[:search],compare,year,rain_fall_type)
        a = RevenueAccount3.map(b,rain_fall_type,year,ji)
       end
    elsif views == "Table"  
      b = RevenueAccount3.search(params[:search],compare,year,rain_fall_type,legend)
      a = RevenueAccount3.table(b,rain_fall_type,year,ji1,compare,legend)
    else
      @RevenueAccount3 = RevenueAccount3.search(params[:search],compare,year,rain_fall_type,legend)
      a = RevenueAccount3.query(@RevenueAccount3,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    RevenueAccount3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /revenue_account3s/1/edit
  def edit
  end

  # POST /revenue_account3s
  def create
    @revenue_account3 = RevenueAccount3.new(revenue_account3_params)

    if @revenue_account3.save
      redirect_to @revenue_account3, notice: 'Revenue account3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /revenue_account3s/1
  def update
    if @revenue_account3.update(revenue_account3_params)
      redirect_to @revenue_account3, notice: 'Revenue account3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /revenue_account3s/1
  def destroy
    @revenue_account3.destroy
    redirect_to revenue_account3s_url, notice: 'Revenue account3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_revenue_account3
      @revenue_account3 = RevenueAccount3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def revenue_account3_params
      params.require(:revenue_account3).permit(:Interest_Payment_and_Receipt, :Amount, :Year)
    end
end
