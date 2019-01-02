class MapbiharsController < ApplicationController
  before_action :set_mapbihar, only: [:show, :edit, :update, :destroy]

  # GET /mapbihars
  def index
    @mapbihars = Mapbihar.all
  end

  # GET /mapbihars/1
  def show
  end

  # GET /mapbihars/new
  def new
    @mapbihar = Mapbihar.new
  end


def test
  ji = [:Districts, :indicator]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   ji1 = [:Districts, :indicator]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Mapbihar.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Mapbihar.map(b,params[:year],rain_fall_type,views)
         else
          b = Mapbihar.map_search(params[:search],compare,year,rain_fall_type)
          a = Mapbihar.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Mapbihar.search(params[:search],compare,year,rain_fall_type)
        a = Mapbihar.table(b,rain_fall_type,year,ji1,compare)
      else
        @Mapbihars = Mapbihar.search(params[:search],compare,year,rain_fall_type)
        a = Mapbihar.query(@Mapbihars,params[:year],rain_fall_type,views,ji,compare)
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
    Mapbihar.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /mapbihars/1/edit
  def edit
  end

  # POST /mapbihars
  def create
    @mapbihar = Mapbihar.new(mapbihar_params)

    if @mapbihar.save
      redirect_to @mapbihar, notice: 'Mapbihar was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /mapbihars/1
  def update
    if @mapbihar.update(mapbihar_params)
      redirect_to @mapbihar, notice: 'Mapbihar was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /mapbihars/1
  def destroy
    @mapbihar.destroy
    redirect_to mapbihars_url, notice: 'Mapbihar was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mapbihar
      @mapbihar = Mapbihar.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mapbihar_params
      params.require(:mapbihar).permit(:Districts, :Indicator)
    end
end
