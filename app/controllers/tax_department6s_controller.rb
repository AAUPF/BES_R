class TaxDepartment6sController < ApplicationController
  before_action :set_tax_department6, only: [:show, :edit, :update, :destroy]

  # GET /tax_department6s
  def index
    @tax_department6s = TaxDepartment6.all
  end

  # GET /tax_department6s/1
  def show
  end

  # GET /tax_department6s/new
  def new
    @tax_department6 = TaxDepartment6.new
  end

def test
  ji = [:Registration_Fees, :Stamp_Fee, :Total_Receipt, :Target]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
# ji1  = [:Districts, :Number_of_Document, :Registration_Fees, :Stamp_Fee, :Total_Receipt, :Target, :Year]
if year == "All"
  ji1 = [:Districts, :"2015", :"2016"]
else
  if rain_fall_type == "Number_of_Document"
    ji1 = [:Districts, :Number_of_Document, :Year]
  elsif rain_fall_type == "Registration_Fees"
    ji1 = [:Districts, :Registration_Fees, :Year]
  elsif rain_fall_type == "Stamp_Fee"
    ji1 = [:Districts, :Stamp_Fee, :Year]
  elsif rain_fall_type == "Total_Receipt"
    ji1 = [:Districts, :Total_Receipt, :Year]
  elsif rain_fall_type == "Target"
    ji1 = [:Districts, :Target, :Year]
  else
    ji1 = [:Districts, :Number_of_Document, :Registration_Fees, :Stamp_Fee, :Total_Receipt, :Target, :Year]
  end
end
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = TaxDepartment6.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = TaxDepartment6.map(b,params[:year],rain_fall_type,views)
         else
          b = TaxDepartment6.map_search(params[:search],compare,year,rain_fall_type)
          a = TaxDepartment6.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = TaxDepartment6.search(params[:search],compare,year,rain_fall_type)
        a = TaxDepartment6.table(b,rain_fall_type,year,ji1,compare)
      else
        @TaxDepartment6s = TaxDepartment6.search(params[:search],compare,year,rain_fall_type)
        a = TaxDepartment6.query(@TaxDepartment6s,params[:year],rain_fall_type,views,ji,compare,search)
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
    TaxDepartment6.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /tax_department6s/1/edit
  def edit
  end

  # POST /tax_department6s
  def create
    @tax_department6 = TaxDepartment6.new(tax_department6_params)

    if @tax_department6.save
      redirect_to @tax_department6, notice: 'Tax department6 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tax_department6s/1
  def update
    if @tax_department6.update(tax_department6_params)
      redirect_to @tax_department6, notice: 'Tax department6 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tax_department6s/1
  def destroy
    @tax_department6.destroy
    redirect_to tax_department6s_url, notice: 'Tax department6 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tax_department6
      @tax_department6 = TaxDepartment6.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tax_department6_params
      params.require(:tax_department6).permit(:Districts, :Number_of_Document, :Registration_Fees, :Stamp_Fee, :Total_Receipt, :Target, :Year)
    end
end
