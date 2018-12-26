class Health3sController < ApplicationController
  before_action :set_health3, only: [:show, :edit, :update, :destroy]

  # GET /health3s
  def index
    @health3s = Health3.all
  end

  # GET /health3s/1
  def show
  end

  # GET /health3s/new
  def new
    @health3 = Health3.new
  end

def test
  ji = [:Crude_Birth_Rate, :Infant_Mortality_Rate, :Child_Mortality_Rate, :Under_Five_Mortality_Rate, :Neo_Natal_Mortality_Rate, :Total_Fertility_Rate, :Total_Marital_Fertility_Rate]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   month = params[:month]
   search = params[:search]
   legend = "Area"
  legend1 = "Region"
  
ji1 = [:Year, :Area, :Crude_Birth_Rate, :Infant_Mortality_Rate, :Child_Mortality_Rate, :Under_Five_Mortality_Rate, :Neo_Natal_Mortality_Rate, :Total_Fertility_Rate, :Total_Marital_Fertility_Rate, :Region]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")
         if rain_fall_type  ==  "All"
          b = Health3.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Health3.map(b,params[:year],rain_fall_type,views)
         else
          b = Health3.map_search(params[:search],compare,year,rain_fall_type,month)
          a = Health3.map(b,rain_fall_type,year,ji,month)
         end
      elsif views == "Table"
        # b = Health3.search(params[:search],compare,year,rain_fall_type,month)
        # a = Health3.table(b,rain_fall_type,year,ji1,compare,search,month)
        b = Health3.search(params[:search],compare,year,rain_fall_type,legend,legend1)
        a = Health3.table(b,rain_fall_type,year,ji1,compare)
      else
        # @Health3s = Health3.search(params[:search],compare,year,rain_fall_type,month)
        # a = Health3.query(@Health3s,params[:year],rain_fall_type,views,ji,compare,month,search)
        @Health3s = Health3.search(params[:search],compare,year,rain_fall_type,legend,legend1)
        a = Health3.query(@Health3s,params[:year],rain_fall_type,views,ji,compare)
      end
      respond_to do |format|
        format.html { render json: a }
    end

  else
    respond_to do |format|
      format.html { render json: "error"}
  end
  end

end


  def import
    # Module1.import(params[:file])
    Health3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /health3s/1/edit
  def edit
  end

  # POST /health3s
  def create
    @health3 = Health3.new(health3_params)

    if @health3.save
      redirect_to @health3, notice: 'Health3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /health3s/1
  def update
    if @health3.update(health3_params)
      redirect_to @health3, notice: 'Health3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /health3s/1
  def destroy
    @health3.destroy
    redirect_to health3s_url, notice: 'Health3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health3
      @health3 = Health3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def health3_params
      params.require(:health3).permit(:Year, :Area, :Crude_Birth_Rate, :Infant_Mortality_Rate, :Child_Mortality_Rate, :Under_Five_Mortality_Rate, :Neo_Natal_Mortality_Rate, :Total_Fertility_Rate, :Total_Marital_Fertility_Rate, :Region)
    end
end
