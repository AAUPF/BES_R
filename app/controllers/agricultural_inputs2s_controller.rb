class AgriculturalInputs2sController < ApplicationController
  before_action :set_agricultural_inputs2, only: [:show, :edit, :update, :destroy]

  # GET /agricultural_inputs2s
  def index
    @agricultural_inputs2s = AgriculturalInputs2.all
  end

  # GET /agricultural_inputs2s/1
  def show
  end

  # GET /agricultural_inputs2s/new
  def new
    @agricultural_inputs2 = AgriculturalInputs2.new
  end

def test
  ji = [:Year, :Urea, :DAP, :SSP, :MOP, :Ammonium_Sulphate, :Complex, :Sub_Total, :N, :P, :K, :Total_NPK, :Grand_Total, :Consumption_of_Fertilizer]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]


     ji1 = [:Year, :Type_of_Fertilizer, :Urea, :DAP, :SSP, :MOP, :Ammonium_Sulphate, :Complex, :Sub_Total, :N, :P, :K, :Total_NPK, :Grand_Total, :Consumption_of_Fertilizer]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = AgriculturalInputs2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = AgriculturalInputs2.map(b,params[:year],rain_fall_type,views)
         else
          b = AgriculturalInputs2.map_search(params[:search],compare,year,rain_fall_type)
          a = AgriculturalInputs2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = AgriculturalInputs2.search(params[:search],compare,year,rain_fall_type)
        a = AgriculturalInputs2.table(b,rain_fall_type,year,ji1,compare)
      else
        @AgriculturalInputs2s = AgriculturalInputs2.search(params[:search],compare,year,rain_fall_type)
        a = AgriculturalInputs2.query(@AgriculturalInputs2s,params[:year],rain_fall_type,views,ji,compare)
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
    AgriculturalInputs2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /agricultural_inputs2s/1/edit
  def edit
  end

  # POST /agricultural_inputs2s
  def create
    @agricultural_inputs2 = AgriculturalInputs2.new(agricultural_inputs2_params)

    if @agricultural_inputs2.save
      redirect_to @agricultural_inputs2, notice: 'Agricultural inputs2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /agricultural_inputs2s/1
  def update
    if @agricultural_inputs2.update(agricultural_inputs2_params)
      redirect_to @agricultural_inputs2, notice: 'Agricultural inputs2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /agricultural_inputs2s/1
  def destroy
    @agricultural_inputs2.destroy
    redirect_to agricultural_inputs2s_url, notice: 'Agricultural inputs2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agricultural_inputs2
      @agricultural_inputs2 = AgriculturalInputs2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def agricultural_inputs2_params
      params.require(:agricultural_inputs2).permit(:Year, :Type_of_Fertilizer, :Urea, :DAP, :SSP, :MOP, :Ammonium_Sulphate, :Complex, :Sub_Total, :N, :P, :K, :Total_NPK, :Grand_Total, :Consumption_of_Fertilizer)
    end
end
