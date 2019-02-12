class TaxDepartment4sController < ApplicationController
  before_action :set_tax_department4, only: [:show, :edit, :update, :destroy]

  # GET /tax_department4s
  def index
    @tax_department4s = TaxDepartment4.all

    respond_to do |format|
      format.html { render json:@tax_department4s }
  end
  end

  # GET /tax_department4s/1
  def show
  end

  # GET /tax_department4s/new
  def new
    @tax_department4 = TaxDepartment4.new
  end

# def test
#   ji = [:Sector, :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]
#    search = params[:search]



#    jip = %i[2012-13 2013-14 2014-15 2015-16 2016-17 ]
#    ji1 = %i[Sector 2012-13 2013-14 2014-15 2015-16 ]
#    compare = "None"

#   #  if search == 'Stamp Duty'
#   #    if rain_fall_type == "None"
#   #      data = [
#   #       'Stamp Duty'
#   #      ]
#   #    else
#   #      data = [
#   #       "From Printed Non-judicial stamps",
#   #       "From Non-judicial stamp duty deposited through Bank challan",
#   #       "Non-Judicial adhesive stamps",
#   #       "Non Judicial special adhesive stamp –  through  Franking machines",
#   #       "Revenue Stamps",
#   #       "Judicial Stamps",
#   #      ]
#   #    end
 

#   #  elsif search == 'Registration Fees'

#   #    if rain_fall_type == "None"
#   #      data = [
#   #        'Capital Account '
#   #      ]
#   #    else
#   #      data = [
#   #       "Fees on registration of instruments",
#   #       "Landlord’s Registration fee",
#   #       "Landlord’s Process fee",
#   #       "Fee from searches of records & Non-Encumbrances",
#   #       "Fee from certified copies",
#   #      ]
#   #    end
#   #  elsif search == 'III. Total Revenue Receipts'

#   #    if rain_fall_type == "None"
#   #      data = [
#   #        'III. Total Revenue Receipts'
#   #      ]
#   #    else
#   #      data = [
#   #        'State’s Own Revenue as Percentage of Total Receipts'
#   #      ]
#   #    end
     

#   #  elsif search == 'All'
#   #    data = [
#   #     "From Printed Non-judicial stamps",
#   #     "From Non-judicial stamp duty deposited through Bank challan",
#   #     "Non-Judicial adhesive stamps",
#   #     "Non Judicial special adhesive stamp –  through  Franking machines",
#   #     "Revenue Stamps",
#   #     "Judicial Stamps",
#   #     "Fees on registration of instruments",
#   #     "Landlord’s Registration fee",
#   #     "Landlord’s Process fee",
#   #     "Fee from searches of records & Non-Encumbrances",
#   #     "Fee from certified copies",
#   #    ]
#   #  end



#    if views != "Table"

#     data = [
#       "From Printed Non-judicial stamps",
#       "From Non-judicial stamp duty deposited through Bank challan",
#       "Non-Judicial adhesive stamps",
#       "Non Judicial special adhesive stamp –  through  Franking machines",
#       "Revenue Stamps",
#       "Judicial Stamps",
#       "Fees on registration of instruments",
#       "Landlord’s Registration fee",
#       "Landlord’s Process fee",
#       "Fee from searches of records & Non-Encumbrances",
#       "Fee from certified copies",
#     ]

#   else

#     data = [
#       "From Printed Non-judicial stamps",
#       "From Non-judicial stamp duty deposited through Bank challan",
#       "Non-Judicial adhesive stamps",
#       "Non Judicial special adhesive stamp –  through  Franking machines",
#       "Revenue Stamps",
#       "Judicial Stamps",
#       "Fees on registration of instruments",
#       "Landlord’s Registration fee",
#       "Landlord’s Process fee",
#       "Fee from searches of records & Non-Encumbrances",
#       "Fee from certified copies",
#     ]
#   end
   


#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = TaxDepartment4.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = TaxDepartment4.map(b,params[:year],rain_fall_type,views)
#          else
#           b = TaxDepartment4.map_search(params[:search],compare,year,rain_fall_type)
#           a = TaxDepartment4.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = TaxDepartment4.search(params[:search],compare,year,rain_fall_type)
#         a = TaxDepartment4.table(b,rain_fall_type,year,ji1,compare, search, data)
#       else
#         @TaxDepartment4s = TaxDepartment4.search(params[:search],compare,year,rain_fall_type)
#         a = TaxDepartment4.query(@TaxDepartment4s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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



def test
  ji = [:'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']
  rain_fall_type = params[:rain_fall_type]
  views = params[:views]
  year = params[:year]
  compare = params[:compare]
  search = params[:search]

  search = rain_fall_type

  jip = [:'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']
  ji1 = [:Sector, :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']

  if views != "Table"
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
      "Fee from searches of records and Non-Encumbrances",
      "Fee from certified copies",
    ]
  else
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
      "Fee from searches of records and Non-Encumbrances",
      "Fee from certified copies",
      "Sub-Total",
      "Total",
    ]
  end
   



  if rain_fall_type || views

    if views == 'Map View'
      l = rain_fall_type.delete(' ')
      if rain_fall_type == 'All'
        b = TaxDepartment4.map_search('All', compare, year, rain_fall_type)
        u = 'Total'
        a = TaxDepartment4.map(b, params[:year], rain_fall_type, views)
      else
        b = TaxDepartment4.map_search(params[:search], compare, year, rain_fall_type)
        a = TaxDepartment4.map(b, rain_fall_type, year, ji)
       end
    elsif views == 'Table'
      b = TaxDepartment4.search(params[:search], compare, year, rain_fall_type)
      a = TaxDepartment4.table(b, rain_fall_type, year, ji1, compare, search, data)
    else
      @TaxDepartment4s = TaxDepartment4.search(params[:search], compare, year, rain_fall_type)
      a = TaxDepartment4.query(@TaxDepartment4s, params[:year], rain_fall_type, views, ji, compare, search, data, jip)
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
    TaxDepartment4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /tax_department4s/1/edit
  def edit
  end

  # POST /tax_department4s
  def create
    @tax_department4 = TaxDepartment4.new(tax_department4_params)

    if @tax_department4.save
      redirect_to @tax_department4, notice: 'Tax department4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tax_department4s/1
  def update
    if @tax_department4.update(tax_department4_params)
      redirect_to @tax_department4, notice: 'Tax department4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tax_department4s/1
  def destroy
    @tax_department4.destroy
    redirect_to tax_department4s_url, notice: 'Tax department4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tax_department4
      @tax_department4 = TaxDepartment4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tax_department4_params
      params.require(:tax_department4).permit(:Sector, :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17')
    end
end
