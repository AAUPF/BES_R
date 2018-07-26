# frozen_string_literal: true

class ProductionAndProductivityOfRicesController < ApplicationController
  before_action :set_production_and_productivity_of_rice, only: %i[show edit update destroy]

  # GET /production_and_productivity_of_rices
  def index
    @production_and_productivity_of_rices = ProductionAndProductivityOfRice.all
  end

  # GET /production_and_productivity_of_rices/1
  def show; end

  # GET /production_and_productivity_of_rices/new
  def new
    @production_and_productivity_of_rice = ProductionAndProductivityOfRice.new
  end

  #   def test

  #     ji = [:Districts, :Area, :Production, :Productivity, :Year]
  #     rain_fall_type = params[:rain_fall_type]
  #      views  = params[:views]
  #      year  = ""
  #      compare = params[:compare]

  #     if rain_fall_type || views

  #         if views == "Map View"
  #           l =  rain_fall_type.gsub(" ","")
  #           if year == "2016"
  #             j = "#{l}_2016"
  #           elsif year == "2017"
  #             j = "#{l}_2017"
  #           else
  #             puts "no year"
  #           end

  #            if rain_fall_type  ==  "All"

  #             if year == "2016"
  #               j = "Total_2016"
  #             elsif year == "2017"
  #               j = "Total_2017"
  #             else
  #               puts "no year"
  #             end
  #             b = ProductionAndProductivityOfRice.map_search(rain_fall_type)
  #             u = "Total"
  #             a = ProductionAndProductivityOfRice.map(b,u,year)
  #            else
  #             b = ProductionAndProductivityOfRice.map_search(rain_fall_type)
  #             a = ProductionAndProductivityOfRice.map(b,rain_fall_type,year)
  #            end
  #         elsif views == "Table"
  #           b = ProductionAndProductivityOfRice.search(params[:search],compare)

  #           a = ProductionAndProductivityOfRice.table(b,rain_fall_type,year)
  #         else
  #           @ProductionAndProductivityOfRices = ProductionAndProductivityOfRice.search(params[:search],compare)
  #           a = ProductionAndProductivityOfRice.query(@ProductionAndProductivityOfRices,params[:year],rain_fall_type,views,compare,ji)
  #         end

  #         respond_to do |format|
  #           format.html { render json:a }
  #       end

  #     else
  #       respond_to do |format|
  #         format.html { render json: "error"}
  #     end
  #   end

  # end

  def test
    ji = %i[Area Production Productivity]
    rain_fall_type = params[:rain_fall_type]
    views = params[:views]
    year = params[:year]
    compare = params[:compare]

    ji1 = %i[Districts Area Production Productivity]

    if rain_fall_type || views

      if views == 'Map View'
        l = rain_fall_type.delete(' ')
        if rain_fall_type == 'All'
          b = ProductionAndProductivityOfRice.map_search('All', compare, year, rain_fall_type)
          u = 'Total'
          a = ProductionAndProductivityOfRice.map(b, params[:year], rain_fall_type, views)
        else
          b = ProductionAndProductivityOfRice.map_search(params[:search], compare, year, rain_fall_type)
          a = ProductionAndProductivityOfRice.map(b, rain_fall_type, year, ji)
        end
      elsif views == 'Table'
        b = ProductionAndProductivityOfRice.search(params[:search], compare, year, rain_fall_type)
        a = ProductionAndProductivityOfRice.table(b, rain_fall_type, year, ji1, compare)
      else
        @ProductionAndProductivityOfRices = ProductionAndProductivityOfRice.search(params[:search], compare, year, rain_fall_type)
        a = ProductionAndProductivityOfRice.query(@ProductionAndProductivityOfRices, params[:year], rain_fall_type, views, ji, compare)
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
    ProductionAndProductivityOfRice.import1(params[:file])
    redirect_to tests_path, notice: 'Products imported.'
  end

  # GET /production_and_productivity_of_rices/1/edit
  def edit; end

  # POST /production_and_productivity_of_rices
  def create
    @production_and_productivity_of_rice = ProductionAndProductivityOfRice.new(production_and_productivity_of_rice_params)

    if @production_and_productivity_of_rice.save
      redirect_to @production_and_productivity_of_rice, notice: 'Production and productivity of rice was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /production_and_productivity_of_rices/1
  def update
    if @production_and_productivity_of_rice.update(production_and_productivity_of_rice_params)
      redirect_to @production_and_productivity_of_rice, notice: 'Production and productivity of rice was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /production_and_productivity_of_rices/1
  def destroy
    @production_and_productivity_of_rice.destroy
    redirect_to production_and_productivity_of_rices_url, notice: 'Production and productivity of rice was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_production_and_productivity_of_rice
    @production_and_productivity_of_rice = ProductionAndProductivityOfRice.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def production_and_productivity_of_rice_params
    params.require(:production_and_productivity_of_rice).permit(:Districts, :Area, :Production, :Productivity, :Year)
  end
end
