class DepositesAndCredits6sController < ApplicationController
  before_action :set_deposites_and_credits6, only: [:show, :edit, :update, :destroy]

  # GET /deposites_and_credits6s
  def index
    @deposites_and_credits6s = DepositesAndCredits6.all

    respond_to do |format|
      format.html { render json: @deposites_and_credits6s}
  end
  end

  # GET /deposites_and_credits6s/1
  def show
  end

  # GET /deposites_and_credits6s/new
  def new
    @deposites_and_credits6 = DepositesAndCredits6.new
  end

# def test
#   ji = [:Sector, :Number_of_Branches, :'2013-14', :'2014-15', :'2015-16', :'2016-17', :'2017_18_upto_Sep_2017', :Indicator]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = DepositesAndCredits6.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = DepositesAndCredits6.map(b,params[:year],rain_fall_type,views)
#          else
#           b = DepositesAndCredits6.map_search(params[:search],compare,year,rain_fall_type)
#           a = DepositesAndCredits6.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = DepositesAndCredits6.search(params[:search],compare,year,rain_fall_type)
#         a = DepositesAndCredits6.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @DepositesAndCredits6s = DepositesAndCredits6.search(params[:search],compare,year,rain_fall_type)
#         a = DepositesAndCredits6.query(@DepositesAndCredits6s,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [:'2013-14', :'2014-15', :'2015-16', :'2016-17', :'2017_18_upto_Sep_2017']
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

   search = params[:search]

   jip = [:'2013-14', :'2014-15', :'2015-16', :'2016-17', :'2017_18_upto_Sep_2017']

   compare = "None"



   if search === "Lead Banks"

  data = [
    "State Bank of India",
"Central Bank of India",
"Punjab National Bank",
"Canara bank",
"UCO Bank",
"Bank of Baroda",
"Union Bank of India",

  ]     
   elsif search == "Revenue Income"

      data = [
        "State Bank of India",
        "Central Bank of India",
        "Punjab National Bank",
        "Canara bank",
        "UCO Bank",
        "Bank of Baroda",
        "Union Bank of India",
        "Bank of India",
        "Allahabad Bank",
        "Andhra Bank",
        "Bank of Maharashtra",
        "Corporation Bank",
        "Dena Bank",
        "Indian Bank",
        "Indian Overseas bank",
        "Oriental Bank of Commerce",
        "Punjab and Sind Bank",
        "Syndicate Bank",
        "United Bank of India",
        "Vijaya Bank",
        "All Banks ",
  ]
     
   else

      data = [
        "Bank of India",
        "Allahabad Bank",
        "Andhra Bank",
        "Bank of Maharashtra",
        "Corporation Bank",
        "Dena Bank",
        "Indian Bank",
        "Indian Overseas bank",
        "Oriental Bank of Commerce",
        "Punjab and Sind Bank",
        "Syndicate Bank",
        "United Bank of India",
        "Vijaya Bank",
        "All Banks ",
  ]
     
   end




  
  legend = "Indicators"

search = rain_fall_type

   ji1 = [:Sector, :Number_of_Branches, :'2013-14', :'2014-15', :'2015-16', :'2016-17', :'2017_18_upto_Sep_2017', :Indicator]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = DepositesAndCredits6.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = DepositesAndCredits6.map(b,params[:year],rain_fall_type,views)
         else
          b = DepositesAndCredits6.map_search(params[:search],compare,year,rain_fall_type)
          a = DepositesAndCredits6.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = DepositesAndCredits6.search(params[:search],compare,year,rain_fall_type)
        a = DepositesAndCredits6.new_table(b,rain_fall_type,year,ji1,compare, search, data,legend)
      else
        @DepositesAndCredits6s = DepositesAndCredits6.search(params[:search],compare,year,rain_fall_type)
        a = DepositesAndCredits6.query(@DepositesAndCredits6s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    DepositesAndCredits6.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /deposites_and_credits6s/1/edit
  def edit
  end

  # POST /deposites_and_credits6s
  def create
    @deposites_and_credits6 = DepositesAndCredits6.new(deposites_and_credits6_params)

    if @deposites_and_credits6.save
      redirect_to @deposites_and_credits6, notice: 'Deposites and credits6 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /deposites_and_credits6s/1
  def update
    if @deposites_and_credits6.update(deposites_and_credits6_params)
      redirect_to @deposites_and_credits6, notice: 'Deposites and credits6 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /deposites_and_credits6s/1
  def destroy
    @deposites_and_credits6.destroy
    redirect_to deposites_and_credits6s_url, notice: 'Deposites and credits6 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deposites_and_credits6
      @deposites_and_credits6 = DepositesAndCredits6.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def deposites_and_credits6_params
      params.require(:deposites_and_credits6).permit([:Sector, :Number_of_Branches, :'2013-14', :'2014-15', :'2015-16', :'2016-17', :'2017_18_upto_Sep_2017', :Indicator])
    end
end
