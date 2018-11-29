class BankingInfrastructure1sController < ApplicationController
  before_action :set_banking_infrastructure1, only: [:show, :edit, :update, :destroy]

  # GET /banking_infrastructure1s
  def index
    @banking_infrastructure1s = BankingInfrastructure1.all
  end

  # GET /banking_infrastructure1s/1
  def show
  end

  # GET /banking_infrastructure1s/new
  def new
    @banking_infrastructure1 = BankingInfrastructure1.new
  end

def test
  ji = [:Growth_Rate, :Percentage_distribution_of_Rural_branches, :Percentage_distribution_of_Semiurban_Branches, :Percentage_distribution_of_Urban_branches]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Years_End_March"
   ji1 = [:Years_End_March, :Total, :Growth_Rate, :Percentage_distribution_of_Rural_branches, :Percentage_distribution_of_Semiurban_Branches, :Percentage_distribution_of_Urban_branches]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = BankingInfrastructure1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = BankingInfrastructure1.map(b,params[:year],rain_fall_type,views)
         else
          b = BankingInfrastructure1.map_search(params[:search],compare,year,rain_fall_type)
          a = BankingInfrastructure1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = BankingInfrastructure1.search(params[:search],compare,year,rain_fall_type,legend)
        a = BankingInfrastructure1.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @BankingInfrastructure1s = BankingInfrastructure1.search(params[:search],compare,year,rain_fall_type,legend)
        a = BankingInfrastructure1.query(@BankingInfrastructure1s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    BankingInfrastructure1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /banking_infrastructure1s/1/edit
  def edit
  end

  # POST /banking_infrastructure1s
  def create
    @banking_infrastructure1 = BankingInfrastructure1.new(banking_infrastructure1_params)

    if @banking_infrastructure1.save
      redirect_to @banking_infrastructure1, notice: 'Banking infrastructure1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /banking_infrastructure1s/1
  def update
    if @banking_infrastructure1.update(banking_infrastructure1_params)
      redirect_to @banking_infrastructure1, notice: 'Banking infrastructure1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /banking_infrastructure1s/1
  def destroy
    @banking_infrastructure1.destroy
    redirect_to banking_infrastructure1s_url, notice: 'Banking infrastructure1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banking_infrastructure1
      @banking_infrastructure1 = BankingInfrastructure1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def banking_infrastructure1_params
      params.require(:banking_infrastructure1).permit(:Years_End_March, :Total, :Growth_Rate, :Percentage_distribution_of_Rural_branches, :Percentage_distribution_of_Semiurban_Branches, :Percentage_distribution_of_Urban_branches)
    end
end
