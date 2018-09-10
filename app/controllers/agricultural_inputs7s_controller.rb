class AgriculturalInputs7sController < ApplicationController
  before_action :set_agricultural_inputs7, only: [:show, :edit, :update, :destroy]

  # GET /agricultural_inputs7s
  def index
    @agricultural_inputs7s = AgriculturalInputs7.all
  end

  # GET /agricultural_inputs7s/1
  def show
  end

  # GET /agricultural_inputs7s/new
  def new
    @agricultural_inputs7 = AgriculturalInputs7.new
  end

def test
  ji = [ :Tractor, :Combine_Harvestor, :Zero_Tillage, :Pumpset, :Power_Tiller, :Manually_Operated_Tools, :Thresher]

  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

   ji1 = [:Districts, :Tractor, :Combine_Harvestor, :Zero_Tillage, :Pumpset, :Power_Tiller, :Manually_Operated_Tools, :Thresher]

   unit1 =  "000"



   if year == '2015'

    if rain_fall_type == 'Tractor'
      ranges = NewricesHelper.ranges1(270,250,200,150,100,50,0)
    elsif rain_fall_type == 'Combine_Harvestor'
      ranges =  NewricesHelper.ranges1(40,17,11,8,5,3,0)
    elsif rain_fall_type == 'Zero_Tillage'
      ranges =  NewricesHelper.ranges1(250,170,130,100,70,40,0)
    elsif rain_fall_type == 'Pumpset'
      ranges =  NewricesHelper.ranges1(330,290,240,200,150,100,0)
    elsif rain_fall_type == 'Power_Tiller'
      ranges =  NewricesHelper.ranges1(440,320,150,70,30,10,0)
    elsif rain_fall_type == 'Manually_Operated_Tools'
      ranges =  NewricesHelper.ranges1(7200,3600,2800,1500,1000,500,0)
    elsif rain_fall_type == 'Thresher'
      ranges =  NewricesHelper.ranges1(200,160,140,100,50,20,0)
    end

  elsif year == '2016'
    if rain_fall_type == 'Tractor'
      ranges = NewricesHelper.ranges1(270,250,200,150,100,50,0)
    elsif rain_fall_type == 'Combine_Harvestor'
      ranges =  NewricesHelper.ranges1(31,17,11,8,5,3,0)
    elsif rain_fall_type == 'Zero_Tillage'
      ranges =  NewricesHelper.ranges1(158,94,45,30,20,10,0)
    elsif rain_fall_type == 'Pumpset'
      ranges =  NewricesHelper.ranges1(360,339,240,200,150,100,0)
    elsif rain_fall_type == 'Power_Tiller'
      ranges =  NewricesHelper.ranges1(280,190,70,50,30,10,0)
    elsif rain_fall_type == 'Manually_Operated_Tools'
      ranges =  NewricesHelper.ranges1(1500,1000,900,700,500,300,0)
    elsif rain_fall_type == 'Thresher'
      ranges =  NewricesHelper.ranges1(200,160,140,100,50,20,0)
    end

  end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = AgriculturalInputs7.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = AgriculturalInputs7.map(b,params[:year],rain_fall_type,views)
         else
          b = AgriculturalInputs7.map_search(params[:search],compare,year,rain_fall_type)
          a = AgriculturalInputs7.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = AgriculturalInputs7.search(params[:search],compare,year,rain_fall_type)
        a = AgriculturalInputs7.table(b,rain_fall_type,year,ji1,compare)
      else
        @AgriculturalInputs7s = AgriculturalInputs7.search(params[:search],compare,year,rain_fall_type)
        a = AgriculturalInputs7.query(@AgriculturalInputs7s,params[:year],rain_fall_type,views,ji,compare)
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
    AgriculturalInputs7.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /agricultural_inputs7s/1/edit
  def edit
  end

  # POST /agricultural_inputs7s
  def create
    @agricultural_inputs7 = AgriculturalInputs7.new(agricultural_inputs7_params)

    if @agricultural_inputs7.save
      redirect_to @agricultural_inputs7, notice: 'Agricultural inputs7 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /agricultural_inputs7s/1
  def update
    if @agricultural_inputs7.update(agricultural_inputs7_params)
      redirect_to @agricultural_inputs7, notice: 'Agricultural inputs7 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /agricultural_inputs7s/1
  def destroy
    @agricultural_inputs7.destroy
    redirect_to agricultural_inputs7s_url, notice: 'Agricultural inputs7 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agricultural_inputs7
      @agricultural_inputs7 = AgriculturalInputs7.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def agricultural_inputs7_params
      params.require(:agricultural_inputs7).permit(:Districts, :Tractor, :Combine_Harvestor, :Zero_Tillage, :Pumpset, :Power_Tiller, :Manually_Operated_Tools, :Thresher, :Year, :Tractor_Colour, :Combine_Harvestor_Colour, :Zero_Tillage_Colour, :Pumpset_Colour, :Power_Tiller_Colour, :Manually_Operated_Tools_Colour, :Thresher_Colour)
    end
end
