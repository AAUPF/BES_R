class AgroBasedIndustries6sController < ApplicationController
  before_action :set_agro_based_industries6, only: [:show, :edit, :update, :destroy]

  # GET /agro_based_industries6s
  def index
    @agro_based_industries6s = AgroBasedIndustries6.all
  end

  # GET /agro_based_industries6s/1
  def show
  end

  # GET /agro_based_industries6s/new
  def new
    @agro_based_industries6 = AgroBasedIndustries6.new
  end

def test
  ji = [:Industrial_Group, :India, :Bihar, :Bihar_Percentage_Share, :Indicator, :Indicator1]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:compare]

   legend = "Industrial_Group"
   remove = ""

   ji1 = [:Industrial_Group, :India, :Bihar, :Bihar_Percentage_Share, :Indicator, :Indicator1]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = AgroBasedIndustries6.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = AgroBasedIndustries6.map(b,params[:year],rain_fall_type,views)
         else
          b = AgroBasedIndustries6.map_search(params[:search],compare,year,rain_fall_type)
          a = AgroBasedIndustries6.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = AgroBasedIndustries6.search(params[:search],compare,year,rain_fall_type,legend)
        a = AgroBasedIndustries6.table(b,rain_fall_type,year,ji1,compare, legend)
      else
        @AgroBasedIndustries6s = AgroBasedIndustries6.search(params[:search],compare,year,rain_fall_type,legend)
        a = AgroBasedIndustries6.query(@AgroBasedIndustries6s,params[:year],rain_fall_type,views,ji,compare, search, legend, remove)
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
    AgroBasedIndustries6.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /agro_based_industries6s/1/edit
  def edit
  end

  # POST /agro_based_industries6s
  def create
    @agro_based_industries6 = AgroBasedIndustries6.new(agro_based_industries6_params)

    if @agro_based_industries6.save
      redirect_to @agro_based_industries6, notice: 'Agro based industries6 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /agro_based_industries6s/1
  def update
    if @agro_based_industries6.update(agro_based_industries6_params)
      redirect_to @agro_based_industries6, notice: 'Agro based industries6 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /agro_based_industries6s/1
  def destroy
    @agro_based_industries6.destroy
    redirect_to agro_based_industries6s_url, notice: 'Agro based industries6 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agro_based_industries6
      @agro_based_industries6 = AgroBasedIndustries6.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def agro_based_industries6_params
      params.require(:agro_based_industries6).permit(:Industrial_Group, :India, :Bihar, :Bihar_Percentage_Share, :Indicator, :Indicator1)
    end
end
