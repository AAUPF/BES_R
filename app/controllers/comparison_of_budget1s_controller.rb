class ComparisonOfBudget1sController < ApplicationController
  before_action :set_comparison_of_budget1, only: [:show, :edit, :update, :destroy]

  # GET /comparison_of_budget1s
  def index
    @comparison_of_budget1s = ComparisonOfBudget1.all

    respond_to do |format|
      format.html { render json: @comparison_of_budget1s }
    end
  end

  # GET /comparison_of_budget1s/1
  def show
  end

  # GET /comparison_of_budget1s/new
  def new
    @comparison_of_budget1 = ComparisonOfBudget1.new
  end

  def test
    ji = [:Sector, :'2016-17', :'2017-18_BE']
    rain_fall_type = params[:rain_fall_type]
     views  = params[:views]
     year  = params[:year]
     compare = params[:compare]
     search = params[:search]
     ji1 = [:Sector, :'2016-17', :'2017-18_BE']
     jip = [:'2016-17', :'2017-18_BE']
  
  
  
  
     data, rain_fall_type  =  Newmodulefunctions.controller_comparison(rain_fall_type,compare,search)
  

      rain_fall_type = compare
  
    if rain_fall_type || views
  
      if views == 'Map View'
        l = rain_fall_type.delete(' ')
        if rain_fall_type == 'All'
          b = ComparisonOfBudget1.map_search('All', compare, year, rain_fall_type)
          u = 'Total'
          a = ComparisonOfBudget1.map(b, params[:year], rain_fall_type, views)
        else
          b = ComparisonOfBudget1.map_search(params[:search], compare, year, rain_fall_type)
          a = ComparisonOfBudget1.map(b, rain_fall_type, year, ji)
         end
      elsif views == 'Table'
        b = ComparisonOfBudget1.single_search(params[:search], compare, year, rain_fall_type)
        a = ComparisonOfBudget1.table(b, rain_fall_type, year, ji1, compare, search, data)
      else
        @ComparisonOfBudgets = ComparisonOfBudget1.sf_search(search, compare, year, rain_fall_type)
        a = ComparisonOfBudget1.query(@ComparisonOfBudgets, params[:year], rain_fall_type, views, ji, compare, search, data, jip)
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
    ComparisonOfBudget1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /comparison_of_budget1s/1/edit
  def edit
  end

  # POST /comparison_of_budget1s
  def create
    @comparison_of_budget1 = ComparisonOfBudget1.new(comparison_of_budget1_params)

    if @comparison_of_budget1.save
      redirect_to @comparison_of_budget1, notice: 'Comparison of budget1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /comparison_of_budget1s/1
  def update
    if @comparison_of_budget1.update(comparison_of_budget1_params)
      redirect_to @comparison_of_budget1, notice: 'Comparison of budget1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /comparison_of_budget1s/1
  def destroy
    @comparison_of_budget1.destroy
    redirect_to comparison_of_budget1s_url, notice: 'Comparison of budget1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comparison_of_budget1
      @comparison_of_budget1 = ComparisonOfBudget1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comparison_of_budget1_params
      params.require(:comparison_of_budget1).permit(:Sector, :'2016-17', :'2017-18_BE', :Indicator, :Sub_sector)
    end
end
