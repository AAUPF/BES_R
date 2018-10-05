class AgroBasedIndustries5sController < ApplicationController
  before_action :set_agro_based_industries5, only: [:show, :edit, :update, :destroy]

  # GET /agro_based_industries5s
  def index
    @agro_based_industries5s = AgroBasedIndustries5.all
    respond_to do |format|
      format.html { render json: @agro_based_industries5s}
  end
  end

  # GET /agro_based_industries5s/1
  def show
  end

  # GET /agro_based_industries5s/new
  def new
    @agro_based_industries5 = AgroBasedIndustries5.new
  end

def test
  ji = [:Sector, :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17', :Indicator]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]


   ji1 = [:Sector, :"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17",  :Indicator]
  
   jip = [:"2012-13", :"2013-14", :"2014-15", :"2015-16", :"2016-17",]

   data = [

    "Organised",
    "Operational",
    "Registered",
    "No. of Members (lakh)",
    "Collection of Milk (lakh kg/day)",
    "No. of Retail Outlets",
    "Milk (lakh litres/day)",
    "Ghee (tonnes)",
    "Lassi (tonnes)",
    "Peda (tonnes)",
    "Paneer (tonnes)",
    "Dahi (tonnes)",
    "Gulab Jamun (tonnes)",
    "Ice-Cream (tonnes)",
    "No. of Artificial Insemination Centres",
    "Artificial Insemination (lakh)",
    "Vaccination (lakh)",
    "De-worming (lakh)",
    "Seed Distribution (tonnes)",
    "Cattle Feed Distribution (tonnes)",
   ]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = AgroBasedIndustries5.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = AgroBasedIndustries5.map(b,params[:year],rain_fall_type,views)
         else
          b = AgroBasedIndustries5.map_search(params[:search],compare,year,rain_fall_type)
          a = AgroBasedIndustries5.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = AgroBasedIndustries5.search(params[:search],compare,year,rain_fall_type)
        a = AgroBasedIndustries5.table(b,rain_fall_type,year,ji1,compare,search,data)
      else
        @AgroBasedIndustries5s = AgroBasedIndustries5.search(params[:search],compare,year,rain_fall_type)
        a = AgroBasedIndustries5.query(@AgroBasedIndustries5s,params[:year],rain_fall_type,views,ji,compare,search,data,jip)
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
    AgroBasedIndustries5.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /agro_based_industries5s/1/edit
  def edit
  end

  # POST /agro_based_industries5s
  def create
    @agro_based_industries5 = AgroBasedIndustries5.new(agro_based_industries5_params)

    if @agro_based_industries5.save
      redirect_to @agro_based_industries5, notice: 'Agro based industries5 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /agro_based_industries5s/1
  def update
    if @agro_based_industries5.update(agro_based_industries5_params)
      redirect_to @agro_based_industries5, notice: 'Agro based industries5 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /agro_based_industries5s/1
  def destroy
    @agro_based_industries5.destroy
    redirect_to agro_based_industries5s_url, notice: 'Agro based industries5 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agro_based_industries5
      @agro_based_industries5 = AgroBasedIndustries5.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def agro_based_industries5_params
      params.require(:agro_based_industries5).permit(:Sector, :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17', :Indicator)
    end
end
