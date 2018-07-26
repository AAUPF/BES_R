class ProductionProductivity1sController < ApplicationController
  before_action :set_production_productivity1, only: [:show, :edit, :update, :destroy]

  # GET /production_productivity1s
  def index
    @production_productivity1s = ProductionProductivity1.all
  end

  # GET /production_productivity1s/1
  def show
  end

  # GET /production_productivity1s/new
  def new
    @production_productivity1 = ProductionProductivity1.new
  end

  def test
    ji = [:Total_Cereals, :Total_Rice, :Autumn_Rice, :Aghani_Rice, :Summer_Rice, :Wheat, :Total_Maize, :Kharif_Maize, :Rabi_Maize, :Summer_Maize, :Total_Coarse_Cereals, :Barley, :Jowar, :Bajra, :Ragi, :Small_Millets, :Total_Pulses, :Total_Kharif_Pulses, :Urad, :Bhadai_Moong, :Kulthi, :Ghagra, :Other_Kharif_Pulses, :Total_Rabi_Pulses, :Arhar_Tur, :Gram, :Lentil, :Pea, :Khesari, :Summer_Moong, :Other_Rabi_Pulses, :Total_Oilseeds, :Castor_seed, :Safflower_Kusum, :Sesamum, :Sunflower, :Mustard, :Linseed, :Ground_Nut, :Total_Fibre_Crops, :Jute, :Mesta, :Sugarcane]
    rain_fall_type = params[:rain_fall_type]
    views = params[:views]
    year = params[:year]
    compare = params[:compare]

    ji1 = [:Year, :Total_Cereals, :Total_Rice, :Autumn_Rice, :Aghani_Rice, :Summer_Rice, :Wheat, :Total_Maize, :Kharif_Maize, :Rabi_Maize, :Summer_Maize, :Total_Coarse_Cereals, :Barley, :Jowar, :Bajra, :Ragi, :Small_Millets, :Total_Pulses, :Total_Kharif_Pulses, :Urad, :Bhadai_Moong, :Kulthi, :Ghagra, :Other_Kharif_Pulses, :Total_Rabi_Pulses, :Arhar_Tur, :Gram, :Lentil, :Pea, :Khesari, :Summer_Moong, :Other_Rabi_Pulses, :Total_Oilseeds, :Castor_seed, :Safflower_Kusum, :Sesamum, :Sunflower, :Mustard, :Linseed, :Ground_Nut, :Total_Fibre_Crops, :Jute, :Mesta, :Sugarcane]

    if rain_fall_type || views

      if views == "Map View"
        l = rain_fall_type.gsub(" ", "")
        if rain_fall_type == "All"
          b = ProductionProductivity1.map_search("All", compare, year, rain_fall_type)

          a = ProductionProductivity1.map(b, params[:year], rain_fall_type, views)
        else
          b = ProductionProductivity1.map_search(params[:search], compare, year, rain_fall_type)
          a = ProductionProductivity1.map(b, rain_fall_type, year, ji)
        end
      elsif views == "Table"
        b = ProductionProductivity1.search(params[:search], compare, year, rain_fall_type)
        a = ProductionProductivity1.table(b, rain_fall_type, year, ji1, compare)
      else
        @ProductionProductivity1s = ProductionProductivity1.search(params[:search], compare, year, rain_fall_type)
        a = ProductionProductivity1.query(@ProductionProductivity1s, params[:year], rain_fall_type, views, ji, compare)
      end
      respond_to do |format|
        format.html {render json: a}
      end

    else
      respond_to do |format|
        format.html {render json: "error"}
      end
    end

  end


  def import
    # Module1.import(params[:file])
    ProductionProductivity1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /production_productivity1s/1/edit
  def edit
  end

  # POST /production_productivity1s
  def create
    @production_productivity1 = ProductionProductivity1.new(production_productivity1_params)

    if @production_productivity1.save
      redirect_to @production_productivity1, notice: 'Production productivity1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /production_productivity1s/1
  def update
    if @production_productivity1.update(production_productivity1_params)
      redirect_to @production_productivity1, notice: 'Production productivity1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /production_productivity1s/1
  def destroy
    @production_productivity1.destroy
    redirect_to production_productivity1s_url, notice: 'Production productivity1 was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_production_productivity1
    @production_productivity1 = ProductionProductivity1.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def production_productivity1_params
    params.require(:production_productivity1).permit(:Year, :Total_Cereals, :Total_Rice, :Autumn_Rice, :Aghani_Rice, :Summer_Rice, :Wheat, :Total_Maize, :Kharif_Maize, :Rabi_Maize, :Summer_Maize, :Total_Coarse_Cereals, :Barley, :Jowar, :Bajra, :Ragi, :Small_Millets, :Total_Pulses, :Total_Kharif_Pulses, :Urad, :Bhadai_Moong, :Kulthi, :Ghagra, :Other_Kharif_Pulses, :Total_Rabi_Pulses, :Arhar_Tur, :Gram, :Lentil, :Pea, :Khesari, :Summer_Moong, :Other_Rabi_Pulses, :Total_Oilseeds, :Castor_seed, :Safflower_Kusum, :Sesamum, :Sunflower, :Mustard, :Linseed, :Ground_Nut, :Total_Fibre_Crops, :Jute, :Mesta, :Sugarcane)
  end
end
