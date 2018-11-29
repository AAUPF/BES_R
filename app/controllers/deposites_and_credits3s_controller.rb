class DepositesAndCredits3sController < ApplicationController
  before_action :set_deposites_and_credits3, only: [:show, :edit, :update, :destroy]

  # GET /deposites_and_credits3s
  def index
    @deposites_and_credits3s = DepositesAndCredits3.all
  end

  # GET /deposites_and_credits3s/1
  def show
  end

  # GET /deposites_and_credits3s/new
  def new
    @deposites_and_credits3 = DepositesAndCredits3.new
  end

# def test
#   ji = [:Indicator, :Area, :Deposits, :Credits, :CD_Ratio, :Investment, :ICD_Ratio]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = DepositesAndCredits3.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = DepositesAndCredits3.map(b,params[:year],rain_fall_type,views)
#          else
#           b = DepositesAndCredits3.map_search(params[:search],compare,year,rain_fall_type)
#           a = DepositesAndCredits3.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = DepositesAndCredits3.search(params[:search],compare,year,rain_fall_type)
#         a = DepositesAndCredits3.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @DepositesAndCredits3s = DepositesAndCredits3.search(params[:search],compare,year,rain_fall_type)
#         a = DepositesAndCredits3.query(@DepositesAndCredits3s,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [:Deposits, :Credits, :CD_Ratio, :Investment, :ICD_Ratio]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Area"
   ji1 = [:Indicator, :Area, :Deposits, :Credits, :CD_Ratio, :Investment, :ICD_Ratio]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = DepositesAndCredits3.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = DepositesAndCredits3.map(b,params[:year],rain_fall_type,views)
         else
          b = DepositesAndCredits3.map_search(params[:search],compare,year,rain_fall_type)
          a = DepositesAndCredits3.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = DepositesAndCredits3.search(params[:search],compare,year,rain_fall_type,legend)
        a = DepositesAndCredits3.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @DepositesAndCredits3s = DepositesAndCredits3.search(params[:search],compare,year,rain_fall_type,legend)
        a = DepositesAndCredits3.query(@DepositesAndCredits3s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    DepositesAndCredits3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /deposites_and_credits3s/1/edit
  def edit
  end

  # POST /deposites_and_credits3s
  def create
    @deposites_and_credits3 = DepositesAndCredits3.new(deposites_and_credits3_params)

    if @deposites_and_credits3.save
      redirect_to @deposites_and_credits3, notice: 'Deposites and credits3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /deposites_and_credits3s/1
  def update
    if @deposites_and_credits3.update(deposites_and_credits3_params)
      redirect_to @deposites_and_credits3, notice: 'Deposites and credits3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /deposites_and_credits3s/1
  def destroy
    @deposites_and_credits3.destroy
    redirect_to deposites_and_credits3s_url, notice: 'Deposites and credits3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deposites_and_credits3
      @deposites_and_credits3 = DepositesAndCredits3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def deposites_and_credits3_params
      params.require(:deposites_and_credits3).permit(:Indicator, :Area, :Deposits, :Credits, :CD_Ratio, :Investment, :ICD_Ratio)
    end
end
