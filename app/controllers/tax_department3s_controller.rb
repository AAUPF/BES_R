class TaxDepartment3sController < ApplicationController
  before_action :set_tax_department3, only: [:show, :edit, :update, :destroy]

  # GET /tax_department3s
  def index
    @tax_department3s = TaxDepartment3.all
  end

  # GET /tax_department3s/1
  def show
  end

  # GET /tax_department3s/new
  def new
    @tax_department3 = TaxDepartment3.new
  end

def test
  ji = [:Collection, :Rate_of_Growth]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
# ji1 = [:Name_of_Commodity, :Collection, :Rate_of_Growth, :Year]
if year == "All"
  ji1 = [:Name_of_Commodity,:"2012-13", :"2013-14",:"2014-15",:"2015-16",:"2016-17"]
 else
  if rain_fall_type == "Collection"
    ji1 = [:Name_of_Commodity, :Collection, :Year]
  elsif rain_fall_type == "Rate_of_Growth"
    ji1 = [:Name_of_Commodity, :Rate_of_Growth, :Year]
  else
    ji1 = [:Name_of_Commodity, :Collection, :Rate_of_Growth, :Year]
  end

 end
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = TaxDepartment3.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = TaxDepartment3.map(b,params[:year],rain_fall_type,views)
         else
          b = TaxDepartment3.map_search(params[:search],compare,year,rain_fall_type)
          a = TaxDepartment3.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = TaxDepartment3.search(params[:search],compare,year,rain_fall_type)
        a = TaxDepartment3.table(b,rain_fall_type,year,ji1,compare)
      else
        @TaxDepartment3s = TaxDepartment3.search(params[:search],compare,year,rain_fall_type)
        a = TaxDepartment3.query(@TaxDepartment3s,params[:year],rain_fall_type,views,ji,compare,search)
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
    TaxDepartment3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /tax_department3s/1/edit
  def edit
  end

  # POST /tax_department3s
  def create
    @tax_department3 = TaxDepartment3.new(tax_department3_params)

    if @tax_department3.save
      redirect_to @tax_department3, notice: 'Tax department3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tax_department3s/1
  def update
    if @tax_department3.update(tax_department3_params)
      redirect_to @tax_department3, notice: 'Tax department3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tax_department3s/1
  def destroy
    @tax_department3.destroy
    redirect_to tax_department3s_url, notice: 'Tax department3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tax_department3
      @tax_department3 = TaxDepartment3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tax_department3_params
      params.require(:tax_department3).permit(:Name_of_Commodity, :Collection, :Rate_of_Growth, :Year)
    end
end
