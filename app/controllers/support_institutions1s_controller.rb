class SupportInstitutions1sController < ApplicationController
  before_action :set_support_institutions1, only: [:show, :edit, :update, :destroy]

  # GET /support_institutions1s
  def index
    @support_institutions1s = SupportInstitutions1.all

    respond_to do |format|
      format.html { render json:@support_institutions1s }
  end
  end

  # GET /support_institutions1s/1
  def show
  end

  # GET /support_institutions1s/new
  def new
    @support_institutions1 = SupportInstitutions1.new
  end

def test
  ji = [:"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17"]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
data = [
"Expenditure on Industries",
"(a)  Revenue",
"(b)  Capital",
"(c)  Total",
"Expenditure on Economic Services",
"Expenditure on Industries as a percentage of Expenditure on Economic Services",
 ]


 search = rain_fall_type

 jip = [:"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17"]
 ji1 = [:Expenditure, :"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17", :CAGR]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = SupportInstitutions1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = SupportInstitutions1.map(b,params[:year],rain_fall_type,views)
         else
          b = SupportInstitutions1.map_search(params[:search],compare,year,rain_fall_type)
          a = SupportInstitutions1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = SupportInstitutions1.search(params[:search],compare,year,rain_fall_type)
        a = SupportInstitutions1.table(b,rain_fall_type,year,ji1,compare, search, data)
      else
        @SupportInstitutions1s = SupportInstitutions1.search(params[:search],compare,year,rain_fall_type)
        a = SupportInstitutions1.query(@SupportInstitutions1s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    SupportInstitutions1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /support_institutions1s/1/edit
  def edit
  end

  # POST /support_institutions1s
  def create
    @support_institutions1 = SupportInstitutions1.new(support_institutions1_params)

    if @support_institutions1.save
      redirect_to @support_institutions1, notice: 'Support institutions1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /support_institutions1s/1
  def update
    if @support_institutions1.update(support_institutions1_params)
      redirect_to @support_institutions1, notice: 'Support institutions1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /support_institutions1s/1
  def destroy
    @support_institutions1.destroy
    redirect_to support_institutions1s_url, notice: 'Support institutions1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_support_institutions1
      @support_institutions1 = SupportInstitutions1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def support_institutions1_params
      params.require(:support_institutions1).permit(:Expenditure, :"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17", :CAGR)
    end
end
