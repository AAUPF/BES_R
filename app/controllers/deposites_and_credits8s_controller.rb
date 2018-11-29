class DepositesAndCredits8sController < ApplicationController
  before_action :set_deposites_and_credits8, only: [:show, :edit, :update, :destroy]

  # GET /deposites_and_credits8s
  def index
    @deposites_and_credits8s = DepositesAndCredits8.all

    respond_to do |format|
      format.html { render json:  @deposites_and_credits8s}
  end
  end

  # GET /deposites_and_credits8s/1
  def show
  end

  # GET /deposites_and_credits8s/new
  def new
    @deposites_and_credits8 = DepositesAndCredits8.new
  end

# def test
#   ji = [:Sector, :'2014-15', :'2015-16', :'2016-17', :'2017_18_Sep_17', :Indicator]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = DepositesAndCredits8.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = DepositesAndCredits8.map(b,params[:year],rain_fall_type,views)
#          else
#           b = DepositesAndCredits8.map_search(params[:search],compare,year,rain_fall_type)
#           a = DepositesAndCredits8.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = DepositesAndCredits8.search(params[:search],compare,year,rain_fall_type)
#         a = DepositesAndCredits8.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @DepositesAndCredits8s = DepositesAndCredits8.search(params[:search],compare,year,rain_fall_type)
#         a = DepositesAndCredits8.query(@DepositesAndCredits8s,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [:Sector, :'2014-15', :'2015-16', :'2016-17', :'2017_18_Sep_17', :Indicator]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   jip = [:'2014-15', :'2015-16', :'2016-17', :'2017_18_Sep_17']


   data = [
    "Madhya Bihar KGB",
"Bihar KGB",
"Uttar Bihar KGB",
"All RRBs",
  ]
  legend = "RRBs"

search = rain_fall_type

   ji1 = [:Sector, :'2014-15', :'2015-16', :'2016-17', :'2017_18_Sep_17', :Indicator]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = DepositesAndCredits8.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = DepositesAndCredits8.map(b,params[:year],rain_fall_type,views)
         else
          b = DepositesAndCredits8.map_search(params[:search],compare,year,rain_fall_type)
          a = DepositesAndCredits8.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = DepositesAndCredits8.search(params[:search],compare,year,rain_fall_type)
        a = DepositesAndCredits8.new_table(b,rain_fall_type,year,ji1,compare, search, data,legend)
      else
        @DepositesAndCredits8s = DepositesAndCredits8.search(params[:search],compare,year,rain_fall_type)
        a = DepositesAndCredits8.query(@DepositesAndCredits8s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    DepositesAndCredits8.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /deposites_and_credits8s/1/edit
  def edit
  end

  # POST /deposites_and_credits8s
  def create
    @deposites_and_credits8 = DepositesAndCredits8.new(deposites_and_credits8_params)

    if @deposites_and_credits8.save
      redirect_to @deposites_and_credits8, notice: 'Deposites and credits8 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /deposites_and_credits8s/1
  def update
    if @deposites_and_credits8.update(deposites_and_credits8_params)
      redirect_to @deposites_and_credits8, notice: 'Deposites and credits8 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /deposites_and_credits8s/1
  def destroy
    @deposites_and_credits8.destroy
    redirect_to deposites_and_credits8s_url, notice: 'Deposites and credits8 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deposites_and_credits8
      @deposites_and_credits8 = DepositesAndCredits8.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def deposites_and_credits8_params
      params.require(:deposites_and_credits8).permit(:Sector, :'2014-15', :'2015-16', :'2016-17', :'2017_18_Sep_17', :Indicator)
    end
end
