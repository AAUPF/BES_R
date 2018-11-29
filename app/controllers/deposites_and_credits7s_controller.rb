class DepositesAndCredits7sController < ApplicationController
  before_action :set_deposites_and_credits7, only: [:show, :edit, :update, :destroy]

  # GET /deposites_and_credits7s
  def index
    @deposites_and_credits7s = DepositesAndCredits7.all
  end

  # GET /deposites_and_credits7s/1
  def show
  end

  # GET /deposites_and_credits7s/new
  def new
    @deposites_and_credits7 = DepositesAndCredits7.new
  end

# def test
#   ji = [:Banks, :Number_of_branches, :Deposit, :Advance, :CD_Ratio, :Indicator]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = DepositesAndCredits7.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = DepositesAndCredits7.map(b,params[:year],rain_fall_type,views)
#          else
#           b = DepositesAndCredits7.map_search(params[:search],compare,year,rain_fall_type)
#           a = DepositesAndCredits7.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = DepositesAndCredits7.search(params[:search],compare,year,rain_fall_type)
#         a = DepositesAndCredits7.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @DepositesAndCredits7s = DepositesAndCredits7.search(params[:search],compare,year,rain_fall_type)
#         a = DepositesAndCredits7.query(@DepositesAndCredits7s,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [ :Number_of_branches, :Deposit, :Advance, :CD_Ratio]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Banks"
   ji1 = [:Banks, :Number_of_branches, :Deposit, :Advance, :CD_Ratio, :Indicator]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = DepositesAndCredits7.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = DepositesAndCredits7.map(b,params[:year],rain_fall_type,views)
         else
          b = DepositesAndCredits7.map_search(params[:search],compare,year,rain_fall_type)
          a = DepositesAndCredits7.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = DepositesAndCredits7.search(params[:search],compare,year,rain_fall_type,legend)
        a = DepositesAndCredits7.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @DepositesAndCredits7s = DepositesAndCredits7.search(params[:search],compare,year,rain_fall_type,legend)
        a = DepositesAndCredits7.query(@DepositesAndCredits7s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    DepositesAndCredits7.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /deposites_and_credits7s/1/edit
  def edit
  end

  # POST /deposites_and_credits7s
  def create
    @deposites_and_credits7 = DepositesAndCredits7.new(deposites_and_credits7_params)

    if @deposites_and_credits7.save
      redirect_to @deposites_and_credits7, notice: 'Deposites and credits7 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /deposites_and_credits7s/1
  def update
    if @deposites_and_credits7.update(deposites_and_credits7_params)
      redirect_to @deposites_and_credits7, notice: 'Deposites and credits7 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /deposites_and_credits7s/1
  def destroy
    @deposites_and_credits7.destroy
    redirect_to deposites_and_credits7s_url, notice: 'Deposites and credits7 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deposites_and_credits7
      @deposites_and_credits7 = DepositesAndCredits7.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def deposites_and_credits7_params
      params.require(:deposites_and_credits7).permit(:Banks, :Number_of_branches, :Deposit, :Advance, :CD_Ratio, :Indicator)
    end
end
