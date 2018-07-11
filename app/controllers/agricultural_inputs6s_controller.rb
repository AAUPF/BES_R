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
        b = AgriculturalInputs6.search(params[:search],compare,year)
        a = AgriculturalInputs6.table(b,rain_fall_type,year)
      else
        @AgriculturalInputs6s = AgriculturalInputs6.search(params[:search],compare,year,rain_fall_type)
        a = AgriculturalInputs6.query(@AgriculturalInputs6s,params[:year],rain_fall_type,views,ji,compare)
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
      params.require(:agricultural_inputs6).permit(:Districts, :Target_Physical, :Target_Financial, :Achievement_Physical, :Achievement_Financial, :Year)
    end
end
