class NonAgroBasedIndustries1sController < ApplicationController
  before_action :set_non_agro_based_industries1, only: [:show, :edit, :update, :destroy]

  # GET /non_agro_based_industries1s
  def index
    @non_agro_based_industries1s = NonAgroBasedIndustries1.all
  end

  # GET /non_agro_based_industries1s/1
  def show
  end

  # GET /non_agro_based_industries1s/new
  def new
    @non_agro_based_industries1 = NonAgroBasedIndustries1.new
  end

def test
  ji1 = [:Districts, :Products]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Districts"

  if rain_fall_type || views

      l =  rain_fall_type.gsub(" ","")           
        b = NonAgroBasedIndustries1.search(params[:search],compare,year,rain_fall_type,legend)
        a = NonAgroBasedIndustries1.table(b,rain_fall_type,year,ji1,compare,legend)
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
    NonAgroBasedIndustries1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /non_agro_based_industries1s/1/edit
  def edit
  end

  # POST /non_agro_based_industries1s
  def create
    @non_agro_based_industries1 = NonAgroBasedIndustries1.new(non_agro_based_industries1_params)

    if @non_agro_based_industries1.save
      redirect_to @non_agro_based_industries1, notice: 'Non agro based industries1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /non_agro_based_industries1s/1
  def update
    if @non_agro_based_industries1.update(non_agro_based_industries1_params)
      redirect_to @non_agro_based_industries1, notice: 'Non agro based industries1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /non_agro_based_industries1s/1
  def destroy
    @non_agro_based_industries1.destroy
    redirect_to non_agro_based_industries1s_url, notice: 'Non agro based industries1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_non_agro_based_industries1
      @non_agro_based_industries1 = NonAgroBasedIndustries1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def non_agro_based_industries1_params
      params.require(:non_agro_based_industries1).permit(:Districts, :Products)
    end
end
