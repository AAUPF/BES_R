class PanchayatiRaj2sController < ApplicationController
  before_action :set_panchayati_raj2, only: [:show, :edit, :update, :destroy]

  # GET /panchayati_raj2s
  def index
    @panchayati_raj2s = PanchayatiRaj2.all

    respond_to do |format|
      format.html { render json: @panchayati_raj2s}
  end
  end

  # GET /panchayati_raj2s/1
  def show
  end

  # GET /panchayati_raj2s/new
  def new
    @panchayati_raj2 = PanchayatiRaj2.new
  end






def test
  ji = [:Sector, :'2013_14_Actual', :'2014_15_Actual', :'2015_16_Actual', :'2016_17_BE', :Indicator]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

   search = params[:search]

   jip = [:'2013_14_Actual', :'2014_15_Actual', :'2015_16_Actual', :'2016_17_BE']

   compare = "None"

if search == "Gram Panchayat"

  data = [
    "BRGF",
    "RGPSA",
    "MMGY",
    "Union Finance Commission Grants",
    "State Finance Commission Grants",
    "Mukhya Mantri Saat Nishchay Yojana",
    "Construction of Panchayat Sarkar Bhawan",
    "Contingency Grant",
    "Payment and Allowance to GP members/ functionaries",
    "Total",
  ]
  
elsif  search == "Panchayat Samiti"

  data = [
    "BRGF",
    "RGPSA",
    "Union Finance Commission Grants",
    "State Finance Commission Grants",
    "Allowance to PS members",
    "Mukhya Mantri Saat Nishchay Yojana",
    "Total",
  ]

else

  data = [
    "BRGF",
    "RGPSA",
    "Union Finance Commission Grants",
    "State Finance Commission Grants",
    "Allowance to ZP  members",
    "Mukhya Mantri Saat Nishchay Yojana",
    "Total",
    "Grand Total",
  ]
  
end

  
  legend = "Heads"

search = rain_fall_type

   ji1 = [:Sector, :'2013_14_Actual', :'2014_15_Actual', :'2015_16_Actual', :'2016_17_BE', :Indicator]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = PanchayatiRaj2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = PanchayatiRaj2.map(b,params[:year],rain_fall_type,views)
         else
          b = PanchayatiRaj2.map_search(params[:search],compare,year,rain_fall_type)
          a = PanchayatiRaj2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = PanchayatiRaj2.search(params[:search],compare,year,rain_fall_type)
        a = PanchayatiRaj2.new_table(b,rain_fall_type,year,ji1,compare, search, data,legend)
      else
        @PanchayatiRaj2s = PanchayatiRaj2.search(params[:search],compare,year,rain_fall_type)
        a = PanchayatiRaj2.query(@PanchayatiRaj2s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    PanchayatiRaj2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /panchayati_raj2s/1/edit
  def edit
  end

  # POST /panchayati_raj2s
  def create
    @panchayati_raj2 = PanchayatiRaj2.new(panchayati_raj2_params)

    if @panchayati_raj2.save
      redirect_to @panchayati_raj2, notice: 'Panchayati raj2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /panchayati_raj2s/1
  def update
    if @panchayati_raj2.update(panchayati_raj2_params)
      redirect_to @panchayati_raj2, notice: 'Panchayati raj2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /panchayati_raj2s/1
  def destroy
    @panchayati_raj2.destroy
    redirect_to panchayati_raj2s_url, notice: 'Panchayati raj2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_panchayati_raj2
      @panchayati_raj2 = PanchayatiRaj2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def panchayati_raj2_params
      params.require(:panchayati_raj2).permit(:Sector, :'2013_14_Actual', :'2014_15_Actual', :'2015_16_Actual', :'2016_17_BE', :Indicator)
    end
end
