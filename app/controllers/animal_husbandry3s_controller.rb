class AnimalHusbandry3sController < ApplicationController
  before_action :set_animal_husbandry3, only: [:show, :edit, :update, :destroy]

  # GET /animal_husbandry3s
  def index
    @animal_husbandry3s = AnimalHusbandry3.all
  end

  # GET /animal_husbandry3s/1
  def show
  end

  # GET /animal_husbandry3s/new
  def new
    @animal_husbandry3 = AnimalHusbandry3.new
  end

def test
  ji = [:Animals_Treated_in_Lakh, :Immunization_in_Lakh, :Artificial_Insemination_in_Lakh]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   ji1 = [:Year, :Animals_Treated_in_Lakh, :Immunization_in_Lakh, :Artificial_Insemination_in_Lakh]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = AnimalHusbandry3.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = AnimalHusbandry3.map(b,params[:year],rain_fall_type,views)
         else
          b = AnimalHusbandry3.map_search(params[:search],compare,year,rain_fall_type)
          a = AnimalHusbandry3.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = AnimalHusbandry3.search(params[:search],compare,year,rain_fall_type)
        a = AnimalHusbandry3.table(b,rain_fall_type,year,ji1,compare)
      else
        @AnimalHusbandry3s = AnimalHusbandry3.search(params[:search],compare,year,rain_fall_type)
        a = AnimalHusbandry3.query(@AnimalHusbandry3s,params[:year],rain_fall_type,views,ji,compare)
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
    AnimalHusbandry3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /animal_husbandry3s/1/edit
  def edit
  end

  # POST /animal_husbandry3s
  def create
    @animal_husbandry3 = AnimalHusbandry3.new(animal_husbandry3_params)

    if @animal_husbandry3.save
      redirect_to @animal_husbandry3, notice: 'Animal husbandry3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /animal_husbandry3s/1
  def update
    if @animal_husbandry3.update(animal_husbandry3_params)
      redirect_to @animal_husbandry3, notice: 'Animal husbandry3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /animal_husbandry3s/1
  def destroy
    @animal_husbandry3.destroy
    redirect_to animal_husbandry3s_url, notice: 'Animal husbandry3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animal_husbandry3
      @animal_husbandry3 = AnimalHusbandry3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def animal_husbandry3_params
      params.require(:animal_husbandry3).permit(:Year, :Animals_Treated_in_Lakh, :Immunization_in_Lakh, :Artificial_Insemination_in_Lakh)
    end
end
