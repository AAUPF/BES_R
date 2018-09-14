class QualityofexpendituresController < ApplicationController
  before_action :set_expenditure_management, only: [:show, :edit, :update, :destroy]

  # GET /expenditure_managements
  def index
    @expenditure_managements = Qualityofexpenditure.all

    respond_to do |format|
      format.html { render json: @expenditure_managements }
    end
  end

  # GET /expenditure_managements/1
  def show
  end

  # GET /expenditure_managements/new
  def new
    @expenditure_management = Qualityofexpenditure.new
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

    if search == "Expenditure on Social/ Economic Services (Rs. crore)"
      if rain_fall_type == "None"
        data = [
          "Expenditure on Social/ Economic Services (Rs. crore)"
        ]
      
      else
        data = [
          "(i) Salary Component (Rs. crore)",
          "Salary component (Percentage)",
          "(ii)  Non salary component (Rs. crore)",
          "Non-salary component (Percentage)",
          "Capital Outlay/ Total Expenditure (Percentage)",
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
      # abort("error")
      rain_fall_type = "All"
      data = [
        "Capital Outlay (Rs. crore)",
        "Revenue Expenditure (Rs. crore)",
        "Expenditure on Social/ Economic Services (Rs. crore)",
        "(i) Salary Component (Rs. crore)",
        "Salary component (Percentage)",
        "(ii)  Non salary component (Rs. crore)",
        "Non-salary component (Percentage)",
        "Capital Outlay/ Total Expenditure (Percentage)",
        "Revenue Expenditure / Total Expenditure (Percentage)",
        "Revenue Expenditure /GSDP (Percentage)",
        "Capital Outlay /GSDP (Percentage)",
      ]

    else
      data = [search]
    end

    if rain_fall_type || views

      if views == 'Map View'
        l = rain_fall_type.delete(' ')
        if rain_fall_type == 'All'
          b = Qualityofexpenditure.map_search('All', compare, year, rain_fall_type)
          u = 'Total'
          a = Qualityofexpenditure.map(b, params[:year], rain_fall_type, views)
        else
          b = Qualityofexpenditure.map_search(params[:search], compare, year, rain_fall_type)
          a = Qualityofexpenditure.map(b, rain_fall_type, year, ji)
         end
      elsif views == 'Table'
        b = Qualityofexpenditure.search(params[:search], compare, year, rain_fall_type)
        a = Qualityofexpenditure.table(b, rain_fall_type, year, ji1, compare, search, data)
      else
        @Qualityofexpenditures = Qualityofexpenditure.search(params[:search], compare, year, rain_fall_type)
        a = Qualityofexpenditure.query(@Qualityofexpenditures, params[:year], rain_fall_type, views, ji, compare, search, data, jip)
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
    Qualityofexpenditure.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /expenditure_managements/1/edit
  def edit
  end

  # POST /expenditure_managements
  def create
    @expenditure_management = Qualityofexpenditure.new(expenditure_management_params)

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
      @expenditure_management = Qualityofexpenditure.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def expenditure_management_params
      params.require(:expenditure_management).permit(:Sector, :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17', :'2017-18_BE', :'2012-17')
    end
end
