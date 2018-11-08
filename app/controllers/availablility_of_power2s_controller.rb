class AvailablilityOfPower2sController < ApplicationController
  before_action :set_availablility_of_power2, only: [:show, :edit, :update, :destroy]

  # GET /availablility_of_power2s
  def index
    @availablility_of_power2s = AvailablilityOfPower2.all
  end

  # GET /availablility_of_power2s/1
  def show
  end

  # GET /availablility_of_power2s/new
  def new
    @availablility_of_power2 = AvailablilityOfPower2.new
  end

def test
  ji = [:Consumption]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
# ji1 = [:Districts, :Per_Capita_GDP, :Year]
if year == "All"
  ji1 = [:Districts, :"2014-15", :"2015-16"]
else
  ji1 = [:Districts, :Consumption, :Year]
end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = AvailablilityOfPower2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = AvailablilityOfPower2.map(b,params[:year],rain_fall_type,views)
         else
          b = AvailablilityOfPower2.map_search(params[:search],compare,year,rain_fall_type)
          a = AvailablilityOfPower2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = AvailablilityOfPower2.search(params[:search],compare,year,rain_fall_type)
        a = AvailablilityOfPower2.table(b,rain_fall_type,year,ji1,compare)
      else
        @AvailablilityOfPower2s = AvailablilityOfPower2.search(params[:search],compare,year,rain_fall_type)
        a = AvailablilityOfPower2.query(@AvailablilityOfPower2s,params[:year],rain_fall_type,views,ji,compare,search)
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
    AvailablilityOfPower2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /availablility_of_power2s/1/edit
  def edit
  end

  # POST /availablility_of_power2s
  def create
    @availablility_of_power2 = AvailablilityOfPower2.new(availablility_of_power2_params)

    if @availablility_of_power2.save
      redirect_to @availablility_of_power2, notice: 'Availablility of power2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /availablility_of_power2s/1
  def update
    if @availablility_of_power2.update(availablility_of_power2_params)
      redirect_to @availablility_of_power2, notice: 'Availablility of power2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /availablility_of_power2s/1
  def destroy
    @availablility_of_power2.destroy
    redirect_to availablility_of_power2s_url, notice: 'Availablility of power2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_availablility_of_power2
      @availablility_of_power2 = AvailablilityOfPower2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def availablility_of_power2_params
      params.require(:availablility_of_power2).permit(:Districts, :Consumption, :Year)
    end
end
