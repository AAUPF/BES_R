class AgriculturalInputs6sController < ApplicationController
  before_action :set_agricultural_inputs6, only: [:show, :edit, :update, :destroy]

  # GET /agricultural_inputs6s
  def index
    @agricultural_inputs6s = AgriculturalInputs6.all
  end

  # GET /agricultural_inputs6s/1
  def show
  end

  # GET /agricultural_inputs6s/new
  def new
    @agricultural_inputs6 = AgriculturalInputs6.new
  end

def test
  ji = [:Target_Physical, :Target_Financial, :Achievement_Physical, :Achievement_Financial]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]


  ji1 = [:Districts, :Target_Physical, :Target_Financial, :Achievement_Physical, :Achievement_Financial]

  units = [{Target_Physical: "Hectare" },{Target_Financial: "Lakh" },{Achievement_Physical: "Hectare" },{Achievement_Financial: "Lakh" }]

  if rain_fall_type == "Target_Physical"
    unit1 =  units[0][:Target_Physical]
  elsif rain_fall_type == "Target_Financial"
    unit1 =  units[1][:Target_Financial]
  elsif rain_fall_type == "Achievement_Physical"
    unit1 =  units[2][:Achievement_Physical]
  elsif rain_fall_type == "Achievement_Financial"
    unit1 =  units[3][:Achievement_Financial]
  else
end



  if rain_fall_type == 'Target_Physical'
    ranges = NewricesHelper.ranges1(45,29,20,15,10,5,0)
  elsif rain_fall_type == 'Target_Financial'
    ranges =  NewricesHelper.ranges1(45,25,20,15,10,5,0)
  elsif rain_fall_type == 'Achievement_Physical'
    ranges =  NewricesHelper.ranges1(1400,1200,1100,900,700,500,300)
  elsif rain_fall_type == 'Achievement_Financial'
    ranges =  NewricesHelper.ranges1(1400,1200,1100,900,700,500,300)
  end



  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = AgriculturalInputs6.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = AgriculturalInputs6.map(b,params[:year],rain_fall_type,views)
         else
          b = AgriculturalInputs6.map_search(params[:search],compare,year,rain_fall_type)
          a = AgriculturalInputs6.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = AgriculturalInputs6.search(params[:search],compare,year,rain_fall_type)
        a = AgriculturalInputs6.table(b,rain_fall_type,year,ji1,compare)
      else
        @AgriculturalInputs6s = AgriculturalInputs6.search(params[:search],compare,year,rain_fall_type)
        a = AgriculturalInputs6.query(@AgriculturalInputs6s,params[:year],rain_fall_type,views,ji,compare,search)
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
    AgriculturalInputs6.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /agricultural_inputs6s/1/edit
  def edit
  end

  # POST /agricultural_inputs6s
  def create
    @agricultural_inputs6 = AgriculturalInputs6.new(agricultural_inputs6_params)

    if @agricultural_inputs6.save
      redirect_to @agricultural_inputs6, notice: 'Agricultural inputs6 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /agricultural_inputs6s/1
  def update
    if @agricultural_inputs6.update(agricultural_inputs6_params)
      redirect_to @agricultural_inputs6, notice: 'Agricultural inputs6 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /agricultural_inputs6s/1
  def destroy
    @agricultural_inputs6.destroy
    redirect_to agricultural_inputs6s_url, notice: 'Agricultural inputs6 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agricultural_inputs6
      @agricultural_inputs6 = AgriculturalInputs6.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def agricultural_inputs6_params
      params.require(:agricultural_inputs6).permit(:Districts, :Target_Physical, :Target_Financial, :Achievement_Physical, :Achievement_Financial, :Target_Physical_Colour, :Target_Financial_Colour, :Achievement_Physical_Colour, :Achievement_Financial_Colour)
    end
end
