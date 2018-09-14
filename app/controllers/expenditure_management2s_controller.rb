class ExpenditureManagement2sController < ApplicationController
  before_action :set_resource_management1, only: %i[show edit update destroy]

  # GET /resource_management1s
  def index
    @resource_management1s = ExpenditureManagement2.all

    respond_to do |format|
      format.html { render json: @resource_management1s }
    end
  end

  # GET /resource_management1s/1
  def show; end

  # GET /resource_management1s/new
  def new
    @resource_management1 = ExpenditureManagement2.new
  end

  def test
    ji = %i[Sector 2012-13 2013-14 2014-15 2015-16 2016-17 2017-18_BE]
    rain_fall_type = params[:rain_fall_type]
    views = params[:views]
    year = params[:year]
    compare = params[:compare]
    search = params[:search]

    jip = %i[2012-13 2013-14 2014-15 2015-16 2016-17 2017-18_BE]
    ji1 = %i[Sector 2012-13 2013-14 2014-15 2015-16 2016-17 2017-18_BE]
    compare = "None"

    if search == 'Revenue Account'
      if rain_fall_type == "None"
        data = [
          'Revenue Account'
        ]
      else
        data = [
          "Non-Developmental  Revenue Expenditure",
          "Developmental Revenue Expenditure",
          "General Services (Public Works)",
          "Social Services",
          "Economic Services",
        ]
      end
  

    elsif search == 'Capital Account '

      if rain_fall_type == "None"
        data = [
          'Capital Account '
        ]
      else
        data = [
          "Non-Developmental  Capital Expenditure",
          "General Service (Except Public Works)",
          "Discharge of Public Debt (General Services) ",
          "Loans and Advances by State (General Services)",
          "Developmental Capital Expenditure",
          "Capital Outlay (General Services (Public Works), Social and Economic Services)",
          "Loans and Advances by State  (Social and Economic Services)",
        ]
      end
    elsif search == 'III. Total Revenue Receipts'

      if rain_fall_type == "None"
        data = [
          'III. Total Revenue Receipts'
        ]
      else
        data = [
          'State’s Own Revenue as Percentage of Total Receipts'
        ]
      end
      

    elsif search == 'All'
      data = [
        "Revenue Account",
        "Non-Developmental  Revenue Expenditure",
        "Developmental Revenue Expenditure",
        "General Services (Public Works)",
        "Social Services",
        "Economic Services",
        "Capital Account ",
        "Non-Developmental  Capital Expenditure",
        "General Service (Except Public Works)",
        "Discharge of Public Debt (General Services) ",
        "Loans and Advances by State (General Services)",
        "Developmental Capital Expenditure",
        "Capital Outlay (General Services (Public Works), Social and Economic Services)",
        "Loans and Advances by State  (Social and Economic Services)",
        "Total Non- Developmental Expenditure ",
        "Total Developmental Expenditure",
        "Total Expenditure ",
      ]
    end

    if rain_fall_type || views

      if views == 'Map View'
        l = rain_fall_type.delete(' ')
        if rain_fall_type == 'All'
          b = ExpenditureManagement2.map_search('All', compare, year, rain_fall_type)
          u = 'Total'
          a = ExpenditureManagement2.map(b, params[:year], rain_fall_type, views)
        else
          b = ExpenditureManagement2.map_search(params[:search], compare, year, rain_fall_type)
          a = ExpenditureManagement2.map(b, rain_fall_type, year, ji)
         end
      elsif views == 'Table'
        b = ExpenditureManagement2.search(params[:search], compare, year, rain_fall_type)
        a = ExpenditureManagement2.table(b, rain_fall_type, year, ji1, compare, search, data)
      else
        @ExpenditureManagement2s = ExpenditureManagement2.search(params[:search], compare, year, rain_fall_type)
        a = ExpenditureManagement2.query(@ExpenditureManagement2s, params[:year], rain_fall_type, views, ji, compare, search, data, jip)
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
    ExpenditureManagement2.import1(params[:file])
    redirect_to tests_path, notice: 'Products imported.'
  end

  # GET /resource_management1s/1/edit
  def edit; end

  # POST /resource_management1s
  def create
    @resource_management1 = ExpenditureManagement2.new(resource_management1_params)

    if @resource_management1.save
      redirect_to @resource_management1, notice: 'Resource management1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /resource_management1s/1
  def update
    if @resource_management1.update(resource_management1_params)
      redirect_to @resource_management1, notice: 'Resource management1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /resource_management1s/1
  def destroy
    @resource_management1.destroy
    redirect_to resource_management1s_url, notice: 'Resource management1 was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_resource_management1
    @resource_management1 = ExpenditureManagement2.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def resource_management1_params
    params.require(:resource_management1).permit(:Sector, :"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17", :"2017-18_BE")
  end
end
