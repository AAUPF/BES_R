class NonAgroBasedIndustries2sController < ApplicationController
  before_action :set_non_agro_based_industries2, only: [:show, :edit, :update, :destroy]

  # GET /non_agro_based_industries2s
  def index
    @non_agro_based_industries2s = NonAgroBasedIndustries2.all
  end

  # GET /non_agro_based_industries2s/1
  def show
  end

  # GET /non_agro_based_industries2s/new
  def new
    @non_agro_based_industries2 = NonAgroBasedIndustries2.new
  end

def test
  ji = [:Sanctioned_amount_in_Rs_lakh, :Handlooms_on_which_UID_No_has_been_engraved, :Pati_looms_on_which_UID_No_has_been_engraved]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
ji1  = [:Districts, :Sanctioned_amount_in_Rs_lakh, :Handlooms_on_which_UID_No_has_been_engraved, :Pati_looms_on_which_UID_No_has_been_engraved]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = NonAgroBasedIndustries2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = NonAgroBasedIndustries2.map(b,params[:year],rain_fall_type,views)
         else
          b = NonAgroBasedIndustries2.map_search(params[:search],compare,year,rain_fall_type)
          a = NonAgroBasedIndustries2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = NonAgroBasedIndustries2.search(params[:search],compare,year,rain_fall_type)
        a = NonAgroBasedIndustries2.table(b,rain_fall_type,year,ji1,compare)
      else
        @NonAgroBasedIndustries2s = NonAgroBasedIndustries2.search(params[:search],compare,year,rain_fall_type)
        a = NonAgroBasedIndustries2.query(@NonAgroBasedIndustries2s,params[:year],rain_fall_type,views,ji,compare,search)
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
    NonAgroBasedIndustries2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /non_agro_based_industries2s/1/edit
  def edit
  end

  # POST /non_agro_based_industries2s
  def create
    @non_agro_based_industries2 = NonAgroBasedIndustries2.new(non_agro_based_industries2_params)

    if @non_agro_based_industries2.save
      redirect_to @non_agro_based_industries2, notice: 'Non agro based industries2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /non_agro_based_industries2s/1
  def update
    if @non_agro_based_industries2.update(non_agro_based_industries2_params)
      redirect_to @non_agro_based_industries2, notice: 'Non agro based industries2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /non_agro_based_industries2s/1
  def destroy
    @non_agro_based_industries2.destroy
    redirect_to non_agro_based_industries2s_url, notice: 'Non agro based industries2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_non_agro_based_industries2
      @non_agro_based_industries2 = NonAgroBasedIndustries2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def non_agro_based_industries2_params
      params.require(:non_agro_based_industries2).permit(:Districts, :Sanctioned_amount_in_Rs_lakh, :Handlooms_on_which_UID_No_has_been_engraved, :Pati_looms_on_which_UID_No_has_been_engraved)
    end
end
