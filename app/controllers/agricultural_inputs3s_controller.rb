class AgriculturalInputs3sController < ApplicationController
  before_action :set_agricultural_inputs3, only: [:show, :edit, :update, :destroy]

  # GET /agricultural_inputs3s
  def index
    @agricultural_inputs3s = AgriculturalInputs3.all
  end

  # GET /agricultural_inputs3s/1
  def show
  end

  # GET /agricultural_inputs3s/new
  def new
    @agricultural_inputs3 = AgriculturalInputs3.new
  end

def test
  ji = [:Tractor, :Combine_Harvestors, :Zero_Tillage, :Pumpsets, :Power_Tiller, :Manually_operated_tools_implements, :Threshers]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]


   ji1 = [:Year, :Tractor, :Combine_Harvestors, :Zero_Tillage, :Pumpsets, :Power_Tiller, :Manually_operated_tools_implements, :Threshers]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = AgriculturalInputs3.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = AgriculturalInputs3.map(b,params[:year],rain_fall_type,views)
         else
          b = AgriculturalInputs3.map_search(params[:search],compare,year,rain_fall_type)
          a = AgriculturalInputs3.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = AgriculturalInputs3.search(params[:search],compare,year,rain_fall_type)
        a = AgriculturalInputs3.table(b,rain_fall_type,year,ji1,compare)
      else
        @AgriculturalInputs3s = AgriculturalInputs3.search(params[:search],compare,year,rain_fall_type)
        a = AgriculturalInputs3.query(@AgriculturalInputs3s,params[:year],rain_fall_type,views,ji,compare)
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
    AgriculturalInputs3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /agricultural_inputs3s/1/edit
  def edit
  end

  # POST /agricultural_inputs3s
  def create
    @agricultural_inputs3 = AgriculturalInputs3.new(agricultural_inputs3_params)

    if @agricultural_inputs3.save
      redirect_to @agricultural_inputs3, notice: 'Agricultural inputs3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /agricultural_inputs3s/1
  def update
    if @agricultural_inputs3.update(agricultural_inputs3_params)
      redirect_to @agricultural_inputs3, notice: 'Agricultural inputs3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /agricultural_inputs3s/1
  def destroy
    @agricultural_inputs3.destroy
    redirect_to agricultural_inputs3s_url, notice: 'Agricultural inputs3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agricultural_inputs3
      @agricultural_inputs3 = AgriculturalInputs3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def agricultural_inputs3_params
      params.require(:agricultural_inputs3).permit(:Year, :Tractor, :Combine_Harvestors, :Zero_Tillage, :Pumpsets, :Power_Tiller, :Manually_operated_tools_implements, :Threshers, :Total)
    end
end
