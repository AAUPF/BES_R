class AgriculturalInputs5sController < ApplicationController
  before_action :set_agricultural_inputs5, only: %i[show edit update destroy]

  # GET /agricultural_inputs5s
  def index
    @agricultural_inputs5s = AgriculturalInputs5.all
  end

  # GET /agricultural_inputs5s/1
  def show; end

  # GET /agricultural_inputs5s/new
  def new
    @agricultural_inputs5 = AgriculturalInputs5.new
  end

  def test
    ji = %i[Districts Target_Physical Target_Financial Achievement_Physical 
      Achievement_Financial Target_Physical_Colour 
      Target_Financial_Colour Achievement_Physical_Colour 
      Achievement_Financial_Colour]
    rain_fall_type = params[:rain_fall_type]
    views = params[:views]
    year = params[:year]
    compare = params[:compare]

    if rain_fall_type || views

      if views == 'Map View'
        if rain_fall_type == 'All'
          b = AgriculturalInputs5.map_search('All', compare, year, rain_fall_type)
          a = AgriculturalInputs5.map(b, params[:year], rain_fall_type, views)
        else
          b = AgriculturalInputs5.map_search(params[:search], compare, year, rain_fall_type)
          a = AgriculturalInputs5.map(b, rain_fall_type, year, ji)
        end
      elsif views == 'Table'
        b = AgriculturalInputs5.search(params[:search], compare, year)
        a = AgriculturalInputs5.table(b, rain_fall_type, year)
      else
        @Agricultural_Inputs5s = AgriculturalInputs5.search(params[:search], compare, year, rain_fall_type)
        a = AgriculturalInputs5.query(@AgriculturalInputs5s, params[:year], rain_fall_type, views, ji, compare)
      end
      respond_to do |format|
        format.html { render json: a }
      end

    else
      respond_to do |format|
        format.html { render json: 'error' }
      end
    end
  end

  def import
    # Module1.import(params[:file])
    AgriculturalInputs5.import1(params[:file])
    redirect_to tests_path, notice: 'Products imported.'
  end

  # GET /agricultural_inputs5s/1/edit
  def edit; end

  # POST /agricultural_inputs5s
  def create
    @agricultural_inputs5 = AgriculturalInputs5.new(agricultural_inputs5_params)

    if @agricultural_inputs5.save
      redirect_to @agricultural_inputs5, notice: 'Agricultural inputs5 '
    else
      render :new
    end
  end

  # PATCH/PUT /agricultural_inputs5s/1
  def update
    if @agricultural_inputs5.update(agricultural_inputs5_params)
      redirect_to @agricultural_inputs5, notice: 'Agricultural '
    else
      render :edit
    end
  end

  # DELETE /agricultural_inputs5s/1
  def destroy
    @agricultural_inputs5.destroy
    redirect_to agricultural_inputs5s_url, notice: 'Agricultural inputs5 was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_agricultural_inputs5
    @agricultural_inputs5 = AgriculturalInputs5.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def agricultural_inputs5_params
    params.require(:agricultural_inputs5).permit(:Districts, :Target_Physical, :Target_Financial, :Achievement_Physical, :Achievement_Financial, :Target_Physical_Colour, :Target_Financial_Colour, :Achievement_Physical_Colour, :Achievement_Financial_Colour)
  end
end
