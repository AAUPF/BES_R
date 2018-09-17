class TaxDepartment7sController < ApplicationController
  before_action :set_tax_department7, only: [:show, :edit, :update, :destroy]

  # GET /tax_department7s
  def index
    @tax_department7s = TaxDepartment7.all
  end

  # GET /tax_department7s/1
  def show
  end

  # GET /tax_department7s/new
  def new
    @tax_department7 = TaxDepartment7.new
  end


  def test
    ji = [:VAT, :CST, :ENT_Tax, :ED, :ADV_Tax, :LUX_Tax, :Entry_Tax, :Professional_Tax, :Total, :Target,]
    rain_fall_type = params[:rain_fall_type]
     views  = params[:views]
     year  = params[:year]
     compare = params[:compare]
     search = params[:search]
  
  
  
     jip = %i[2012-13 2013-14 2014-15 2015-16 2016-17 ]
     ji1 = [:Districts, :VAT, :CST, :ENT_Tax, :ED, :ADV_Tax, :LUX_Tax, :Entry_Tax, :Professional_Tax, :Total, :Target ]
    #  compare = "None"
  
     if search == 'Stamp Duty'
       if rain_fall_type == "None"
         data = [
          'Stamp Duty'
         ]
       else
         data = [
          "From Printed Non-judicial stamps",
          "From Non-judicial stamp duty deposited through Bank challan",
          "Non-Judicial adhesive stamps",
          "Non Judicial special adhesive stamp –  through  Franking machines",
          "Revenue Stamps",
          "Judicial Stamps",
         ]
       end
   
  
     elsif search == 'Registration Fees'
  
       if rain_fall_type == "None"
         data = [
           'Capital Account '
         ]
       else
         data = [
          "Fees on registration of instruments",
          "Landlord’s Registration fee",
          "Landlord’s Process fee",
          "Fee from searches of records & Non-Encumbrances",
          "Fee from certified copies",
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
        "From Printed Non-judicial stamps",
        "From Non-judicial stamp duty deposited through Bank challan",
        "Non-Judicial adhesive stamps",
        "Non Judicial special adhesive stamp –  through  Franking machines",
        "Revenue Stamps",
        "Judicial Stamps",
        "Fees on registration of instruments",
        "Landlord’s Registration fee",
        "Landlord’s Process fee",
        "Fee from searches of records & Non-Encumbrances",
        "Fee from certified copies",
       ]
     end
  
     if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = TaxDepartment7.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = TaxDepartment7.map(b,params[:year],rain_fall_type,views)
         else
          b = TaxDepartment7.map_search(params[:search],compare,year,rain_fall_type)
          a = TaxDepartment7.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = TaxDepartment7.search(params[:search],compare,year,rain_fall_type)
        a = TaxDepartment7.table(b,rain_fall_type,year,ji1,compare)
      else
        @TaxDepartment7s = TaxDepartment7.search(params[:search],compare,year,rain_fall_type)
        a = TaxDepartment7.query(@TaxDepartment7s,params[:year],rain_fall_type,views,ji,compare)
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

# def test
#   ji = [:Districts, :VAT, :CST, :ENT_Tax, :ED, :ADV_Tax, :LUX_Tax, :Entry_Tax, :Professional_Tax, :Total, :Target, :Year]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = TaxDepartment7.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = TaxDepartment7.map(b,params[:year],rain_fall_type,views)
#          else
#           b = TaxDepartment7.map_search(params[:search],compare,year,rain_fall_type)
#           a = TaxDepartment7.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = TaxDepartment7.search(params[:search],compare,year,rain_fall_type)
#         a = TaxDepartment7.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @TaxDepartment7s = TaxDepartment7.search(params[:search],compare,year,rain_fall_type)
#         a = TaxDepartment7.query(@TaxDepartment7s,params[:year],rain_fall_type,views,ji,compare)
#       end
#       respond_to do |format|
#         format.html { render json:a }
#     end

#   else
#     respond_to do |format|
#       format.html { render json: "error"}
#   end
#   end

# end


  def import
    # Module1.import(params[:file])
    TaxDepartment7.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /tax_department7s/1/edit
  def edit
  end

  # POST /tax_department7s
  def create
    @tax_department7 = TaxDepartment7.new(tax_department7_params)

    if @tax_department7.save
      redirect_to @tax_department7, notice: 'Tax department7 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tax_department7s/1
  def update
    if @tax_department7.update(tax_department7_params)
      redirect_to @tax_department7, notice: 'Tax department7 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tax_department7s/1
  def destroy
    @tax_department7.destroy
    redirect_to tax_department7s_url, notice: 'Tax department7 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tax_department7
      @tax_department7 = TaxDepartment7.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tax_department7_params
      params.require(:tax_department7).permit(:Districts, :VAT, :CST, :ENT_Tax, :ED, :ADV_Tax, :LUX_Tax, :Entry_Tax, :Professional_Tax, :Total, :Target,:Indicator, :Year)
    end
end
