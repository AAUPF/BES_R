class MicroFinance2sController < ApplicationController
  before_action :set_micro_finance2, only: [:show, :edit, :update, :destroy]

  # GET /micro_finance2s
  def index
    @micro_finance2s = MicroFinance2.all
  end

  # GET /micro_finance2s/1
  def show
  end

  # GET /micro_finance2s/new
  def new
    @micro_finance2 = MicroFinance2.new
  end

def test
  ji = [:'Mar-14', :'Mar-15', :'Mar-16', :'Mar-17']
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
 
   search = rain_fall_type
 
   jip = [:'Mar-14', :'Mar-15', :'Mar-16', :'Mar-17']
   ji1 = [:Sector, :'Mar-14', :'Mar-15', :'Mar-16', :'Mar-17']
 
 
   if views != "Table"
 
 
     data = [
      "Rural households covered (SHG : savings linked)(in lakh)",
"No. of SHG shavings avings banka ccount (in lakh)",
"Average savings / SHG (Bihar) (Rs)",
"Average savings / SHG (India) (Rs.)",
"No.of SHGs provided bank loan",
"Amount of bank loan outstanding (Rs. lakh)",
"No. of SHGs provided bank loan during the year",
"Amount of bank loan (Rs. lakh)",
"Average bank loan per SHG in Bihar (Rs. lakh)",
"Average bank loan per SHG in India (Rs. lakh)",
"Gross NPA (Rs. lakh)",
"Percentage of gross NPA to total outstanding in Bihar",
 
   
     ]
 
     
   else
 
     data = [
      "Rural households covered (SHG : savings linked)(in lakh)",
"No. of SHG shavings avings banka ccount (in lakh)",
"Average savings / SHG (Bihar) (Rs)",
"Average savings / SHG (India) (Rs.)",
"No.of SHGs provided bank loan",
"Amount of bank loan outstanding (Rs. lakh)",
"No. of SHGs provided bank loan during the year",
"Amount of bank loan (Rs. lakh)",
"Average bank loan per SHG in Bihar (Rs. lakh)",
"Average bank loan per SHG in India (Rs. lakh)",
"Gross NPA (Rs. lakh)",
"Percentage of gross NPA to total outstanding in Bihar",
     ]
 
     
   end

   legend = "Indicators"

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = MicroFinance2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = MicroFinance2.map(b,params[:year],rain_fall_type,views)
         else
          b = MicroFinance2.map_search(params[:search],compare,year,rain_fall_type)
          a = MicroFinance2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = MicroFinance2.search(params[:search],compare,year,rain_fall_type)
        a = MicroFinance2.new_table(b, rain_fall_type, year, ji1, compare, search, data,legend)
      else
        @MicroFinance2s = MicroFinance2.search(params[:search],compare,year,rain_fall_type)
        a = MicroFinance2.query(@MicroFinance2s, params[:year], rain_fall_type, views, ji, compare, search, data, jip)
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
    MicroFinance2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /micro_finance2s/1/edit
  def edit
  end

  # POST /micro_finance2s
  def create
    @micro_finance2 = MicroFinance2.new(micro_finance2_params)

    if @micro_finance2.save
      redirect_to @micro_finance2, notice: 'Micro finance2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /micro_finance2s/1
  def update
    if @micro_finance2.update(micro_finance2_params)
      redirect_to @micro_finance2, notice: 'Micro finance2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /micro_finance2s/1
  def destroy
    @micro_finance2.destroy
    redirect_to micro_finance2s_url, notice: 'Micro finance2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_micro_finance2
      @micro_finance2 = MicroFinance2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def micro_finance2_params
      params.require(:micro_finance2).permit(:Indicators, :'Mar-14', :'Mar-15', :'Mar-16', :'Mar-17')
    end
end
