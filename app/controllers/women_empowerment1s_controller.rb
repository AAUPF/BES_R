class WomenEmpowerment1sController < ApplicationController
  before_action :set_women_empowerment1, only: [:show, :edit, :update, :destroy]

  # GET /women_empowerment1s
  def index
    @women_empowerment1s = WomenEmpowerment1.all
  end

  # GET /women_empowerment1s/1
  def show
  end

  # GET /women_empowerment1s/new
  def new
    @women_empowerment1 = WomenEmpowerment1.new
  end

def test
  ji = [:'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]

    search = rain_fall_type

    jip = [ :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']
    ji1 = [:Sector, :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']

    if views != "Table"
      data = [
        "Category I schemes for Women (100 percent beneficiaries)",
        "Category II schemes for Women  (30 percent beneficiaries)",
        "Total outlays for women",
        "Total Outlays for related Departments",
        "Outlays for women as a percent of total outlays of related Departments",
        "Total size of the state budget",
        "Share of outlays in the state budget (percent)",
        # "GSDP",
        "Outlays for women as percent of GSDP ",
      ]
    else
      data = [
        "Category I schemes for Women (100 percent beneficiaries)",
        "Category II schemes for Women  (30 percent beneficiaries)",
        "Total outlays for women",
        "Total Outlays for related Departments",
        "Outlays for women as a percent of total outlays of related Departments",
        "Total size of the state budget",
        "Share of outlays in the state budget (percent)",
        "GSDP",
        "Outlays for women as percent of GSDP ",
      ]
    end

      

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = WomenEmpowerment1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = WomenEmpowerment1.map(b,params[:year],rain_fall_type,views)
         else
          b = WomenEmpowerment1.map_search(params[:search],compare,year,rain_fall_type)
          a = WomenEmpowerment1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = WomenEmpowerment1.search(params[:search],compare,year,rain_fall_type)
        a = WomenEmpowerment1.table(b,rain_fall_type,year,ji1,compare, search, data)
      else
        @WomenEmpowerment1s = WomenEmpowerment1.search(params[:search],compare,year,rain_fall_type)
        a = WomenEmpowerment1.query(@WomenEmpowerment1s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
      end
      respond_to do |format|
        format.html { render json:a }
    end

  else
    respond_to do |format|
      format.html { render json: "error"}
  end
  end

end


  def import
    # Module1.import(params[:file])
    WomenEmpowerment1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /women_empowerment1s/1/edit
  def edit
  end

  # POST /women_empowerment1s
  def create
    @women_empowerment1 = WomenEmpowerment1.new(women_empowerment1_params)

    if @women_empowerment1.save
      redirect_to @women_empowerment1, notice: 'Women empowerment1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /women_empowerment1s/1
  def update
    if @women_empowerment1.update(women_empowerment1_params)
      redirect_to @women_empowerment1, notice: 'Women empowerment1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /women_empowerment1s/1
  def destroy
    @women_empowerment1.destroy
    redirect_to women_empowerment1s_url, notice: 'Women empowerment1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_women_empowerment1
      @women_empowerment1 = WomenEmpowerment1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def women_empowerment1_params
      params.require(:women_empowerment1).permit(:Details, :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17')
    end
end
