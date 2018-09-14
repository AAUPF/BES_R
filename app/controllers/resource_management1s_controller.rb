class ResourceManagement1sController < ApplicationController
  before_action :set_resource_management1, only: %i[show edit update destroy]

  # GET /resource_management1s
  def index
    @resource_management1s = ResourceManagement1.all

    respond_to do |format|
      format.html { render json: @resource_management1s }
    end
  end

  # GET /resource_management1s/1
  def show; end

  # GET /resource_management1s/new
  def new
    @resource_management1 = ResourceManagement1.new
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

    if search == 'I.    State’s Own Revenue'
      if rain_fall_type == "None"
        data = [
          'I.    State’s Own Revenue'
        ]
      else
        data = [
          '(a) Tax Revenue',
          '(b)  Non-Tax Revenue'
        ]
      end
  

    elsif search == 'II.  Receipts from Centre'

      if rain_fall_type == "None"
        data = [
          'II.  Receipts from Centre'
        ]
      else
        data = [
          '(a)  Share of Divisible Taxes',
          '(b) Grants-in-aid'
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
        '(a) Tax Revenue',
        '(b)  Non-Tax Revenue',
        '(a)  Share of Divisible Taxes',
        '(b) Grants-in-aid',
        'State’s Own Revenue as Percentage of Total Receipts'
      ]
    end

    if rain_fall_type || views

      if views == 'Map View'
        l = rain_fall_type.delete(' ')
        if rain_fall_type == 'All'
          b = ResourceManagement1.map_search('All', compare, year, rain_fall_type)
          u = 'Total'
          a = ResourceManagement1.map(b, params[:year], rain_fall_type, views)
        else
          b = ResourceManagement1.map_search(params[:search], compare, year, rain_fall_type)
          a = ResourceManagement1.map(b, rain_fall_type, year, ji)
         end
      elsif views == 'Table'
        b = ResourceManagement1.search(params[:search], compare, year, rain_fall_type)
        a = ResourceManagement1.table(b, rain_fall_type, year, ji1, compare, search, data)
      else
        @ResourceManagement1s = ResourceManagement1.search(params[:search], compare, year, rain_fall_type)
        a = ResourceManagement1.query(@ResourceManagement1s, params[:year], rain_fall_type, views, ji, compare, search, data, jip)
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
    ResourceManagement1.import1(params[:file])
    redirect_to tests_path, notice: 'Products imported.'
  end

  # GET /resource_management1s/1/edit
  def edit; end

  # POST /resource_management1s
  def create
    @resource_management1 = ResourceManagement1.new(resource_management1_params)

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
    @resource_management1 = ResourceManagement1.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def resource_management1_params
    params.require(:resource_management1).permit(:Sector, :"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17", :"2017-18_BE")
  end
end
