class Rainfall2sController < ApplicationController
  before_action :set_rainfall2, only: [:show, :edit, :update, :destroy]

  # GET /rainfall2s
  def index
    @rainfall2s = Rainfall2.all
  end

  # GET /rainfall2s/1
  def show
  end

  # GET /rainfall2s/new
  def new
    @rainfall2 = Rainfall2.new
  end

def test
  ji = [:Winter_Rain, :Hot_Weather_Rain, :South_West_Monsoon, :North_West_Monsoon, :Total]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

 
   ji1 = [:Winter_Rain, :Hot_Weather_Rain, :South_West_Monsoon, :North_West_Monsoon, :Total,:Year]
  if rain_fall_type || views
      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Rainfall2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Rainfall2.map(b,params[:year],rain_fall_type,views)
         else
          b = Rainfall2.map_search(params[:search],compare,year,rain_fall_type)
          a = Rainfall2.map(b,rain_fall_type,year,ji)
         end
        elsif views == "Table"  
          b = Rainfall2.search(params[:search],compare,year,rain_fall_type)
          a = Rainfall2.table(b,rain_fall_type,year,ji1,compare)
      else
        @Rainfall2s = Rainfall2.search(params[:search],compare,year,rain_fall_type)
        a = Rainfall2.query(@Rainfall2s,params[:year],rain_fall_type,views,ji,compare)
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
    Rainfall2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /rainfall2s/1/edit
  def edit
  end

  # POST /rainfall2s
  def create
    @rainfall2 = Rainfall2.new(rainfall2_params)

    if @rainfall2.save
      redirect_to @rainfall2, notice: 'Rainfall2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /rainfall2s/1
  def update
    if @rainfall2.update(rainfall2_params)
      redirect_to @rainfall2, notice: 'Rainfall2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /rainfall2s/1
  def destroy
    @rainfall2.destroy
    redirect_to rainfall2s_url, notice: 'Rainfall2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rainfall2
      @rainfall2 = Rainfall2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rainfall2_params
      params.require(:rainfall2).permit(:Districts, :Winter_Rain, :Hot_Weather_Rain, :South_West_Monsoon, :North_West_Monsoon, :Total, :Year)
    end
end
