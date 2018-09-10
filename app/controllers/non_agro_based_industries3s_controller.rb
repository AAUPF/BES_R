class NonAgroBasedIndustries3sController < ApplicationController
  before_action :set_non_agro_based_industries3, only: [:show, :edit, :update, :destroy]

  # GET /non_agro_based_industries3s
  def index
    @non_agro_based_industries3s = NonAgroBasedIndustries3.all
  end

  # GET /non_agro_based_industries3s/1
  def show
  end

  # GET /non_agro_based_industries3s/new
  def new
    @non_agro_based_industries3 = NonAgroBasedIndustries3.new
  end

def test
  ji = [:Target, :Achievement, :Achievement_Percentage]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   ji1 = [:Year, :Target, :Achievement, :Achievement_Percentage]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = NonAgroBasedIndustries3.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = NonAgroBasedIndustries3.map(b,params[:year],rain_fall_type,views)
         else
          b = NonAgroBasedIndustries3.map_search(params[:search],compare,year,rain_fall_type)
          a = NonAgroBasedIndustries3.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = NonAgroBasedIndustries3.search(params[:search],compare,year,rain_fall_type)
        a = NonAgroBasedIndustries3.table(b,rain_fall_type,year,ji1,compare)
      else
        @NonAgroBasedIndustries3s = NonAgroBasedIndustries3.search(params[:search],compare,year,rain_fall_type)
        a = NonAgroBasedIndustries3.query(@NonAgroBasedIndustries3s,params[:year],rain_fall_type,views,ji,compare)
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
    NonAgroBasedIndustries3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /non_agro_based_industries3s/1/edit
  def edit
  end

  # POST /non_agro_based_industries3s
  def create
    @non_agro_based_industries3 = NonAgroBasedIndustries3.new(non_agro_based_industries3_params)

    if @non_agro_based_industries3.save
      redirect_to @non_agro_based_industries3, notice: 'Non agro based industries3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /non_agro_based_industries3s/1
  def update
    if @non_agro_based_industries3.update(non_agro_based_industries3_params)
      redirect_to @non_agro_based_industries3, notice: 'Non agro based industries3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /non_agro_based_industries3s/1
  def destroy
    @non_agro_based_industries3.destroy
    redirect_to non_agro_based_industries3s_url, notice: 'Non agro based industries3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_non_agro_based_industries3
      @non_agro_based_industries3 = NonAgroBasedIndustries3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def non_agro_based_industries3_params
      params.require(:non_agro_based_industries3).permit(:Year, :Target, :Achievement, :Achievement_Percentage)
    end
end
