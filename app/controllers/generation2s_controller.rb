class Generation2sController < ApplicationController
  before_action :set_generation2, only: [:show, :edit, :update, :destroy]

  # GET /generation2s
  def index
    @generation2s = Generation2.all
  end

  # GET /generation2s/1
  def show
  end

  # GET /generation2s/new
  def new
    @generation2 = Generation2.new
  end

def test
  ji = [:Thermal_Plan, :'2015-16', :'2016-17', :'2017-18_Under_Progress', :'2018-19', :'By_2022_Upcoming_Projects', :'Beyond_2022']
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Thermal_Plan"

if rain_fall_type != "All"
  ji1 = [:Thermal_Plan, "#{rain_fall_type}"]
else
  ji1 = [:Thermal_Plan, :'2015-16', :'2016-17', :'Under_Progress_2017_18', :'2018-19', :'By_2022_Upcoming_Projects', :'Beyond_2022']
end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Generation2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Generation2.map(b,params[:year],rain_fall_type,views)
         else
          b = Generation2.map_search(params[:search],compare,year,rain_fall_type)
          a = Generation2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Generation2.search(params[:search],compare,year,rain_fall_type,legend)
        a = Generation2.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @Generation2s = Generation2.search(params[:search],compare,year,rain_fall_type)
        a = Generation2.query(@Generation2s,params[:year],rain_fall_type,views,ji,compare)
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
    Generation2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /generation2s/1/edit
  def edit
  end

  # POST /generation2s
  def create
    @generation2 = Generation2.new(generation2_params)

    if @generation2.save
      redirect_to @generation2, notice: 'Generation2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /generation2s/1
  def update
    if @generation2.update(generation2_params)
      redirect_to @generation2, notice: 'Generation2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /generation2s/1
  def destroy
    @generation2.destroy
    redirect_to generation2s_url, notice: 'Generation2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generation2
      @generation2 = Generation2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def generation2_params
      params.require(:generation2).permit(:Thermal_Plan, :'2015-16', :'2016-17', :'2017-18_Under_Progress', :'2018-19', :'By_2022_Upcoming_Projects', :'Beyond_2022')
    end
end
