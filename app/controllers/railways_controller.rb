class RailwaysController < ApplicationController
  before_action :set_railway, only: [:show, :edit, :update, :destroy]

  # GET /railways
  def index
    @railways = Railway.all
  end

  # GET /railways/1
  def show
  end

  # GET /railways/new
  def new
    @railway = Railway.new
  end

def test
  ji = [:Total_Rail_Route, :Total_Rail_Track, :Total_Rail_Route_Per_1000_sq_km, :Total_Rail_Route_Per_lakh_Population, :Total_Rail_Track_Per_1000_sq_km, :Total_Rail_Track_Per_lakh_Population]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
ji1 = [:Districts, :Total_Rail_Route, :Total_Rail_Track, :Total_Rail_Route_Per_1000_sq_km, :Total_Rail_Route_Per_lakh_Population, :Total_Rail_Track_Per_1000_sq_km, :Total_Rail_Track_Per_lakh_Population]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Railway.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Railway.map(b,params[:year],rain_fall_type,views)
         else
          b = Railway.map_search(params[:search],compare,year,rain_fall_type)
          a = Railway.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Railway.search(params[:search],compare,year,rain_fall_type)
        a = Railway.table(b,rain_fall_type,year,ji1,compare)
      else
        @Railways = Railway.search(params[:search],compare,year,rain_fall_type)
        a = Railway.query(@Railways,params[:year],rain_fall_type,views,ji,compare,search)
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
    Railway.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /railways/1/edit
  def edit
  end

  # POST /railways
  def create
    @railway = Railway.new(railway_params)

    if @railway.save
      redirect_to @railway, notice: 'Railway was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /railways/1
  def update
    if @railway.update(railway_params)
      redirect_to @railway, notice: 'Railway was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /railways/1
  def destroy
    @railway.destroy
    redirect_to railways_url, notice: 'Railway was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_railway
      @railway = Railway.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def railway_params
      params.require(:railway).permit(:States, :Total_Rail_Route, :Total_Rail_Track, :Total_Rail_Route_Per_1000_sq_km, :Total_Rail_Route_Per_lakh_Population, :Total_Rail_Track_Per_1000_sq_km, :Total_Rail_Track_Per_lakh_Population)
    end
end
