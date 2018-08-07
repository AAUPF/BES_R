class AgriculturalInputs1Part1sController < ApplicationController
  before_action :set_agricultural_inputs1_part1, only: [:show, :edit, :update, :destroy]

  # GET /agricultural_inputs1_part1s
  def index
    @agricultural_inputs1_part1s = AgriculturalInputs1Part1.all
  end

  # GET /agricultural_inputs1_part1s/1
  def show
  end

  # GET /agricultural_inputs1_part1s/new
  def new
    @agricultural_inputs1_part1 = AgriculturalInputs1Part1.new
  end

def test
  ji = [:Crops, :Type_Crops, :Paddy, :Maize, :Urad, :Arhar, :Moong]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]


   ji1 = [:Year, :Crops, :Type_Crops, :Paddy, :Maize, :Urad, :Arhar, :Moong]



  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = AgriculturalInputs1Part1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = AgriculturalInputs1Part1.map(b,params[:year],rain_fall_type,views)
         else
          b = AgriculturalInputs1Part1.map_search(params[:search],compare,year,rain_fall_type)
          a = AgriculturalInputs1Part1.map(b,rain_fall_type,year,ji,unit1)
         end
      elsif views == "Table"  
      

        if search == "Kharif"
          b = AgriculturalInputs1Part1.search(params[:search],compare,year,rain_fall_type)
          a = AgriculturalInputs1Part1.table(b,rain_fall_type,year,ji1,compare)
          
        else
          b = AgriculturalInputs1Part2.search(params[:search],compare,year,rain_fall_type)
          a = AgriculturalInputs1Part2.table(b,rain_fall_type,year,ji1,compare)
          
        end
      else

        if search == "Kharif"
          @AgriculturalInputs1Part1s = AgriculturalInputs1Part1.search(params[:search],compare,year,rain_fall_type)
          a = AgriculturalInputs1Part1.query(@AgriculturalInputs1Part1s,params[:year],rain_fall_type,views,ji,compare)
          
        else
          @AgriculturalInputs1Part1s = AgriculturalInputs1Part2.search(params[:search],compare,year,rain_fall_type)
          a = AgriculturalInputs1Part2.query(@AgriculturalInputs1Part1s,params[:year],rain_fall_type,views,ji,compare)
          
        end
       
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
    AgriculturalInputs1Part1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /agricultural_inputs1_part1s/1/edit
  def edit
  end

  # POST /agricultural_inputs1_part1s
  def create
    @agricultural_inputs1_part1 = AgriculturalInputs1Part1.new(agricultural_inputs1_part1_params)

    if @agricultural_inputs1_part1.save
      redirect_to @agricultural_inputs1_part1, notice: 'Agricultural inputs1 part1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /agricultural_inputs1_part1s/1
  def update
    if @agricultural_inputs1_part1.update(agricultural_inputs1_part1_params)
      redirect_to @agricultural_inputs1_part1, notice: 'Agricultural inputs1 part1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /agricultural_inputs1_part1s/1
  def destroy
    @agricultural_inputs1_part1.destroy
    redirect_to agricultural_inputs1_part1s_url, notice: 'Agricultural inputs1 part1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agricultural_inputs1_part1
      @agricultural_inputs1_part1 = AgriculturalInputs1Part1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def agricultural_inputs1_part1_params
      params.require(:agricultural_inputs1_part1).permit(:Year, :Crops, :Type_Crops, :Paddy, :Maize, :Urad, :Arhar, :Moong)
    end
end
