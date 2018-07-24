class AnimalHusbandry2sController < ApplicationController
  before_action :set_animal_husbandry2, only: [:show, :edit, :update, :destroy]

  # GET /animal_husbandry2s
  def index
    @animal_husbandry2s = AnimalHusbandry2.all
  end

  # GET /animal_husbandry2s/1
  def show
  end

  # GET /animal_husbandry2s/new
  def new
    @animal_husbandry2 = AnimalHusbandry2.new
  end

def test
  ji = [:Milk_lakh_tonnes, :Egg_crore, :Wool_lakh_kgs, :Meat_lakh_tonnes, :Fish_lakh_tonnes]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
  ji1 = [:Year, :Milk_lakh_tonnes, :Egg_crore, :Wool_lakh_kgs, :Meat_lakh_tonnes, :Fish_lakh_tonnes]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = AnimalHusbandry2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = AnimalHusbandry2.map(b,params[:year],rain_fall_type,views)
         else
          b = AnimalHusbandry2.map_search(params[:search],compare,year,rain_fall_type)
          a = AnimalHusbandry2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = AnimalHusbandry2.search(params[:search],compare,year,rain_fall_type)
        a = AnimalHusbandry2.table_trim(b,rain_fall_type,year,ji1,compare)
      else
        @AnimalHusbandry2s = AnimalHusbandry2.search(params[:search],compare,year,rain_fall_type)
        a = AnimalHusbandry2.query1(@AnimalHusbandry2s,params[:year],rain_fall_type,views,ji,compare)
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
    AnimalHusbandry2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /animal_husbandry2s/1/edit
  def edit
  end

  # POST /animal_husbandry2s
  def create
    @animal_husbandry2 = AnimalHusbandry2.new(animal_husbandry2_params)

    if @animal_husbandry2.save
      redirect_to @animal_husbandry2, notice: 'Animal husbandry2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /animal_husbandry2s/1
  def update
    if @animal_husbandry2.update(animal_husbandry2_params)
      redirect_to @animal_husbandry2, notice: 'Animal husbandry2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /animal_husbandry2s/1
  def destroy
    @animal_husbandry2.destroy
    redirect_to animal_husbandry2s_url, notice: 'Animal husbandry2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animal_husbandry2
      @animal_husbandry2 = AnimalHusbandry2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def animal_husbandry2_params
      params.require(:animal_husbandry2).permit(:Year, :Milk_lakh_tonnes, :Egg_crore, :Wool_lakh_kgs, :Meat_lakh_tonnes, :Fish_lakh_tonnes)
    end
end
