class TaxDepartment2sController < ApplicationController
  before_action :set_tax_department2, only: [:show, :edit, :update, :destroy]

  # GET /tax_department2s
  def index
    @tax_department2s = TaxDepartment2.all

    respond_to do |format|
      format.html { render json: @tax_department2s }
    end

  end

  # GET /tax_department2s/1
  def show
  end

  # GET /tax_department2s/new
  def new
    @tax_department2 = TaxDepartment2.new
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

    if views != "Table"

      data = [
        "Total Revenue of State (Rs. crore)",
        "State’s Own Tax Revenues (Rs. crore)",
        "Revenue from Commercial Taxes (Rs. crore)",
      ]

    else

      data = [
        "Total Revenue of State (Rs. crore)",
        "State’s Own Tax Revenues (Rs. crore)",
        "Revenue from Commercial Taxes (Rs. crore)",
        "Share of Commercial Taxes in Total Revenue (Percentage)",
        "Share of Commercial Taxes in State’s Own Taxes (Percentage)",
      ]
    end
     



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
    TaxDepartment2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /tax_department2s/1/edit
  def edit
  end

  # POST /tax_department2s
  def create
    @tax_department2 = TaxDepartment2.new(tax_department2_params)

    if @tax_department2.save
      redirect_to @tax_department2, notice: 'Tax department2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tax_department2s/1
  def update
    if @tax_department2.update(tax_department2_params)
      redirect_to @tax_department2, notice: 'Tax department2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tax_department2s/1
  def destroy
    @tax_department2.destroy
    redirect_to tax_department2s_url, notice: 'Tax department2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tax_department2
      @tax_department2 = TaxDepartment2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tax_department2_params
      params.require(:tax_department2).permit(:Sector, :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17', :'2017-18_BE')
    end
end
