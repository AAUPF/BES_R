class LevelOfUrbanisation4sController < ApplicationController
  before_action :set_level_of_urbanisation4, only: [:show, :edit, :update, :destroy]

  # GET /level_of_urbanisation4s
  def index
    @level_of_urbanisation4s = LevelOfUrbanisation4.all
  end

  # GET /level_of_urbanisation4s/1
  def show
  end

  # GET /level_of_urbanisation4s/new
  def new
    @level_of_urbanisation4 = LevelOfUrbanisation4.new
  end

def test
  ji = [:Households_with_tap_water_within_premises, :Households_with_access_to_piped_sewer_connected_to_latrines, :Households_connected_to_covered_drainage]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "City_Size"
ji1 = [:City_Size, :Households_with_tap_water_within_premises, :Households_with_access_to_piped_sewer_connected_to_latrines, :Households_connected_to_covered_drainage]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = LevelOfUrbanisation4.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = LevelOfUrbanisation4.map(b,params[:year],rain_fall_type,views)
         else
          b = LevelOfUrbanisation4.map_search(params[:search],compare,year,rain_fall_type)
          a = LevelOfUrbanisation4.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = LevelOfUrbanisation4.search(params[:search],compare,year,rain_fall_type,legend)
        a = LevelOfUrbanisation4.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @LevelOfUrbanisation4s = LevelOfUrbanisation4.search(params[:search],compare,year,rain_fall_type,legend)
        a = LevelOfUrbanisation4.query(@LevelOfUrbanisation4s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    LevelOfUrbanisation4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /level_of_urbanisation4s/1/edit
  def edit
  end

  # POST /level_of_urbanisation4s
  def create
    @level_of_urbanisation4 = LevelOfUrbanisation4.new(level_of_urbanisation4_params)

    if @level_of_urbanisation4.save
      redirect_to @level_of_urbanisation4, notice: 'Level of urbanisation4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /level_of_urbanisation4s/1
  def update
    if @level_of_urbanisation4.update(level_of_urbanisation4_params)
      redirect_to @level_of_urbanisation4, notice: 'Level of urbanisation4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /level_of_urbanisation4s/1
  def destroy
    @level_of_urbanisation4.destroy
    redirect_to level_of_urbanisation4s_url, notice: 'Level of urbanisation4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_level_of_urbanisation4
      @level_of_urbanisation4 = LevelOfUrbanisation4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def level_of_urbanisation4_params
      params.require(:level_of_urbanisation4).permit(:City_Size, :Households_with_tap_water_within_premises, :Households_with_access_to_piped_sewer_connected_to_latrines, :Households_connected_to_covered_drainage)
    end
end
