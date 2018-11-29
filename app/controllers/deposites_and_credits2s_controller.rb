class DepositesAndCredits2sController < ApplicationController
  before_action :set_deposites_and_credits2, only: [:show, :edit, :update, :destroy]

  # GET /deposites_and_credits2s
  def index
    @deposites_and_credits2s = DepositesAndCredits2.all
  end

  # GET /deposites_and_credits2s/1
  def show
  end

  # GET /deposites_and_credits2s/new
  def new
    @deposites_and_credits2 = DepositesAndCredits2.new
  end

# def test
#   ji = [:state, :Year, :Deposit, :Credit, :CD_Ratio]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = DepositesAndCredits2.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = DepositesAndCredits2.map(b,params[:year],rain_fall_type,views)
#          else
#           b = DepositesAndCredits2.map_search(params[:search],compare,year,rain_fall_type)
#           a = DepositesAndCredits2.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = DepositesAndCredits2.search(params[:search],compare,year,rain_fall_type)
#         a = DepositesAndCredits2.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @DepositesAndCredits2s = DepositesAndCredits2.search(params[:search],compare,year,rain_fall_type)
#         a = DepositesAndCredits2.query(@DepositesAndCredits2s,params[:year],rain_fall_type,views,ji,compare)
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
  ji =  [:Deposit, :Credit, :CD_Ratio]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1 =  [:Year, :Deposit, :Credit, :CD_Ratio]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = DepositesAndCredits2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = DepositesAndCredits2.map(b,params[:year],rain_fall_type,views)
         else
          b = DepositesAndCredits2.map_search(params[:search],compare,year,rain_fall_type)
          a = DepositesAndCredits2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = DepositesAndCredits2.search(params[:search],compare,year,rain_fall_type)
        a = DepositesAndCredits2.table(b,rain_fall_type,year,ji1,compare)
      else
        @DepositesAndCredits2s = DepositesAndCredits2.search(params[:search],compare,year,rain_fall_type)
        a = DepositesAndCredits2.query(@DepositesAndCredits2s,params[:year],rain_fall_type,views,ji,compare)
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
    DepositesAndCredits2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /deposites_and_credits2s/1/edit
  def edit
  end

  # POST /deposites_and_credits2s
  def create
    @deposites_and_credits2 = DepositesAndCredits2.new(deposites_and_credits2_params)

    if @deposites_and_credits2.save
      redirect_to @deposites_and_credits2, notice: 'Deposites and credits2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /deposites_and_credits2s/1
  def update
    if @deposites_and_credits2.update(deposites_and_credits2_params)
      redirect_to @deposites_and_credits2, notice: 'Deposites and credits2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /deposites_and_credits2s/1
  def destroy
    @deposites_and_credits2.destroy
    redirect_to deposites_and_credits2s_url, notice: 'Deposites and credits2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deposites_and_credits2
      @deposites_and_credits2 = DepositesAndCredits2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def deposites_and_credits2_params
      params.require(:deposites_and_credits2).permit(:state, :Year, :Deposit, :Credit, :CD_Ratio)
    end
end
