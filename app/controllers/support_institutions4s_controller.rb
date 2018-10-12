class SupportInstitutions4sController < ApplicationController
  before_action :set_support_institutions4, only: [:show, :edit, :update, :destroy]

  # GET /support_institutions4s
  def index
    @support_institutions4s = SupportInstitutions4.all
  end

  # GET /support_institutions4s/1
  def show
  end

  # GET /support_institutions4s/new
  def new
    @support_institutions4 = SupportInstitutions4.new
  end

def test
  ji = [:Total_Acquired_Land, :Total_Acquired_Constructed_Sheds, :Land_Reserved_for_Infrastructure_Administrative_Blocks_Roads_etc, :Total_Allotted_Land, :Total_Allotted_Constructed_Sheds, :Litigated_land, :Total_Vacant_Land_Allottable, :Total_Vacant_Constructed_Sheds_Allottable]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Regional_Office"
ji1 = [:Regional_Office, :Total_Acquired_Land, :Total_Acquired_Constructed_Sheds, :Land_Reserved_for_Infrastructure_Administrative_Blocks_Roads_etc, :Total_Allotted_Land, :Total_Allotted_Constructed_Sheds, :Litigated_land, :Total_Vacant_Land_Allottable, :Total_Vacant_Constructed_Sheds_Allottable]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = SupportInstitutions4.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = SupportInstitutions4.map(b,params[:year],rain_fall_type,views)
         else
          b = SupportInstitutions4.map_search(params[:search],compare,year,rain_fall_type)
          a = SupportInstitutions4.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = SupportInstitutions4.search(params[:search],compare,year,rain_fall_type,legend)
        a = SupportInstitutions4.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @SupportInstitutions4s = SupportInstitutions4.search(params[:search],compare,year,rain_fall_type,legend)
        a = SupportInstitutions4.query(@SupportInstitutions4s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    SupportInstitutions4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /support_institutions4s/1/edit
  def edit
  end

  # POST /support_institutions4s
  def create
    @support_institutions4 = SupportInstitutions4.new(support_institutions4_params)

    if @support_institutions4.save
      redirect_to @support_institutions4, notice: 'Support institutions4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /support_institutions4s/1
  def update
    if @support_institutions4.update(support_institutions4_params)
      redirect_to @support_institutions4, notice: 'Support institutions4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /support_institutions4s/1
  def destroy
    @support_institutions4.destroy
    redirect_to support_institutions4s_url, notice: 'Support institutions4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_support_institutions4
      @support_institutions4 = SupportInstitutions4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def support_institutions4_params
      params.require(:support_institutions4).permit(:Regional_Office, :Total_Acquired_Land, :Total_Acquired_Constructed_Sheds, :Land_Reserved_for_Infrastructure_Administrative_Blocks_Roads_etc, :Total_Allotted_Land, :Total_Allotted_Constructed_Sheds, :Litigated_land, :Total_Vacant_Land_Allottable, :Total_Vacant_Constructed_Sheds_Allottable)
    end
end
