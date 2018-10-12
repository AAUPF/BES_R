class NonAgroBasedIndustries4sController < ApplicationController
  before_action :set_non_agro_based_industries4, only: [:show, :edit, :update, :destroy]

  # GET /non_agro_based_industries4s
  def index
    @non_agro_based_industries4s = NonAgroBasedIndustries4.all
  end

  # GET /non_agro_based_industries4s/1
  def show
  end

  # GET /non_agro_based_industries4s/new
  def new
    @non_agro_based_industries4 = NonAgroBasedIndustries4.new
  end

def test
  ji = [:Mulberry, :Tasar, :Castor]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend  = "Sericulture_Sector"
   remove = ""
   if year == "All"
    ji1 = [:Sericulture_Sector,:"2013-14",:"2014-15"]
   else
    if rain_fall_type != "All"
      ji1 = [:Sericulture_Sector, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:Sericulture_Sector, :Mulberry, :Tasar, :Castor, :Year]
    end
    
   end
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = NonAgroBasedIndustries4.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = NonAgroBasedIndustries4.map(b,params[:year],rain_fall_type,views)
         else
          b = NonAgroBasedIndustries4.map_search(params[:search],compare,year,rain_fall_type)
          a = NonAgroBasedIndustries4.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = NonAgroBasedIndustries4.search(params[:search],compare,year,rain_fall_type,legend)
        a = NonAgroBasedIndustries4.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @NonAgroBasedIndustries4s = NonAgroBasedIndustries4.search(params[:search],compare,year,rain_fall_type,legend)
        a = NonAgroBasedIndustries4.query(@NonAgroBasedIndustries4s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    NonAgroBasedIndustries4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /non_agro_based_industries4s/1/edit
  def edit
  end

  # POST /non_agro_based_industries4s
  def create
    @non_agro_based_industries4 = NonAgroBasedIndustries4.new(non_agro_based_industries4_params)

    if @non_agro_based_industries4.save
      redirect_to @non_agro_based_industries4, notice: 'Non agro based industries4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /non_agro_based_industries4s/1
  def update
    if @non_agro_based_industries4.update(non_agro_based_industries4_params)
      redirect_to @non_agro_based_industries4, notice: 'Non agro based industries4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /non_agro_based_industries4s/1
  def destroy
    @non_agro_based_industries4.destroy
    redirect_to non_agro_based_industries4s_url, notice: 'Non agro based industries4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_non_agro_based_industries4
      @non_agro_based_industries4 = NonAgroBasedIndustries4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def non_agro_based_industries4_params
      params.require(:non_agro_based_industries4).permit(:Sericulture_Sector, :Mulberry, :Tasar, :Castor, :Year)
    end
end
