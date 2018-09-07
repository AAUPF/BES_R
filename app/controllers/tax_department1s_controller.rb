class TaxDepartment1sController < ApplicationController
  before_action :set_tax_department1, only: [:show, :edit, :update, :destroy]

  # GET /tax_department1s
  def index
    @tax_department1s = TaxDepartment1.all
  end

  # GET /tax_department1s/1
  def show
  end

  # GET /tax_department1s/new
  def new
    @tax_department1 = TaxDepartment1.new
  end

def test
  ji = [:"BST/VAT", :"CST", :"ENT", :"ED", :"ADV", :"HLT", :"ET", :"PT"]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
search = params[:search]
ji1 = [:"Year", :"BST/VAT", :"CST", :"ENT", :"ED", :"ADV", :"HLT", :"ET", :"PT", :"Total"]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = TaxDepartment1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = TaxDepartment1.map(b,params[:year],rain_fall_type,views)
         else
          b = TaxDepartment1.map_search(params[:search],compare,year,rain_fall_type)
          a = TaxDepartment1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = TaxDepartment1.search(params[:search],compare,year,rain_fall_type)
        a = TaxDepartment1.table(b,rain_fall_type,year,ji1,compare)
      else
        @TaxDepartment1s = TaxDepartment1.search(params[:search],compare,year,rain_fall_type)
        a = TaxDepartment1.query(@TaxDepartment1s,params[:year],rain_fall_type,views,ji,compare)
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
    TaxDepartment1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /tax_department1s/1/edit
  def edit
  end

  # POST /tax_department1s
  def create
    @tax_department1 = TaxDepartment1.new(tax_department1_params)

    if @tax_department1.save
      redirect_to @tax_department1, notice: 'Tax department1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tax_department1s/1
  def update
    if @tax_department1.update(tax_department1_params)
      redirect_to @tax_department1, notice: 'Tax department1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tax_department1s/1
  def destroy
    @tax_department1.destroy
    redirect_to tax_department1s_url, notice: 'Tax department1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tax_department1
      @tax_department1 = TaxDepartment1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tax_department1_params
      params.require(:tax_department1).permit(:Year, :BST/VAT, :CST, :ENT, :ED, :ADV, :HLT, :ET, :PT, :Total)
    end
end
