class CroppingPatternsController < ApplicationController
  before_action :set_cropping_pattern, only: [:show, :edit, :update, :destroy]

  # GET /cropping_patterns
  def index
    @cropping_patterns = CroppingPattern.all
  end

  # GET /cropping_patterns/1
  def show
  end

  # GET /cropping_patterns/new
  def new
    @cropping_pattern = CroppingPattern.new
  end

def test
  ji = [:Food_grains, :Cereals, :Pulses, :Oil_seeds, :Fibre_Crops, :Sugarcane, :Total_Area]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

   ji1 = [:Year, :Food_grains, :Cereals, :Pulses, :Oil_seeds, :Fibre_Crops, :Sugarcane, :Total_Area]


  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = CroppingPattern.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = CroppingPattern.map(b,params[:year],rain_fall_type,views)
         else
          b = CroppingPattern.map_search(params[:search],compare,year,rain_fall_type)
          a = CroppingPattern.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = CroppingPattern.search(params[:search],compare,year,rain_fall_type)
        a = CroppingPattern.table(b,rain_fall_type,year,ji1,compare)
      else
        @CroppingPatterns = CroppingPattern.search(params[:search],compare,year,rain_fall_type)
        a = CroppingPattern.query(@CroppingPatterns,params[:year],rain_fall_type,views,ji,compare)
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
    CroppingPattern.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /cropping_patterns/1/edit
  def edit
  end

  # POST /cropping_patterns
  def create
    @cropping_pattern = CroppingPattern.new(cropping_pattern_params)

    if @cropping_pattern.save
      redirect_to @cropping_pattern, notice: 'Cropping pattern was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /cropping_patterns/1
  def update
    if @cropping_pattern.update(cropping_pattern_params)
      redirect_to @cropping_pattern, notice: 'Cropping pattern was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /cropping_patterns/1
  def destroy
    @cropping_pattern.destroy
    redirect_to cropping_patterns_url, notice: 'Cropping pattern was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cropping_pattern
      @cropping_pattern = CroppingPattern.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cropping_pattern_params
      params.require(:cropping_pattern).permit(:Year, :Food_grains, :Cereals, :Pulses, :Oil_seeds, :Fibre_Crops, :Sugarcane, :Total_Area)
    end
end
