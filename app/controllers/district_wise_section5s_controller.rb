class DistrictWiseSection5sController < ApplicationController
  before_action :set_district_wise_section5, only: [:show, :edit, :update, :destroy]

  # GET /district_wise_section5s
  def index
    @district_wise_section5s = DistrictWiseSection5.all
  end

  # GET /district_wise_section5s/1
  def show
  end

  # GET /district_wise_section5s/new
  def new
    @district_wise_section5 = DistrictWiseSection5.new
  end

def test
  ji = [:Primary_Schools, :Upper_Primary_Schools]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   ji1 = [:Districts, :Primary_Schools, :Upper_Primary_Schools, :Total]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = DistrictWiseSection5.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = DistrictWiseSection5.map(b,params[:year],rain_fall_type,views)
         else
          b = DistrictWiseSection5.map_search(params[:search],compare,year,rain_fall_type)
          a = DistrictWiseSection5.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = DistrictWiseSection5.search(params[:search],compare,year,rain_fall_type)
        a = DistrictWiseSection5.table(b,rain_fall_type,year,ji1,compare)
      else
        @DistrictWiseSection5s = DistrictWiseSection5.search(params[:search],compare,year,rain_fall_type)
        a = DistrictWiseSection5.query(@DistrictWiseSection5s,params[:year],rain_fall_type,views,ji,compare,search)
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
    DistrictWiseSection5.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /district_wise_section5s/1/edit
  def edit
  end

  # POST /district_wise_section5s
  def create
    @district_wise_section5 = DistrictWiseSection5.new(district_wise_section5_params)

    if @district_wise_section5.save
      redirect_to @district_wise_section5, notice: 'District wise section5 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /district_wise_section5s/1
  def update
    if @district_wise_section5.update(district_wise_section5_params)
      redirect_to @district_wise_section5, notice: 'District wise section5 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /district_wise_section5s/1
  def destroy
    @district_wise_section5.destroy
    redirect_to district_wise_section5s_url, notice: 'District wise section5 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_district_wise_section5
      @district_wise_section5 = DistrictWiseSection5.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def district_wise_section5_params
      params.require(:district_wise_section5).permit(:Districts, :Primary_Schools, :Upper_Primary_Schools, :Total)
    end
end
