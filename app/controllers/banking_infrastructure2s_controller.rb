class BankingInfrastructure2sController < ApplicationController
  before_action :set_banking_infrastructure2, only: [:show, :edit, :update, :destroy]

  # GET /banking_infrastructure2s
  def index
    @banking_infrastructure2s = BankingInfrastructure2.all
  end

  # GET /banking_infrastructure2s/1
  def show
  end

  # GET /banking_infrastructure2s/new
  def new
    @banking_infrastructure2 = BankingInfrastructure2.new
  end

# def test
#   ji = [:States, :Number_of_Branches, :Percentage_share_in_all_India_branches, :Percentage_share_in_all_India_population]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = BankingInfrastructure2.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = BankingInfrastructure2.map(b,params[:year],rain_fall_type,views)
#          else
#           b = BankingInfrastructure2.map_search(params[:search],compare,year,rain_fall_type)
#           a = BankingInfrastructure2.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = BankingInfrastructure2.search(params[:search],compare,year,rain_fall_type)
#         a = BankingInfrastructure2.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @BankingInfrastructure2s = BankingInfrastructure2.search(params[:search],compare,year,rain_fall_type)
#         a = BankingInfrastructure2.query(@BankingInfrastructure2s,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [ :Number_of_Branches, :Percentage_share_in_all_India_branches, :Percentage_share_in_all_India_population]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

   ji1 = [:States, :Number_of_Branches, :Percentage_share_in_all_India_branches, :Percentage_share_in_all_India_population]

   legend = "States"
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = BankingInfrastructure2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = BankingInfrastructure2.map(b,params[:year],rain_fall_type,views)
         else
          b = BankingInfrastructure2.map_search(params[:search],compare,year,rain_fall_type)
          a = BankingInfrastructure2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = BankingInfrastructure2.search(params[:search],compare,year,rain_fall_type,legend)
        a = BankingInfrastructure2.table(b,rain_fall_type,year,ji1,compare)
      else
        @BankingInfrastructure2s = BankingInfrastructure2.search(params[:search],compare,year,rain_fall_type,legend)
        a = BankingInfrastructure2.query(@BankingInfrastructure2s,params[:year],rain_fall_type,views,ji,compare,legend)
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
    BankingInfrastructure2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /banking_infrastructure2s/1/edit
  def edit
  end

  # POST /banking_infrastructure2s
  def create
    @banking_infrastructure2 = BankingInfrastructure2.new(banking_infrastructure2_params)

    if @banking_infrastructure2.save
      redirect_to @banking_infrastructure2, notice: 'Banking infrastructure2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /banking_infrastructure2s/1
  def update
    if @banking_infrastructure2.update(banking_infrastructure2_params)
      redirect_to @banking_infrastructure2, notice: 'Banking infrastructure2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /banking_infrastructure2s/1
  def destroy
    @banking_infrastructure2.destroy
    redirect_to banking_infrastructure2s_url, notice: 'Banking infrastructure2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banking_infrastructure2
      @banking_infrastructure2 = BankingInfrastructure2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def banking_infrastructure2_params
      params.require(:banking_infrastructure2).permit(:States, :Number_of_Branches, :Percentage_share_in_all_India_branches, :Percentage_share_in_all_India_population)
    end
end
