class DebtManagement3sController < ApplicationController
  before_action :set_debt_management3, only: [:show, :edit, :update, :destroy]

  # GET /debt_management3s
  def index
    @debt_management3s = DebtManagement3.all
  end

  # GET /debt_management3s/1
  def show
  end

  # GET /debt_management3s/new
  def new
    @debt_management3 = DebtManagement3.new
  end

# def test
#   ji = [:Amounts]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]
#    search = params[:search]
# # ji1 = [:Public_Debt_Repayment_Liabilities, :Amounts, :Year]
# if year == "All"
#   ji1 = [:Public_Debt_Repayment_Liabilities, :"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17", :"2017-18_BE"]
# else
#   ji1 = [:Public_Debt_Repayment_Liabilities, :Amounts, :Year]
# end
#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = DebtManagement3.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = DebtManagement3.map(b,params[:year],rain_fall_type,views)
#          else
#           b = DebtManagement3.map_search(params[:search],compare,year,rain_fall_type)
#           a = DebtManagement3.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = DebtManagement3.search(params[:search],compare,year,rain_fall_type)
#         a = DebtManagement3.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @DebtManagement3s = DebtManagement3.search(params[:search],compare,year,rain_fall_type)
#         a = DebtManagement3.query(@DebtManagement3s,params[:year],rain_fall_type,views,ji,compare,search)
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
  ji = [:Amounts]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Public_Debt_Repayment_Liabilities"
   remove = "Bihar"

   if year == "All"
    ji1 = [:Public_Debt_Repayment_Liabilities, :"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17", :"2017-18_BE"]
   else
    if rain_fall_type != "All"
      ji1 = [:Public_Debt_Repayment_Liabilities, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:Public_Debt_Repayment_Liabilities, :Amounts, :Year]
    end
    
   end

  if rain_fall_type || views

    if views == "Map View"
      l =  rain_fall_type.gsub(" ","")           
       if rain_fall_type  ==  "All"
        b = DebtManagement3.map_search("All",compare,year,rain_fall_type)
        u = "Total"
        a = DebtManagement3.map(b,params[:year],rain_fall_type,views)
       else
        b = DebtManagement3.map_search(params[:search],compare,year,rain_fall_type)
        a = ResourceManagement12.map(b,rain_fall_type,year,ji)
       end
    elsif views == "Table"  
      b = DebtManagement3.search(params[:search],compare,year,rain_fall_type,legend)
      a = DebtManagement3.table(b,rain_fall_type,year,ji1,compare,legend)
    else
      @DebtManagement3 = DebtManagement3.search(params[:search],compare,year,rain_fall_type,legend)
      a = DebtManagement3.query(@DebtManagement3,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    DebtManagement3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /debt_management3s/1/edit
  def edit
  end

  # POST /debt_management3s
  def create
    @debt_management3 = DebtManagement3.new(debt_management3_params)

    if @debt_management3.save
      redirect_to @debt_management3, notice: 'Debt management3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /debt_management3s/1
  def update
    if @debt_management3.update(debt_management3_params)
      redirect_to @debt_management3, notice: 'Debt management3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /debt_management3s/1
  def destroy
    @debt_management3.destroy
    redirect_to debt_management3s_url, notice: 'Debt management3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_debt_management3
      @debt_management3 = DebtManagement3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def debt_management3_params
      params.require(:debt_management3).permit(:Public_Debt_Repayment_Liabilities, :Amounts, :Year)
    end
end
