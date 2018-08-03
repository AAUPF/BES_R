class AgriculturalInputs1Part2sController < ApplicationController
  before_action :set_agricultural_inputs1_part2, only: [:show, :edit, :update, :destroy]

  # GET /agricultural_inputs1_part2s
  def index
    @agricultural_inputs1_part2s = AgriculturalInputs1Part2.all
  end

  # GET /agricultural_inputs1_part2s/1
  def show
  end

  # GET /agricultural_inputs1_part2s/new
  def new
    @agricultural_inputs1_part2 = AgriculturalInputs1Part2.new
  end

def test
  ji = [:Year, :Crops, :Type_Crops, :Wheat, :Maize, :Arhar, :Gram, :Pea, :Masoor, :Rapeseed_Mustard]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = AgriculturalInputs1Part2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = AgriculturalInputs1Part2.map(b,params[:year],rain_fall_type,views)
         else
          b = AgriculturalInputs1Part2.map_search(params[:search],compare,year,rain_fall_type)
          a = AgriculturalInputs1Part2.map(b,rain_fall_type,year,ji,unit1)
         end
      elsif views == "Table"  
        b = AgriculturalInputs1Part2.search(params[:search],compare,year,rain_fall_type)
        a = AgriculturalInputs1Part2.table(b,rain_fall_type,year,ji1,compare)
      else
        @AgriculturalInputs1Part2s = AgriculturalInputs1Part2.search(params[:search],compare,year,rain_fall_type)
        a = AgriculturalInputs1Part2.query(@AgriculturalInputs1Part2s,params[:year],rain_fall_type,views,ji,compare)
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
    AgriculturalInputs1Part2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /agricultural_inputs1_part2s/1/edit
  def edit
  end

  # POST /agricultural_inputs1_part2s
  def create
    @agricultural_inputs1_part2 = AgriculturalInputs1Part2.new(agricultural_inputs1_part2_params)

    if @agricultural_inputs1_part2.save
      redirect_to @agricultural_inputs1_part2, notice: 'Agricultural inputs1 part2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /agricultural_inputs1_part2s/1
  def update
    if @agricultural_inputs1_part2.update(agricultural_inputs1_part2_params)
      redirect_to @agricultural_inputs1_part2, notice: 'Agricultural inputs1 part2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /agricultural_inputs1_part2s/1
  def destroy
    @agricultural_inputs1_part2.destroy
    redirect_to agricultural_inputs1_part2s_url, notice: 'Agricultural inputs1 part2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agricultural_inputs1_part2
      @agricultural_inputs1_part2 = AgriculturalInputs1Part2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def agricultural_inputs1_part2_params
      params.require(:agricultural_inputs1_part2).permit(:Year, :Crops, :Type_Crops, :Wheat, :Maize, :Arhar, :Gram, :Pea, :Masoor, :Rapeseed_Mustard)
    end
end
