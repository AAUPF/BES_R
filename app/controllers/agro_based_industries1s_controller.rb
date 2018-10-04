class AgroBasedIndustries1sController < ApplicationController
  before_action :set_agro_based_industries1, only: [:show, :edit, :update, :destroy]

  # GET /agro_based_industries1s
  def index
    @agro_based_industries1s = AgroBasedIndustries1.all
  end

  # GET /agro_based_industries1s/1
  def show
  end

  # GET /agro_based_industries1s/new
  def new
    @agro_based_industries1 = AgroBasedIndustries1.new
  end

def test
  ji = [:Sugarcane_Crushed, :Sugar_Produced, :Recovery_Percentage]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend  = "Name_of_Sugar_Mill"
   remove = "Total"
   if year == "All"
    ji1 = [:Name_of_Sugar_Mill,:"2014-15",:"2015-16",:"2016-17"]
   else
    if rain_fall_type != "All"
      ji1 = [:Name_of_Sugar_Mill, "#{rain_fall_type}", :Year]
    else
      ji1 = [:Name_of_Sugar_Mill, :Sugarcane_Crushed, :Sugar_Produced, :Recovery_Percentage, :Year]
    end
    
   end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = AgroBasedIndustries1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = AgroBasedIndustries1.map(b,params[:year],rain_fall_type,views)
         else
          b = AgroBasedIndustries1.map_search(params[:search],compare,year,rain_fall_type)
          a = AgroBasedIndustries1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = AgroBasedIndustries1.search(params[:search],compare,year,rain_fall_type,legend)
        a = AgroBasedIndustries1.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @AgroBasedIndustries1s = AgroBasedIndustries1.search(params[:search],compare,year,rain_fall_type,legend)
        a = AgroBasedIndustries1.query(@AgroBasedIndustries1s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    AgroBasedIndustries1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /agro_based_industries1s/1/edit
  def edit
  end

  # POST /agro_based_industries1s
  def create
    @agro_based_industries1 = AgroBasedIndustries1.new(agro_based_industries1_params)

    if @agro_based_industries1.save
      redirect_to @agro_based_industries1, notice: 'Agro based industries1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /agro_based_industries1s/1
  def update
    if @agro_based_industries1.update(agro_based_industries1_params)
      redirect_to @agro_based_industries1, notice: 'Agro based industries1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /agro_based_industries1s/1
  def destroy
    @agro_based_industries1.destroy
    redirect_to agro_based_industries1s_url, notice: 'Agro based industries1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agro_based_industries1
      @agro_based_industries1 = AgroBasedIndustries1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def agro_based_industries1_params
      params.require(:agro_based_industries1).permit(:Name_of_Sugar_Mill, :Sugarcane_Crushed, :Sugar_Produced, :Recovery_Percentage, :Year)
    end
end
