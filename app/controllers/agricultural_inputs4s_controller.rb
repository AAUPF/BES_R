class AgriculturalInputs4sController < ApplicationController
  before_action :set_agricultural_inputs4, only: [:show, :edit, :update, :destroy]

  # GET /agricultural_inputs4s
  def index
    @agricultural_inputs4s = AgriculturalInputs4.all
  end

  # GET /agricultural_inputs4s/1
  def show
  end

  # GET /agricultural_inputs4s/new
  def new
    @agricultural_inputs4 = AgriculturalInputs4.new
  end

def test
  rain_fall_type = params[:rain_fall_type]
 # ji = [:Urea, :DAP, :SSP, :MOP, :Ammonium_Sulphate, :Complex, :Total, :N, :P, :K, :Total_NPK, :Grand_Total]
  if rain_fall_type == "All"
    ji = [:Urea, :DAP, :SSP, :MOP, :Ammonium_Sulphate, :Complex, :N, :P, :K]
  else
    ji = [:Urea, :DAP, :SSP, :MOP, :Ammonium_Sulphate, :Complex, :Total, :N, :P, :K, :Total_NPK, :Grand_Total]
  end
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

   ji1 = [:Districts, :Year, :Urea, :DAP, :SSP, :MOP, :Ammonium_Sulphate, :Complex, :Total, :N, :P, :K, :Total_NPK, :Grand_Total]

   unit1 =  "000 Tonnes"
  #  ranges = NewricesHelper.ranges1(11000,7000,4000,3000,2000,800,0)


  if year == '2015'

    if rain_fall_type == "Urea"
      ranges = NewricesHelper.ranges1(110,90,70,50,30,20,0)
         
        elsif rain_fall_type == "DAP"
          ranges = NewricesHelper.ranges1(45,25,20,15,10,5,0)
         
        elsif rain_fall_type == "SSP"
          ranges = NewricesHelper.ranges1(13,10,5,3,2,1,0)
          
        elsif rain_fall_type == "MOP"
          ranges = NewricesHelper.ranges1(19,10,7,5,3,1,0)
         
        elsif rain_fall_type == "Ammonium_Sulphate"
          ranges = NewricesHelper.ranges1(3,2,1,0.7,0.2,0.1,0)
         
        elsif rain_fall_type == "Complex"
          ranges = NewricesHelper.ranges1(25,18,12,10,7,3,0)
          
        elsif rain_fall_type == "Total"
          ranges = NewricesHelper.ranges1(200,160,130,100,80,50,10)
         
        elsif rain_fall_type == "N"
          ranges = NewricesHelper.ranges1(60,50,40,30,20,10,0)
         
        elsif rain_fall_type == "P"
          ranges = NewricesHelper.ranges1(26,15,12,10,5,2.5,0)
         
        elsif rain_fall_type == "K"
          ranges = NewricesHelper.ranges1(11,7,5,4,2,1,0)
       
        elsif rain_fall_type == "Total_NPK"
          ranges = NewricesHelper.ranges1(100,80,65,50,35,20,0)
         
        elsif rain_fall_type == "Grand_Total"
          ranges = NewricesHelper.ranges1(300,250,200,150,100,50,0)
         
        else
     end

  elsif year == '2016'

    if rain_fall_type == "Urea"
      ranges = NewricesHelper.ranges1(100,90,70,50,30,20,0)
         
        elsif rain_fall_type == "DAP"
          ranges = NewricesHelper.ranges1(45,25,20,15,10,5,0)
         
        elsif rain_fall_type == "SSP"
          ranges = NewricesHelper.ranges1(8,6,5,3,2,1,0)
          
        elsif rain_fall_type == "MOP"
          ranges = NewricesHelper.ranges1(24,21,10,7,4,2,0)
         
        elsif rain_fall_type == "Ammonium_Sulphate"
          ranges = NewricesHelper.ranges1(4.5,2,1,0.7,0.2,0.1,0)
         
        elsif rain_fall_type == "Complex"
          ranges = NewricesHelper.ranges1(24,16,12,10,7,3,0)
          
        elsif rain_fall_type == "Total"
          ranges = NewricesHelper.ranges1(190,150,130,100,80,50,10)
         
        elsif rain_fall_type == "N"
          ranges = NewricesHelper.ranges1(58,50,40,30,20,10,0)
          
        elsif rain_fall_type == "P"
          ranges = NewricesHelper.ranges1(22,17,13,10,5,2.5,0)
         
        elsif rain_fall_type == "K"
          ranges = NewricesHelper.ranges1(14,11,9,6,3,1,0)
       
        elsif rain_fall_type == "Total_NPK"
          ranges = NewricesHelper.ranges1(95,75,65,50,35,20,0)
         
        elsif rain_fall_type == "Grand_Total"
          ranges = NewricesHelper.ranges1(287,230,200,150,100,50,0)
         
        else
     end
   

  end




   if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = AgriculturalInputs4.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = AgriculturalInputs4.map(b,params[:year],rain_fall_type,views)
         else
          b = AgriculturalInputs4.map_search(params[:search],compare,year,rain_fall_type)
          a = AgriculturalInputs4.map(b,rain_fall_type,year,ji,unit1,ranges)
         end
      elsif views == "Table"  
        b = AgriculturalInputs4.search(params[:search],compare,year,rain_fall_type)
        a = AgriculturalInputs4.table(b,rain_fall_type,year,ji1,compare)
      else
        @AgriculturalInputs4s = AgriculturalInputs4.search(params[:search],compare,year,rain_fall_type)
        a = AgriculturalInputs4.query(@AgriculturalInputs4s,params[:year],rain_fall_type,views,ji,compare)
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
    AgriculturalInputs4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /agricultural_inputs4s/1/edit
  def edit
  end

  # POST /agricultural_inputs4s
  def create
    @agricultural_inputs4 = AgriculturalInputs4.new(agricultural_inputs4_params)

    if @agricultural_inputs4.save
      redirect_to @agricultural_inputs4, notice: 'Agricultural inputs4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /agricultural_inputs4s/1
  def update
    if @agricultural_inputs4.update(agricultural_inputs4_params)
      redirect_to @agricultural_inputs4, notice: 'Agricultural inputs4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /agricultural_inputs4s/1
  def destroy
    @agricultural_inputs4.destroy
    redirect_to agricultural_inputs4s_url, notice: 'Agricultural inputs4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agricultural_inputs4
      @agricultural_inputs4 = AgriculturalInputs4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def agricultural_inputs4_params
      params.require(:agricultural_inputs4).permit(:Districts, :Year, :Urea, :DAP, :SSP, :MOP, :Ammonium_Sulphate, :Complex, :Total, :N, :P, :K, :Total_NPK, :Grand_Total, :Urea_Colour, :DAP_Colour, :SSP_Colour, :MOP_Colour, :Ammonium_Sulphate_Colour, :Complex_Colour, :Total_Colour, :N_Colour, :P_Colour, :K_Colour, :Total_NPK_Colour, :Grand_Total_Colour)
    end
end
