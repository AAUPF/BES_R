class AnimalHusbandry6sController < ApplicationController
  before_action :set_animal_husbandry6, only: [:show, :edit, :update, :destroy]

  # GET /animal_husbandry6s
  def index
    @animal_husbandry6s = AnimalHusbandry6.all
  end

  # GET /animal_husbandry6s/1
  def show
  end

  # GET /animal_husbandry6s/new
  def new
    @animal_husbandry6 = AnimalHusbandry6.new
  end

def test
  ji = [:Districts, :Crossbred_Cow, :Local_Cow, :Total_Cow, :Buffalo, :Total_Cow_Buffalo, :Goat, :Total_Production, :Year]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = AnimalHusbandry6.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = AnimalHusbandry6.map(b,params[:year],rain_fall_type,views)
         else
          b = AnimalHusbandry6.map_search(params[:search],compare,year,rain_fall_type)
          a = AnimalHusbandry6.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = AnimalHusbandry6.search(params[:search],compare,year,rain_fall_type)
        a = AnimalHusbandry6.table(b,rain_fall_type,year,ji,compare)
      else
        @AnimalHusbandry6s = AnimalHusbandry6.search(params[:search],compare,year,rain_fall_type)
        a = AnimalHusbandry6.query(@AnimalHusbandry6s,params[:year],rain_fall_type,views,ji,compare)
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
    AnimalHusbandry6.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /animal_husbandry6s/1/edit
  def edit
  end

  # POST /animal_husbandry6s
  def create
    @animal_husbandry6 = AnimalHusbandry6.new(animal_husbandry6_params)

    if @animal_husbandry6.save
      redirect_to @animal_husbandry6, notice: 'Animal husbandry6 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /animal_husbandry6s/1
  def update
    if @animal_husbandry6.update(animal_husbandry6_params)
      redirect_to @animal_husbandry6, notice: 'Animal husbandry6 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /animal_husbandry6s/1
  def destroy
    @animal_husbandry6.destroy
    redirect_to animal_husbandry6s_url, notice: 'Animal husbandry6 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animal_husbandry6
      @animal_husbandry6 = AnimalHusbandry6.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def animal_husbandry6_params
      params.require(:animal_husbandry6).permit(:Districts, :Crossbred_Cow, :Local_Cow, :Total_Cow, :Buffalo, :Total_Cow_Buffalo, :Goat, :Total_Production, :Year)
    end
end
