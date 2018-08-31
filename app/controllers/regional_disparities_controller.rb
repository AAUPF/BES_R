class RegionalDisparitiesController < ApplicationController
  before_action :set_regional_disparity, only: [:show, :edit, :update, :destroy]

  # GET /regional_disparities
  def index
    @regional_disparities = RegionalDisparity.all
  end

  # GET /regional_disparities/1
  def show
  end

  # GET /regional_disparities/new
  def new
    @regional_disparity = RegionalDisparity.new
  end

def test
  ji = [:Criteria, :Top_3_District, :Bottom_3_District]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1  = [:Criteria, :Top_3_District, :Bottom_3_District]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = RegionalDisparity.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = RegionalDisparity.map(b,params[:year],rain_fall_type,views)
         else
          b = RegionalDisparity.map_search(params[:search],compare,year,rain_fall_type)
          a = RegionalDisparity.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = RegionalDisparity.search(params[:search],compare,year,rain_fall_type)
        a = RegionalDisparity.table(b,rain_fall_type,year,ji1,compare)
      else
        @RegionalDisparitys = RegionalDisparity.search(params[:search],compare,year,rain_fall_type)
        a = RegionalDisparity.query(@RegionalDisparitys,params[:year],rain_fall_type,views,ji,compare)
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
    RegionalDisparity.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /regional_disparities/1/edit
  def edit
  end

  # POST /regional_disparities
  def create
    @regional_disparity = RegionalDisparity.new(regional_disparity_params)

    if @regional_disparity.save
      redirect_to @regional_disparity, notice: 'Regional disparity was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /regional_disparities/1
  def update
    if @regional_disparity.update(regional_disparity_params)
      redirect_to @regional_disparity, notice: 'Regional disparity was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /regional_disparities/1
  def destroy
    @regional_disparity.destroy
    redirect_to regional_disparities_url, notice: 'Regional disparity was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regional_disparity
      @regional_disparity = RegionalDisparity.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def regional_disparity_params
      params.require(:regional_disparity).permit(:Criteria, :Top_3_District, :Bottom_3_District)
    end
end
