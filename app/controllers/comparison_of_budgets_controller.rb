class ComparisonOfBudgetsController < ApplicationController
  include Newmodulefunctions
  before_action :set_comparison_of_budget, only: [:show, :edit, :update, :destroy]

  # GET /comparison_of_budgets
  def index
    @comparison_of_budgets = ComparisonOfBudget.all

    respond_to do |format|
      format.html { render json:  @comparison_of_budgets }
    end

  end

  # GET /comparison_of_budgets/1
  def show
  end

  # GET /comparison_of_budgets/new
  def new
    @comparison_of_budget = ComparisonOfBudget.new
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


  if rain_fall_type || views

    if views == 'Map View'
      l = rain_fall_type.delete(' ')
      if rain_fall_type == 'All'
        b = ComparisonOfBudget.map_search('All', compare, year, rain_fall_type)
        u = 'Total'
        a = ComparisonOfBudget.map(b, params[:year], rain_fall_type, views)
      else
        b = ComparisonOfBudget.map_search(params[:search], compare, year, rain_fall_type)
        a = ComparisonOfBudget.map(b, rain_fall_type, year, ji)
       end
    elsif views == 'Table'
      b = ComparisonOfBudget.single_search(params[:search], compare, year, rain_fall_type)
      a = ComparisonOfBudget.table(b, rain_fall_type, year, ji1, compare, search, data)
    else
      @ComparisonOfBudgets = ComparisonOfBudget.single_search(params[:search], compare, year, rain_fall_type)
      a = ComparisonOfBudget.query(@ComparisonOfBudgets, params[:year], rain_fall_type, views, ji, compare, search, data, jip)
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
    ComparisonOfBudget.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /comparison_of_budgets/1/edit
  def edit
  end

  # POST /comparison_of_budgets
  def create
    @comparison_of_budget = ComparisonOfBudget.new(comparison_of_budget_params)

    if @comparison_of_budget.save
      redirect_to @comparison_of_budget, notice: 'Comparison of budget was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /comparison_of_budgets/1
  def update
    if @comparison_of_budget.update(comparison_of_budget_params)
      redirect_to @comparison_of_budget, notice: 'Comparison of budget was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /comparison_of_budgets/1
  def destroy
    @comparison_of_budget.destroy
    redirect_to comparison_of_budgets_url, notice: 'Comparison of budget was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comparison_of_budget
      @comparison_of_budget = ComparisonOfBudget.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comparison_of_budget_params
      params.require(:comparison_of_budget).permit(:Sector, :'2016-17', :'2017-18_BE')
    end
end
