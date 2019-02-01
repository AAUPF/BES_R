class AvailablilityOfPower1sController < ApplicationController
  before_action :set_availablility_of_power1, only: [:show, :edit, :update, :destroy]

  # GET /availablility_of_power1s
  def index
    @availablility_of_power1s = AvailablilityOfPower1.all
    respond_to do |format|
      format.html { render json:  @availablility_of_power1s}
  end
  end

  # GET /availablility_of_power1s/1
  def show
  end

  # GET /availablility_of_power1s/new
  def new
    @availablility_of_power1 = AvailablilityOfPower1.new
  end

# def test
#   ji = [:Sector, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = AvailablilityOfPower1.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = AvailablilityOfPower1.map(b,params[:year],rain_fall_type,views)
#          else
#           b = AvailablilityOfPower1.map_search(params[:search],compare,year,rain_fall_type)
#           a = AvailablilityOfPower1.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = AvailablilityOfPower1.search(params[:search],compare,year,rain_fall_type)
#         a = AvailablilityOfPower1.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @AvailablilityOfPower1s = AvailablilityOfPower1.search(params[:search],compare,year,rain_fall_type)
#         a = AvailablilityOfPower1.query(@AvailablilityOfPower1s,params[:year],rain_fall_type,views,ji,compare)
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

   ji = [:Sector, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']
   rain_fall_type = params[:rain_fall_type]
   views = params[:views]
   year = params[:year]
   compare = params[:compare]
   search = params[:search]
 
   search = rain_fall_type
 
   jip = [:'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']
   ji1 = [:Sector, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']
 
 
   if views != "Table"
 
     data = [
      "Peak Demand (MW) ",
      "Peak Met (MW) ",
      "Peak Deficit/ Surplus (MW) (Minus/Plus) ",
      "Peak Deficit/ Surplus (Percentage) (Minus/Plus)",
      "Energy Requirement (MU) ",
      "Energy Availability (MU) ",
      "Energy Deficit/ Surplus (MU) (Minus/Plus)",
      "Energy Deficit/ Surplus (Percentage) (Minus/Plus) ",
      "Consumption (kwh)"
     ]
   else
     data = [
      "Peak Demand (MW) ",
      "Peak Met (MW) ",
      "Peak Deficit/ Surplus (MW) (Minus/Plus) ",
      "Peak Deficit/ Surplus (Percentage) (Minus/Plus)",
      "Energy Requirement (MU) ",
      "Energy Availability (MU) ",
      "Energy Deficit/ Surplus (MU) (Minus/Plus)",
      "Energy Deficit/ Surplus (Percentage) (Minus/Plus) ",
      "Consumption (kwh)"
     ]
 
     
   end

   legend = "Characteristic"
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = AvailablilityOfPower1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = AvailablilityOfPower1.map(b,params[:year],rain_fall_type,views)
         else
          b = AvailablilityOfPower1.map_search(params[:search],compare,year,rain_fall_type)
          a = AvailablilityOfPower1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = AvailablilityOfPower1.search(params[:search],compare,year,rain_fall_type)
        a = AvailablilityOfPower1.new_table(b, rain_fall_type, year, ji1, compare, search, data,legend)
      else
        @AvailablilityOfPower1s = AvailablilityOfPower1.search(params[:search],compare,year,rain_fall_type)
        a = AvailablilityOfPower1.query(@AvailablilityOfPower1s, params[:year], rain_fall_type, views, ji, compare, search, data, jip)
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
    AvailablilityOfPower1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /availablility_of_power1s/1/edit
  def edit
  end

  # POST /availablility_of_power1s
  def create
    @availablility_of_power1 = AvailablilityOfPower1.new(availablility_of_power1_params)

    if @availablility_of_power1.save
      redirect_to @availablility_of_power1, notice: 'Availablility of power1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /availablility_of_power1s/1
  def update
    if @availablility_of_power1.update(availablility_of_power1_params)
      redirect_to @availablility_of_power1, notice: 'Availablility of power1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /availablility_of_power1s/1
  def destroy
    @availablility_of_power1.destroy
    redirect_to availablility_of_power1s_url, notice: 'Availablility of power1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_availablility_of_power1
      @availablility_of_power1 = AvailablilityOfPower1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def availablility_of_power1_params
      params.require(:availablility_of_power1).permit(:Sector, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17')
    end
end
