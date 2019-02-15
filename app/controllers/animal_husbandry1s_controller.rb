class AnimalHusbandry1sController < ApplicationController
  before_action :set_animal_husbandry1, only: [:show, :edit, :update, :destroy]

  # GET /animal_husbandry1s
  def index
    @animal_husbandry1s = AnimalHusbandry1.all
  end

  # GET /animal_husbandry1s/1
  def show
  end

  # GET /animal_husbandry1s/new
  def new
    @animal_husbandry1 = AnimalHusbandry1.new
  end

def test 
  rain_fall_type = params[:rain_fall_type]
  #ji = [:Cattle, :Males_over_3_years, :Females_over_3_years, :Young_stock, :Buffalo, :Males_over_3_years, :Females_over_3_years, :Young_stock, :Sheep, :Goats, :Pigs, :Horses_Ponies, :Others, :Total_Livestock, :Total_Poultry]
  if rain_fall_type == "All"
    ji = [:Cattle, :Cattle_Males_over_3_years, :Cattle_Females_over_3_years, :Cattle_Young_stock, :Buffalo, :Buffalo_Males_over_3_years, :Buffalo_Females_over_3_years, :Buffalo_Young_stock, :Sheep, :Goats, :Pigs, :Horses_Ponies, :Others]

  else
    # ji = [:Cattle, :Males_over_3_years, :Females_over_3_years, :Young_stock, :Buffalo, :Sheep, :Goats, :Pigs, :Horses_Ponies, :Others, :Total_Livestock, :Total_Poultry]
ji = [:Cattle, :Cattle_Males_over_3_years, :Cattle_Females_over_3_years, :Cattle_Young_stock, :Buffalo, :Buffalo_Males_over_3_years, :Buffalo_Females_over_3_years, :Buffalo_Young_stock, :Sheep, :Goats, :Pigs, :Horses_Ponies, :Others, :Total_Livestock, :Total_Poultry]
  end
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   ji1 = [:Year, :Cattle, :Cattle_Males_over_3_years, :Cattle_Females_over_3_years, :Cattle_Young_stock, :Buffalo, :Buffalo_Males_over_3_years, :Buffalo_Females_over_3_years, :Buffalo_Young_stock, :Sheep, :Goats, :Pigs, :Horses_Ponies, :Others, :Total_Livestock, :Total_Poultry]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = AnimalHusbandry1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = AnimalHusbandry1.map(b,params[:year],rain_fall_type,views)
         else
          b = AnimalHusbandry1.map_search(params[:search],compare,year,rain_fall_type)
          a = AnimalHusbandry1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = AnimalHusbandry1.search(params[:search],compare,year,rain_fall_type)
        a = AnimalHusbandry1.table(b,rain_fall_type,year,ji1,compare)
      else
        @AnimalHusbandry1s = AnimalHusbandry1.search(params[:search],compare,year,rain_fall_type)
        a = AnimalHusbandry1.query(@AnimalHusbandry1s,params[:year],rain_fall_type,views,ji,compare)
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
    AnimalHusbandry1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /animal_husbandry1s/1/edit
  def edit
  end

  # POST /animal_husbandry1s
  def create
    @animal_husbandry1 = AnimalHusbandry1.new(animal_husbandry1_params)

    if @animal_husbandry1.save
      redirect_to @animal_husbandry1, notice: 'Animal husbandry1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /animal_husbandry1s/1
  def update
    if @animal_husbandry1.update(animal_husbandry1_params)
      redirect_to @animal_husbandry1, notice: 'Animal husbandry1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /animal_husbandry1s/1
  def destroy
    @animal_husbandry1.destroy
    redirect_to animal_husbandry1s_url, notice: 'Animal husbandry1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animal_husbandry1
      @animal_husbandry1 = AnimalHusbandry1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def animal_husbandry1_params
      params.require(:animal_husbandry1).permit(:Year, :Cattle, :Males_over_3_years, :Females_over_3_years, :Young_stock, :Buffalo, :Males_over_3_years, :Females_over_3_years, :Young_stock, :Sheep, :Goats, :Pigs, :Horses_Ponies, :Others, :Total_Livestock, :Total_Poultry)
    end
end
