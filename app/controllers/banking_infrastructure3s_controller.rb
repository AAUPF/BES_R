class BankingInfrastructure3sController < ApplicationController
  before_action :set_banking_infrastructure3, only: [:show, :edit, :update, :destroy]

  # GET /banking_infrastructure3s
  def index
    @banking_infrastructure3s = BankingInfrastructure3.all
  end

  # GET /banking_infrastructure3s/1
  def show
  end

  # GET /banking_infrastructure3s/new
  def new
    @banking_infrastructure3 = BankingInfrastructure3.new
  end

def test
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "State"
   remove = "India"
   ji = [ :State_Cooperative_Banks, :District_Central_Cooperative_Banks, :Total]
   if year == "All"
    ji1 = [:State,:"2014",:"2015",:"2016"]
   else
    if rain_fall_type != "All"
      ji1 = [:State, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:State, :State_Cooperative_Banks, :District_Central_Cooperative_Banks, :Total, :Year]
    end
   end


   if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = BankingInfrastructure3.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = BankingInfrastructure3.map(b,params[:year],rain_fall_type,views)
         else
          b = BankingInfrastructure3.map_search(params[:search],compare,year,rain_fall_type)
          a = BankingInfrastructure3.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = BankingInfrastructure3.search(params[:search],compare,year,rain_fall_type,legend)
        a = BankingInfrastructure3.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @BankingInfrastructure3s = BankingInfrastructure3.search(params[:search],compare,year,rain_fall_type,legend)
        a = BankingInfrastructure3.query(@BankingInfrastructure3s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    BankingInfrastructure3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /banking_infrastructure3s/1/edit
  def edit
  end

  # POST /banking_infrastructure3s
  def create
    @banking_infrastructure3 = BankingInfrastructure3.new(banking_infrastructure3_params)

    if @banking_infrastructure3.save
      redirect_to @banking_infrastructure3, notice: 'Banking infrastructure3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /banking_infrastructure3s/1
  def update
    if @banking_infrastructure3.update(banking_infrastructure3_params)
      redirect_to @banking_infrastructure3, notice: 'Banking infrastructure3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /banking_infrastructure3s/1
  def destroy
    @banking_infrastructure3.destroy
    redirect_to banking_infrastructure3s_url, notice: 'Banking infrastructure3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banking_infrastructure3
      @banking_infrastructure3 = BankingInfrastructure3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def banking_infrastructure3_params
      params.require(:banking_infrastructure3).permit(:State, :State_Cooperative_Banks, :District_Central_Cooperative_Banks, :Total, :Year)
    end
end
