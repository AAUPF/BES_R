class BankingInfrastructure6sController < ApplicationController
  before_action :set_banking_infrastructure6, only: [:show, :edit, :update, :destroy]

  # GET /banking_infrastructure6s
  def index
    @banking_infrastructure6s = BankingInfrastructure6.all
  end

  # GET /banking_infrastructure6s/1
  def show
  end

  # GET /banking_infrastructure6s/new
  def new
    @banking_infrastructure6 = BankingInfrastructure6.new
  end

# def test
#   ji = [:Shelters_Sanctioned_Planned, :Officers, :Clerks, :Sub_ordinates, :Total, :Number_of_Female_Employees, :Percentage_of_Officers, :Percentage_of_Clerks, :Percentage_of_Sub_ordinates, :Total_Percentage, :Percentage_of_Female_Employees]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = BankingInfrastructure6.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = BankingInfrastructure6.map(b,params[:year],rain_fall_type,views)
#          else
#           b = BankingInfrastructure6.map_search(params[:search],compare,year,rain_fall_type)
#           a = BankingInfrastructure6.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = BankingInfrastructure6.search(params[:search],compare,year,rain_fall_type)
#         a = BankingInfrastructure6.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @BankingInfrastructure6s = BankingInfrastructure6.search(params[:search],compare,year,rain_fall_type)
#         a = BankingInfrastructure6.query(@BankingInfrastructure6s,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [:Officers, :Clerks, :Sub_ordinates, :Total, :Number_of_Female_Employees, :Percentage_of_Officers, :Percentage_of_Clerks, :Percentage_of_Sub_ordinates, :Total_Percentage, :Percentage_of_Female_Employees]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

   ji1 = [:State,:Shelters_Sanctioned_Planned, :Officers, :Clerks, :Sub_ordinates, :Total, :Number_of_Female_Employees, :Percentage_of_Officers, :Percentage_of_Clerks, :Percentage_of_Sub_ordinates, :Total_Percentage, :Percentage_of_Female_Employees]
   legend = "State"
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = BankingInfrastructure6.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = BankingInfrastructure6.map(b,params[:year],rain_fall_type,views)
         else
          b = BankingInfrastructure6.map_search(params[:search],compare,year,rain_fall_type)
          a = BankingInfrastructure6.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = BankingInfrastructure6.search(params[:search],compare,year,rain_fall_type,legend)
        a = BankingInfrastructure6.table(b,rain_fall_type,year,ji1,compare)
      else
        @BankingInfrastructure6s = BankingInfrastructure6.search(params[:search],compare,year,rain_fall_type,legend)
        a = BankingInfrastructure6.query(@BankingInfrastructure6s,params[:year],rain_fall_type,views,ji,compare,legend)
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
    BankingInfrastructure6.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /banking_infrastructure6s/1/edit
  def edit
  end

  # POST /banking_infrastructure6s
  def create
    @banking_infrastructure6 = BankingInfrastructure6.new(banking_infrastructure6_params)

    if @banking_infrastructure6.save
      redirect_to @banking_infrastructure6, notice: 'Banking infrastructure6 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /banking_infrastructure6s/1
  def update
    if @banking_infrastructure6.update(banking_infrastructure6_params)
      redirect_to @banking_infrastructure6, notice: 'Banking infrastructure6 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /banking_infrastructure6s/1
  def destroy
    @banking_infrastructure6.destroy
    redirect_to banking_infrastructure6s_url, notice: 'Banking infrastructure6 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banking_infrastructure6
      @banking_infrastructure6 = BankingInfrastructure6.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def banking_infrastructure6_params
      params.require(:banking_infrastructure6).permit(:State,:Shelters_Sanctioned_Planned, :Officers, :Clerks, :Sub_ordinates, :Total, :Number_of_Female_Employees, :Percentage_of_Officers, :Percentage_of_Clerks, :Percentage_of_Sub_ordinates, :Total_Percentage, :Percentage_of_Female_Employees)
    end
end
