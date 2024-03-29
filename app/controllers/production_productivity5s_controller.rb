# frozen_string_literal: true

class ProductionProductivity5sController < ApplicationController
  before_action :set_production_productivity5, only: %i[show edit update destroy]

  # GET /production_productivity5s
  def index
    @production_productivity5s = ProductionProductivity5.all
  end

  # GET /production_productivity5s/1
  def show; end

  # GET /production_productivity5s/new
  def new
    @production_productivity5 = ProductionProductivity5.new
  end
  
  def test
    ji = %i[Area Production]
    rain_fall_type = params[:rain_fall_type]
    views = params[:views]
    year = params[:year]
    compare = params[:compare]
    district = params[:search]
    ji1 = %i[Vegetables Area Production Year]

    if rain_fall_type || views

      if views == 'Map View'
        if rain_fall_type == 'All'
          b = ProductionProductivity5.map_search('All', compare, year, rain_fall_type)
          a = ProductionProductivity5.map(b, params[:year], rain_fall_type, views)
        else
          b = ProductionProductivity5.map_search(params[:search], compare, year, rain_fall_type)
          a = ProductionProductivity5.map(b, rain_fall_type, year, ji)
        end
      elsif views == 'Table'
        b = ProductionProductivity5.search(params[:search], compare, year, rain_fall_type)
        a = ProductionProductivity5.table(b, rain_fall_type, year, ji1, compare)
      else
        @ProductionProductivity5s = ProductionProductivity5.search(params[:search], compare, year, rain_fall_type)
        a = ProductionProductivity5.query(@ProductionProductivity5s, params[:year], rain_fall_type, views, ji, compare, district)
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
    ProductionProductivity5.import1(params[:file])
    redirect_to tests_path, notice: 'Products imported.'
  end

  # GET /production_productivity5s/1/edit
  def edit; end

  # POST /production_productivity5s
  def create
    @production_productivity5 = ProductionProductivity5.new(production_productivity5_params)

    if @production_productivity5.save
      redirect_to @production_productivity5, notice: 'Production productivity5 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /production_productivity5s/1
  def update
    if @production_productivity5.update(production_productivity5_params)
      redirect_to @production_productivity5, notice: 'Production productivity5 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /production_productivity5s/1
  def destroy
    @production_productivity5.destroy
    redirect_to production_productivity5s_url, notice: 'Production productivity5 was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_production_productivity5
    @production_productivity5 = ProductionProductivity5.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def production_productivity5_params
    params.require(:production_productivity5).permit(:Vegetables, :Area, :Production, :Year)
  end
end
