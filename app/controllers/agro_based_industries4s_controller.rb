class AgroBasedIndustries4sController < ApplicationController
  before_action :set_agro_based_industries4, only: [:show, :edit, :update, :destroy]

  # GET /agro_based_industries4s
  def index
    @agro_based_industries4s = AgroBasedIndustries4.all
  end

  # GET /agro_based_industries4s/1
  def show
  end

  # GET /agro_based_industries4s/new
  def new
    @agro_based_industries4 = AgroBasedIndustries4.new
  end

def test
  ji = [:Procurement]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   
   if year == "All"
    ji1 = [:Location_of_Project, :"2012-13", :"2013-14",:"2014-15",:"2015-16",:"2016-17"]
   else
    ji1 = [:Location_of_Project, :Procurement, :Year]
   end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = AgroBasedIndustries4.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = AgroBasedIndustries4.map(b,params[:year],rain_fall_type,views)
         else
          b = AgroBasedIndustries4.map_search(params[:search],compare,year,rain_fall_type)
          a = AgroBasedIndustries4.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = AgroBasedIndustries4.search(params[:search],compare,year,rain_fall_type)
        a = AgroBasedIndustries4.table(b,rain_fall_type,year,ji1,compare)
      else
        @AgroBasedIndustries4s = AgroBasedIndustries4.search(params[:search],compare,year,rain_fall_type)
        a = AgroBasedIndustries4.query(@AgroBasedIndustries4s,params[:year],rain_fall_type,views,ji,compare,search)
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
    AgroBasedIndustries4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /agro_based_industries4s/1/edit
  def edit
  end

  # POST /agro_based_industries4s
  def create
    @agro_based_industries4 = AgroBasedIndustries4.new(agro_based_industries4_params)

    if @agro_based_industries4.save
      redirect_to @agro_based_industries4, notice: 'Agro based industries4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /agro_based_industries4s/1
  def update
    if @agro_based_industries4.update(agro_based_industries4_params)
      redirect_to @agro_based_industries4, notice: 'Agro based industries4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /agro_based_industries4s/1
  def destroy
    @agro_based_industries4.destroy
    redirect_to agro_based_industries4s_url, notice: 'Agro based industries4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agro_based_industries4
      @agro_based_industries4 = AgroBasedIndustries4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def agro_based_industries4_params
      params.require(:agro_based_industries4).permit(:Location_of_Project, :Procurement, :Year)
    end
end
