class SectoralExpendituresController < ApplicationController
  before_action :set_state_domestic_product5, only: %i[show edit update destroy]

  # GET /state_domestic_product5s
  def index
    @state_domestic_product5s = SectoralExpenditure.all
    respond_to do |format|
      format.html { render json: @state_domestic_product5s }
    end
  end

  # GET /state_domestic_product5s/1
  def show; end

  # GET /state_domestic_product5s/new
  def new
    @state_domestic_product5 = SectoralExpenditure.new
  end

  def test
    ji = %i[Sector 2012-13 2013-14 2014-15 2015-16 2016-17 2017-18_BE]
    rain_fall_type = params[:rain_fall_type]
    views = params[:views]
    year = params[:year]
    compare = params[:compare]
    search = params[:search]

    ji1 = %i[Sector 2012-13 2013-14 2014-15 2015-16 2016-17 2017-18_BE]

    jip = %i[2012-13 2013-14 2014-15 2015-16 2016-17 2017-18_BE]



    if rain_fall_type == 'Revenue Expenditure (Rs. crore)'
      if compare == 'None'
        
      elsif compare == 'All'
        rain_fall_type = compare
        data = [
          '(a)  Salary component (Percentage)',
          '(b)  Non-salary component (Percentage)'
          ]
      else
        rain_fall_type = compare
      end
    elsif rain_fall_type == 'None'
      rain_fall_type
      data = [
        'Primary'
      ]
    else
      data = [
        "Total Expenditure (Rs. crore)",
        "Revenue Expenditure (Rs. crore)",
        "Capital Outlay (Rs. crore)",
        "Capital Outlay (Percentage)",
      ]
    end




    if rain_fall_type || views

      if views == 'Map View'
        l = rain_fall_type.delete(' ')
        if rain_fall_type == 'All'
          b = SectoralExpenditure.map_search('All', compare, year, rain_fall_type)
          u = 'Total'
          a = SectoralExpenditure.map(b, params[:year], rain_fall_type, views)
        else
          b = SectoralExpenditure.map_search(params[:search], compare, year, rain_fall_type)
          a = SectoralExpenditure.map(b, rain_fall_type, year, ji)
         end
      elsif views == 'Table'
        b = SectoralExpenditure.search(params[:search], compare, year, rain_fall_type)
        a = SectoralExpenditure.table(b, rain_fall_type, year, ji1, compare, search, data)
      else
        @SectoralExpenditures = SectoralExpenditure.search(params[:search], compare, year, rain_fall_type)
        a = SectoralExpenditure.query(@SectoralExpenditures, params[:year], rain_fall_type, views, ji, compare, search, data, jip)
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
    SectoralExpenditure.import1(params[:file])
    redirect_to tests_path, notice: 'Products imported.'
  end

  # GET /state_domestic_product5s/1/edit
  def edit; end

  # POST /state_domestic_product5s
  def create
    @state_domestic_product5 = SectoralExpenditure.new(state_domestic_product5_params)

    if @state_domestic_product5.save
      redirect_to @state_domestic_product5, notice: 'State domestic product5 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /state_domestic_product5s/1
  def update
    if @state_domestic_product5.update(state_domestic_product5_params)
      redirect_to @state_domestic_product5, notice: 'State domestic product5 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /state_domestic_product5s/1
  def destroy
    @state_domestic_product5.destroy
    redirect_to state_domestic_product5s_url, notice: 'State domestic product5 was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_state_domestic_product5
    @state_domestic_product5 = SectoralExpenditure.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def state_domestic_product5_params
    params.require(:state_domestic_product5).permit(:Sector, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17', :'2011-16')
  end
end
