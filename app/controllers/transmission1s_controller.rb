class Transmission1sController < ApplicationController
  before_action :set_transmission1, only: [:show, :edit, :update, :destroy]

  # GET /transmission1s
  def index
    @transmission1s = Transmission1.all
  end

  # GET /transmission1s/1
  def show
  end

  # GET /transmission1s/new
  def new
    @transmission1 = Transmission1.new
  end

def test
  ji = [:Sector, :'2017-18', :'2018-19', :'2019-20']
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

   search = params[:search]
 
   search = rain_fall_type
 
   jip = [:'2017-18', :'2018-19', :'2019-20']
   ji1 = [:Sector, :'2017-18', :'2018-19', :'2019-20']
 
 
   data = [
    "Peak Demand (MW)",
    "Transformation  Capacity needed to meet Peak Demand (MW)",
    "Available Capacity MVA at 220/132 KV level",
    "Available Capacity MVA at  132/33 KV level",
   ]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Transmission1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Transmission1.map(b,params[:year],rain_fall_type,views)
         else
          b = Transmission1.map_search(params[:search],compare,year,rain_fall_type)
          a = Transmission1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Transmission1.search(params[:search],compare,year,rain_fall_type)
        a = Transmission1.table(b,rain_fall_type,year,ji1,compare, search, data)
      else
        @Transmission1s = Transmission1.search(params[:search],compare,year,rain_fall_type)
        a = Transmission1.query(@Transmission1s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    Transmission1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /transmission1s/1/edit
  def edit
  end

  # POST /transmission1s
  def create
    @transmission1 = Transmission1.new(transmission1_params)

    if @transmission1.save
      redirect_to @transmission1, notice: 'Transmission1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /transmission1s/1
  def update
    if @transmission1.update(transmission1_params)
      redirect_to @transmission1, notice: 'Transmission1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /transmission1s/1
  def destroy
    @transmission1.destroy
    redirect_to transmission1s_url, notice: 'Transmission1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transmission1
      @transmission1 = Transmission1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def transmission1_params
      params.require(:transmission1).permit(:Demand_Capacity, :'2017-18', :'2018-19', :'2019-20')
    end
end
