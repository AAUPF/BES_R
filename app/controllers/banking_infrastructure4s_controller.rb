class BankingInfrastructure4sController < ApplicationController
  before_action :set_banking_infrastructure4, only: [:show, :edit, :update, :destroy]

  # GET /banking_infrastructure4s
  def index
    @banking_infrastructure4s = BankingInfrastructure4.all
  end

  # GET /banking_infrastructure4s/1
  def show
  end

  # GET /banking_infrastructure4s/new
  def new
    @banking_infrastructure4 = BankingInfrastructure4.new
  end

# def test
#   ji = [:RRB_Branch, :Rural, :Semi_Urban, :Urban, :Total]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = BankingInfrastructure4.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = BankingInfrastructure4.map(b,params[:year],rain_fall_type,views)
#          else
#           b = BankingInfrastructure4.map_search(params[:search],compare,year,rain_fall_type)
#           a = BankingInfrastructure4.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = BankingInfrastructure4.search(params[:search],compare,year,rain_fall_type)
#         a = BankingInfrastructure4.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @BankingInfrastructure4s = BankingInfrastructure4.search(params[:search],compare,year,rain_fall_type)
#         a = BankingInfrastructure4.query(@BankingInfrastructure4s,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [:Rural, :Semi_Urban, :Urban]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "RRB_Branch"
   ji1 = [:RRB_Branch, :Rural, :Semi_Urban, :Urban, :Total]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = BankingInfrastructure4.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = BankingInfrastructure4.map(b,params[:year],rain_fall_type,views)
         else
          b = BankingInfrastructure4.map_search(params[:search],compare,year,rain_fall_type)
          a = BankingInfrastructure4.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = BankingInfrastructure4.search(params[:search],compare,year,rain_fall_type,legend)
        a = BankingInfrastructure4.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @BankingInfrastructure4s = BankingInfrastructure4.search(params[:search],compare,year,rain_fall_type,legend)
        a = BankingInfrastructure4.query(@BankingInfrastructure4s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    BankingInfrastructure4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /banking_infrastructure4s/1/edit
  def edit
  end

  # POST /banking_infrastructure4s
  def create
    @banking_infrastructure4 = BankingInfrastructure4.new(banking_infrastructure4_params)

    if @banking_infrastructure4.save
      redirect_to @banking_infrastructure4, notice: 'Banking infrastructure4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /banking_infrastructure4s/1
  def update
    if @banking_infrastructure4.update(banking_infrastructure4_params)
      redirect_to @banking_infrastructure4, notice: 'Banking infrastructure4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /banking_infrastructure4s/1
  def destroy
    @banking_infrastructure4.destroy
    redirect_to banking_infrastructure4s_url, notice: 'Banking infrastructure4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banking_infrastructure4
      @banking_infrastructure4 = BankingInfrastructure4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def banking_infrastructure4_params
      params.require(:banking_infrastructure4).permit(:RRB_Branch, :Rural, :Semi_Urban, :Urban, :Total)
    end
end
