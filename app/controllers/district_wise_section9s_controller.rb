class DistrictWiseSection9sController < ApplicationController
  before_action :set_district_wise_section9, only: [:show, :edit, :update, :destroy]

  # GET /district_wise_section9s
  def index
    @district_wise_section9s = DistrictWiseSection9.all
  end

  # GET /district_wise_section9s/1
  def show
  end

  # GET /district_wise_section9s/new
  def new
    @district_wise_section9 = DistrictWiseSection9.new
  end

def test
  ji = [:Constituent_College,:Science_Arts_Commerce_College, :Engineering, :Medical, :B_Ed, :Others]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
ji1 = [:Districts, :Constituent_College, :Total, :Science_Arts_Commerce_College, :Engineering, :Medical, :B_Ed, :Others, :All_Colleges]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = DistrictWiseSection9.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = DistrictWiseSection9.map(b,params[:year],rain_fall_type,views)
         else
          b = DistrictWiseSection9.map_search(params[:search],compare,year,rain_fall_type)
          a = DistrictWiseSection9.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = DistrictWiseSection9.search(params[:search],compare,year,rain_fall_type)
        a = DistrictWiseSection9.table(b,rain_fall_type,year,ji1,compare)
      else
        @DistrictWiseSection9s = DistrictWiseSection9.search(params[:search],compare,year,rain_fall_type)
        a = DistrictWiseSection9.query(@DistrictWiseSection9s,params[:year],rain_fall_type,views,ji,compare,search)
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
    DistrictWiseSection9.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /district_wise_section9s/1/edit
  def edit
  end

  # POST /district_wise_section9s
  def create
    @district_wise_section9 = DistrictWiseSection9.new(district_wise_section9_params)

    if @district_wise_section9.save
      redirect_to @district_wise_section9, notice: 'District wise section9 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /district_wise_section9s/1
  def update
    if @district_wise_section9.update(district_wise_section9_params)
      redirect_to @district_wise_section9, notice: 'District wise section9 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /district_wise_section9s/1
  def destroy
    @district_wise_section9.destroy
    redirect_to district_wise_section9s_url, notice: 'District wise section9 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_district_wise_section9
      @district_wise_section9 = DistrictWiseSection9.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def district_wise_section9_params
      params.require(:district_wise_section9).permit(:Districts, :Districts,:Affiliated_College, :Constituent_College, :Total, :Science_Arts_Commerce_College, :Engineering, :Medical, :B_Ed, :Others, :All_Colleges)
    end
end
