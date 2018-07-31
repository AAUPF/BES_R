class AnimalHusbandry4sController < ApplicationController
  before_action :set_animal_husbandry4, only: [:show, :edit, :update, :destroy]

  # GET /animal_husbandry4s
  def index
    @animal_husbandry4s = AnimalHusbandry4.all
  end

  # GET /animal_husbandry4s/1
  def show
  end

  # GET /animal_husbandry4s/new
  def new
    @animal_husbandry4 = AnimalHusbandry4.new
  end

def test
  ji = [:Districts, :Cow, :Buffalo, :Pig, :Sheep, :Goat, :Poultry]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]


   ji1 = [:Districts, :Cow, :Buffalo, :Pig, :Sheep, :Goat, :Poultry]
   rain_fall_type = params[:rain_fall_type]
   unit1 =  "000"

   if rain_fall_type == 'Cow'
    ranges = NewricesHelper.ranges1(650,600,500,450,300,200,0)
  elsif rain_fall_type == 'Buffalo'
    ranges =  NewricesHelper.ranges1(820,350,300,250,200,100,0)
  elsif rain_fall_type == 'Pig'
    ranges =  NewricesHelper.ranges1(130,80,30,20,10,5,0)
  elsif rain_fall_type == 'Sheep'
    ranges =  NewricesHelper.ranges1(43,25,15,10,5,2.5,0)
  elsif rain_fall_type == 'Goat'
    ranges =  NewricesHelper.ranges1(950,720,500,400,300,200,0)
  elsif rain_fall_type == 'Poultry'
    ranges =  NewricesHelper.ranges1(850,750,500,400,200,100,0)
  else
 end


  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = AnimalHusbandry4.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = AnimalHusbandry4.map(b,params[:year],rain_fall_type,views)
         else
          b = AnimalHusbandry4.map_search(params[:search],compare,year,rain_fall_type)
          a = AnimalHusbandry4.map(b,rain_fall_type,year,ji,unit1,ranges)
         end
      elsif views == "Table"  
        b = AnimalHusbandry4.search(params[:search],compare,year,rain_fall_type)
        a = AnimalHusbandry4.table(b,rain_fall_type,year,ji1,compare)
      else
        @AnimalHusbandry4s = AnimalHusbandry4.search(params[:search],compare,year,rain_fall_type)
        a = AnimalHusbandry4.query(@AnimalHusbandry4s,params[:year],rain_fall_type,views,ji,compare)
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
    AnimalHusbandry4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /animal_husbandry4s/1/edit
  def edit
  end

  # POST /animal_husbandry4s
  def create
    @animal_husbandry4 = AnimalHusbandry4.new(animal_husbandry4_params)

    if @animal_husbandry4.save
      redirect_to @animal_husbandry4, notice: 'Animal husbandry4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /animal_husbandry4s/1
  def update
    if @animal_husbandry4.update(animal_husbandry4_params)
      redirect_to @animal_husbandry4, notice: 'Animal husbandry4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /animal_husbandry4s/1
  def destroy
    @animal_husbandry4.destroy
    redirect_to animal_husbandry4s_url, notice: 'Animal husbandry4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animal_husbandry4
      @animal_husbandry4 = AnimalHusbandry4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def animal_husbandry4_params
      params.require(:animal_husbandry4).permit(:Districts, :Cow, :Buffalo, :Pig, :Sheep, :Goat, :Poultry, :Cow_Colour, :Buffalo_Colour, :Pig_Colour, :Sheep_Colour, :Goat_Colour, :Poultry_Colour)
    end
end
