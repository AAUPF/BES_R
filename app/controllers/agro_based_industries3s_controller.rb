class AgroBasedIndustries3sController < ApplicationController
  before_action :set_agro_based_industries3, only: [:show, :edit, :update, :destroy]

  # GET /agro_based_industries3s
  def index
    @agro_based_industries3s = AgroBasedIndustries3.all
  end

  # GET /agro_based_industries3s/1
  def show
  end

  # GET /agro_based_industries3s/new
  def new
    @agro_based_industries3 = AgroBasedIndustries3.new
  end

def test
  ji = [:"Union/Project", :Daily_Milk_Collection, :Year]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Union_Project"
   remove = "Total"
   
if year == "All"
  ji1 = [:"Union_Project", :"2012-13", :"2013-14",:"2014-15",:"2015-16",:"2016-17",:"CAGR"]
else
  ji1 = [:"Union_Project", :Daily_Milk_Collection, :Year]
end
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = AgroBasedIndustries3.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = AgroBasedIndustries3.map(b,params[:year],rain_fall_type,views)
         else
          b = AgroBasedIndustries3.map_search(params[:search],compare,year,rain_fall_type)
          a = AgroBasedIndustries3.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = AgroBasedIndustries3.search(params[:search],compare,year,rain_fall_type,legend)
        a = AgroBasedIndustries3.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @AgroBasedIndustries3s = AgroBasedIndustries3.search(params[:search],compare,year,rain_fall_type,legend)
        a = AgroBasedIndustries3.query(@AgroBasedIndustries3s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    AgroBasedIndustries3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /agro_based_industries3s/1/edit
  def edit
  end

  # POST /agro_based_industries3s
  def create
    @agro_based_industries3 = AgroBasedIndustries3.new(agro_based_industries3_params)

    if @agro_based_industries3.save
      redirect_to @agro_based_industries3, notice: 'Agro based industries3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /agro_based_industries3s/1
  def update
    if @agro_based_industries3.update(agro_based_industries3_params)
      redirect_to @agro_based_industries3, notice: 'Agro based industries3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /agro_based_industries3s/1
  def destroy
    @agro_based_industries3.destroy
    redirect_to agro_based_industries3s_url, notice: 'Agro based industries3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agro_based_industries3
      @agro_based_industries3 = AgroBasedIndustries3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def agro_based_industries3_params
      params.require(:agro_based_industries3).permit(:Union/Project, :Daily_Milk_Collection, :Year)
    end
end
