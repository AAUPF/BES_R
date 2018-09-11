class ExpenditureManagementsController < ApplicationController
  before_action :set_expenditure_management, only: [:show, :edit, :update, :destroy]

  # GET /expenditure_managements
  def index
    @expenditure_managements = ExpenditureManagement.all
  end

  # GET /expenditure_managements/1
  def show
  end

  # GET /expenditure_managements/new
  def new
    @expenditure_management = ExpenditureManagement.new
  end

  def test
    ji = %i[Sector 2012-13 2013-14 2014-15 2015-16 2016-17 2017-18_BE]
    rain_fall_type = params[:rain_fall_type]
    views = params[:views]
    year = params[:year]
    compare = params[:compare]
    search = params[:search]

    search = rain_fall_type

    jip = %i[2012-13 2013-14 2014-15 2015-16 2016-17 2017-18_BE]
    ji1 = %i[Sector 2012-13 2013-14 2014-15 2015-16 2016-17 2017-18_BE]

      data = [
        "Total Revenue of State (Rs. crore)",
        "State’s Own Tax Revenues (Rs. crore)",
        "Revenue from Commercial Taxes (Rs. crore)",
        "Share of Commercial Taxes in Total Revenue (Percentage)",
        "Share of Commercial Taxes in State’s Own Taxes (Percentage)",
      ]



    if rain_fall_type || views

      if views == 'Map View'
        l = rain_fall_type.delete(' ')
        if rain_fall_type == 'All'
          b = TaxDepartment2.map_search('All', compare, year, rain_fall_type)
          u = 'Total'
          a = TaxDepartment2.map(b, params[:year], rain_fall_type, views)
        else
          b = TaxDepartment2.map_search(params[:search], compare, year, rain_fall_type)
          a = TaxDepartment2.map(b, rain_fall_type, year, ji)
         end
      elsif views == 'Table'
        b = TaxDepartment2.search(params[:search], compare, year, rain_fall_type)
        a = TaxDepartment2.table(b, rain_fall_type, year, ji1, compare, search, data)
      else
        @TaxDepartment2s = TaxDepartment2.search(params[:search], compare, year, rain_fall_type)
        a = TaxDepartment2.query(@TaxDepartment2s, params[:year], rain_fall_type, views, ji, compare, search, data, jip)
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
    ExpenditureManagement.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /expenditure_managements/1/edit
  def edit
  end

  # POST /expenditure_managements
  def create
    @expenditure_management = ExpenditureManagement.new(expenditure_management_params)

    if @expenditure_management.save
      redirect_to @expenditure_management, notice: 'Expenditure management was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /expenditure_managements/1
  def update
    if @expenditure_management.update(expenditure_management_params)
      redirect_to @expenditure_management, notice: 'Expenditure management was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /expenditure_managements/1
  def destroy
    @expenditure_management.destroy
    redirect_to expenditure_managements_url, notice: 'Expenditure management was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expenditure_management
      @expenditure_management = ExpenditureManagement.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def expenditure_management_params
      params.require(:expenditure_management).permit(:Sector, :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17', :'2017-18_BE')
    end
end
