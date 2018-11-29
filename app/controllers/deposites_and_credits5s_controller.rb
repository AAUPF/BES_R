class DepositesAndCredits5sController < ApplicationController
  before_action :set_deposites_and_credits5, only: [:show, :edit, :update, :destroy]

  # GET /deposites_and_credits5s
  def index
    @deposites_and_credits5s = DepositesAndCredits5.all
  end

  # GET /deposites_and_credits5s/1
  def show
  end

  # GET /deposites_and_credits5s/new
  def new
    @deposites_and_credits5 = DepositesAndCredits5.new
  end

# def test
#   ji = [:District, :CD_Ratio, :Year]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = DepositesAndCredits5.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = DepositesAndCredits5.map(b,params[:year],rain_fall_type,views)
#          else
#           b = DepositesAndCredits5.map_search(params[:search],compare,year,rain_fall_type)
#           a = DepositesAndCredits5.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = DepositesAndCredits5.search(params[:search],compare,year,rain_fall_type)
#         a = DepositesAndCredits5.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @DepositesAndCredits5s = DepositesAndCredits5.search(params[:search],compare,year,rain_fall_type)
#         a = DepositesAndCredits5.query(@DepositesAndCredits5s,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [:CD_Ratio]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
# ji1 = [:Districts, :Per_Capita_GDP, :Year]
if year == "All"
  ji1 = [:Districts, :"2016-17 ", :"2017-18_Upto_Sep_17"]
else
  ji1 = [:Districts, :CD_Ratio, :Year]
end
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = DepositesAndCredits5.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = DepositesAndCredits5.map(b,params[:year],rain_fall_type,views)
         else
          b = DepositesAndCredits5.map_search(params[:search],compare,year,rain_fall_type)
          a = DepositesAndCredits5.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = DepositesAndCredits5.search(params[:search],compare,year,rain_fall_type)
        a = DepositesAndCredits5.table(b,rain_fall_type,year,ji1,compare)
      else
        @DepositesAndCredits5s = DepositesAndCredits5.search(params[:search],compare,year,rain_fall_type)
        a = DepositesAndCredits5.query(@DepositesAndCredits5s,params[:year],rain_fall_type,views,ji,compare,search)
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
    DepositesAndCredits5.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /deposites_and_credits5s/1/edit
  def edit
  end

  # POST /deposites_and_credits5s
  def create
    @deposites_and_credits5 = DepositesAndCredits5.new(deposites_and_credits5_params)

    if @deposites_and_credits5.save
      redirect_to @deposites_and_credits5, notice: 'Deposites and credits5 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /deposites_and_credits5s/1
  def update
    if @deposites_and_credits5.update(deposites_and_credits5_params)
      redirect_to @deposites_and_credits5, notice: 'Deposites and credits5 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /deposites_and_credits5s/1
  def destroy
    @deposites_and_credits5.destroy
    redirect_to deposites_and_credits5s_url, notice: 'Deposites and credits5 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deposites_and_credits5
      @deposites_and_credits5 = DepositesAndCredits5.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def deposites_and_credits5_params
      params.require(:deposites_and_credits5).permit(:District, :CD_Ratio, :Year)
    end
end
