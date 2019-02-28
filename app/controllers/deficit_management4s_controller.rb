class DeficitManagement4sController < ApplicationController
  before_action :set_deficit_management4, only: [:show, :edit, :update, :destroy]

  # GET /deficit_management4s
  def index
    @deficit_management4s = DeficitManagement4.all
    respond_to do |format|
      format.html { render json:@deficit_management4s }
  end
  end

  # GET /deficit_management4s/1
  def show
  end

  # GET /deficit_management4s/new
  def new
    @deficit_management4 = DeficitManagement4.new
  end

def test
  ji = [:Sector, :"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17", :"2017-18_BE", :Indicator]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   ji1 = [:Sector, :"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17", :"2017-18_BE", :Indicator]
   jip = [:"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17", :"2017-18_BE"]

   if search == "Amount"
    data = [
      "Net Borrowing",
      "Net Public Account",
      "Net Decrease in Cash Balance (Opening - Closing Balance)",
      "GFD",
     ]
     elsif search == "Percentage Composition"
      data = [
        "Net Borrowing",
        "Net Public Account",
        "Net Decrease in Cash Balance",
       ]
   else
    data = [
        "Net Borrowing",
        "Net Public Account",
        "Net Decrease in Cash Balance (Opening - Closing Balance)",
        "GFD",
        "Net Borrowing",
        "Net Public Account",
        "Net Decrease in Cash Balance",
    ]
   end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = DeficitManagement4.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = DeficitManagement4.map(b,params[:year],rain_fall_type,views)
         else
          b = DeficitManagement4.map_search(params[:search],compare,year,rain_fall_type)
          a = DeficitManagement4.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = DeficitManagement4.search(params[:search],compare,year,rain_fall_type)
        a = DeficitManagement4.table(b,rain_fall_type,year,ji1,compare,search,data)
      else
        @DeficitManagement4s = DeficitManagement4.search(params[:search],compare,year,rain_fall_type)
        a = DeficitManagement4.query(@DeficitManagement4s,params[:year],rain_fall_type,views,ji,compare,search,data,jip)
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
    DeficitManagement4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /deficit_management4s/1/edit
  def edit
  end

  # POST /deficit_management4s
  def create
    @deficit_management4 = DeficitManagement4.new(deficit_management4_params)

    if @deficit_management4.save
      redirect_to @deficit_management4, notice: 'Deficit management4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /deficit_management4s/1
  def update
    if @deficit_management4.update(deficit_management4_params)
      redirect_to @deficit_management4, notice: 'Deficit management4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /deficit_management4s/1
  def destroy
    @deficit_management4.destroy
    redirect_to deficit_management4s_url, notice: 'Deficit management4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deficit_management4
      @deficit_management4 = DeficitManagement4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def deficit_management4_params
      params.require(:deficit_management4).permit(:Sector, :"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17", :"2017-18_BE", Indicator)
    end
end
