class BankingInfrastructure5sController < ApplicationController
  before_action :set_banking_infrastructure5, only: [:show, :edit, :update, :destroy]

  # GET /banking_infrastructure5s
  def index
    @banking_infrastructure5s = BankingInfrastructure5.all
  end

  # GET /banking_infrastructure5s/1
  def show
  end

  # GET /banking_infrastructure5s/new
  def new
    @banking_infrastructure5 = BankingInfrastructure5.new
  end

# def test
#   ji = [:State, :No_of_Branches, :No_of_Current_Accounts, :Current_Amount, :No_of_Savings_Accounts, :Savings_Amount, :No_of_Term_Accounts, :Term_Amount, :No_of_Total_Accounts, :Total_Amount]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = BankingInfrastructure5.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = BankingInfrastructure5.map(b,params[:year],rain_fall_type,views)
#          else
#           b = BankingInfrastructure5.map_search(params[:search],compare,year,rain_fall_type)
#           a = BankingInfrastructure5.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = BankingInfrastructure5.search(params[:search],compare,year,rain_fall_type)
#         a = BankingInfrastructure5.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @BankingInfrastructure5s = BankingInfrastructure5.search(params[:search],compare,year,rain_fall_type)
#         a = BankingInfrastructure5.query(@BankingInfrastructure5s,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [:No_of_Branches, :No_of_Current_Accounts, :Current_Amount, :No_of_Savings_Accounts, :Savings_Amount, :No_of_Term_Accounts, :Term_Amount]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]


   ji1 = [:Districts, :No_of_Branches, :No_of_Current_Accounts, :Current_Amount, :No_of_Savings_Accounts, :Savings_Amount, :No_of_Term_Accounts, :Term_Amount, :No_of_Total_Accounts, :Total_Amount]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = BankingInfrastructure5.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = BankingInfrastructure5.map(b,params[:year],rain_fall_type,views)
         else
          b = BankingInfrastructure5.map_search(params[:search],compare,year,rain_fall_type)
          a = BankingInfrastructure5.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = BankingInfrastructure5.search(params[:search],compare,year,rain_fall_type)
        a = BankingInfrastructure5.table(b,rain_fall_type,year,ji1,compare)
      else
        @BankingInfrastructure5s = BankingInfrastructure5.search(params[:search],compare,year,rain_fall_type)
        a = BankingInfrastructure5.query(@BankingInfrastructure5s,params[:year],rain_fall_type,views,ji,compare,search)
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
    BankingInfrastructure5.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /banking_infrastructure5s/1/edit
  def edit
  end

  # POST /banking_infrastructure5s
  def create
    @banking_infrastructure5 = BankingInfrastructure5.new(banking_infrastructure5_params)

    if @banking_infrastructure5.save
      redirect_to @banking_infrastructure5, notice: 'Banking infrastructure5 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /banking_infrastructure5s/1
  def update
    if @banking_infrastructure5.update(banking_infrastructure5_params)
      redirect_to @banking_infrastructure5, notice: 'Banking infrastructure5 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /banking_infrastructure5s/1
  def destroy
    @banking_infrastructure5.destroy
    redirect_to banking_infrastructure5s_url, notice: 'Banking infrastructure5 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banking_infrastructure5
      @banking_infrastructure5 = BankingInfrastructure5.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def banking_infrastructure5_params
      params.require(:banking_infrastructure5).permit(:State, :No_of_Branches, :No_of_Current_Accounts, :Current_Amount, :No_of_Savings_Accounts, :Savings_Amount, :No_of_Term_Accounts, :Term_Amount, :No_of_Total_Accounts, :Total_Amount)
    end
end
