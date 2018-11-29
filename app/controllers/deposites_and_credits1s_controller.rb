class DepositesAndCredits1sController < ApplicationController
  before_action :set_deposites_and_credits1, only: [:show, :edit, :update, :destroy]

  # GET /deposites_and_credits1s
  def index
    @deposites_and_credits1s = DepositesAndCredits1.all
    respond_to do |format|
      format.html { render json: @deposites_and_credits1s}
  end
  end

  # GET /deposites_and_credits1s/1
  def show
  end

  # GET /deposites_and_credits1s/new
  def new
    @deposites_and_credits1 = DepositesAndCredits1.new
  end

# def test
#   ji = [:Sector, :'2014-15', :'2015-16', :Indicator]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = DepositesAndCredits1.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = DepositesAndCredits1.map(b,params[:year],rain_fall_type,views)
#          else
#           b = DepositesAndCredits1.map_search(params[:search],compare,year,rain_fall_type)
#           a = DepositesAndCredits1.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = DepositesAndCredits1.search(params[:search],compare,year,rain_fall_type)
#         a = DepositesAndCredits1.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @DepositesAndCredits1s = DepositesAndCredits1.search(params[:search],compare,year,rain_fall_type)
#         a = DepositesAndCredits1.query(@DepositesAndCredits1s,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [:Sector, :'2014-15', :'2015-16', :Indicator]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   jip = [:'2014-15', :'2015-16']

   data = [
    "AndhraPradesh",
    "Bihar",
    "Gujarat",
    "Haryana",
    "HimachalPradesh",
    "Jharkhand",
    "Karnataka",
    "Kerala",
    "MadhyaPradesh",
    "Maharashtra",
    "Odisha",
    "Punjab",
    "Rajasthan",
    "TamilNadu",
    "UttarPradesh",
    "WestBengal",
    "India",
  ]
  legend = "State"

search = rain_fall_type

   ji1 = [:Sector, :'2014-15', :'2015-16', :Indicator]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = DepositesAndCredits1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = DepositesAndCredits1.map(b,params[:year],rain_fall_type,views)
         else
          b = DepositesAndCredits1.map_search(params[:search],compare,year,rain_fall_type)
          a = DepositesAndCredits1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = DepositesAndCredits1.search(params[:search],compare,year,rain_fall_type)
        a = DepositesAndCredits1.new_table(b,rain_fall_type,year,ji1,compare, search, data,legend)
      else
        @DepositesAndCredits1s = DepositesAndCredits1.search(params[:search],compare,year,rain_fall_type)
        a = DepositesAndCredits1.query(@DepositesAndCredits1s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    DepositesAndCredits1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /deposites_and_credits1s/1/edit
  def edit
  end

  # POST /deposites_and_credits1s
  def create
    @deposites_and_credits1 = DepositesAndCredits1.new(deposites_and_credits1_params)

    if @deposites_and_credits1.save
      redirect_to @deposites_and_credits1, notice: 'Deposites and credits1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /deposites_and_credits1s/1
  def update
    if @deposites_and_credits1.update(deposites_and_credits1_params)
      redirect_to @deposites_and_credits1, notice: 'Deposites and credits1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /deposites_and_credits1s/1
  def destroy
    @deposites_and_credits1.destroy
    redirect_to deposites_and_credits1s_url, notice: 'Deposites and credits1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deposites_and_credits1
      @deposites_and_credits1 = DepositesAndCredits1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def deposites_and_credits1_params
      params.require(:deposites_and_credits1).permit(:Sector, :'2014-15', :'2015-16', :Indicator)
    end
end
