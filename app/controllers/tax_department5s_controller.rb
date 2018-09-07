class TaxDepartment5sController < ApplicationController
  before_action :set_tax_department5, only: [:show, :edit, :update, :destroy]

  # GET /tax_department5s
  def index
    @tax_department5s = TaxDepartment5.all
  end

  # GET /tax_department5s/1
  def show
  end

  # GET /tax_department5s/new
  def new
    @tax_department5 = TaxDepartment5.new
  end

def test
  ji = [:Number_of_Document, :Total_Receipt, :Target, :Percentage_receipt_against_target, :Receipt_per_Document]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1  = [:Districts, :Number_of_Document, :Total_Receipt, :Target, :Percentage_receipt_against_target, :Receipt_per_Document]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = TaxDepartment5.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = TaxDepartment5.map(b,params[:year],rain_fall_type,views)
         else
          b = TaxDepartment5.map_search(params[:search],compare,year,rain_fall_type)
          a = TaxDepartment5.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = TaxDepartment5.search(params[:search],compare,year,rain_fall_type)
        a = TaxDepartment5.table(b,rain_fall_type,year,ji1,compare)
      else
        @TaxDepartment5s = TaxDepartment5.search(params[:search],compare,year,rain_fall_type)
        a = TaxDepartment5.query(@TaxDepartment5s,params[:year],rain_fall_type,views,ji,compare)
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
    TaxDepartment5.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /tax_department5s/1/edit
  def edit
  end

  # POST /tax_department5s
  def create
    @tax_department5 = TaxDepartment5.new(tax_department5_params)

    if @tax_department5.save
      redirect_to @tax_department5, notice: 'Tax department5 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tax_department5s/1
  def update
    if @tax_department5.update(tax_department5_params)
      redirect_to @tax_department5, notice: 'Tax department5 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tax_department5s/1
  def destroy
    @tax_department5.destroy
    redirect_to tax_department5s_url, notice: 'Tax department5 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tax_department5
      @tax_department5 = TaxDepartment5.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tax_department5_params
      params.require(:tax_department5).permit(:Districts, :Number_of_Document, :Total_Receipt, :Target, :Percentage_receipt_against_target, :Receipt_per_Document)
    end
end
