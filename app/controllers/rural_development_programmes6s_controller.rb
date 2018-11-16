class RuralDevelopmentProgrammes6sController < ApplicationController
  before_action :set_rural_development_programmes6, only: [:show, :edit, :update, :destroy]

  # GET /rural_development_programmes6s
  def index
    @rural_development_programmes6s = RuralDevelopmentProgrammes6.all
  end

  # GET /rural_development_programmes6s/1
  def show
  end

  # GET /rural_development_programmes6s/new
  def new
    @rural_development_programmes6 = RuralDevelopmentProgrammes6.new
  end




def test
  ji = [:Allotment, :Lifting, :Lifting_Percentage]
  rain_fall_type = params[:rain_fall_type]
  views  = params[:views]
  year  = params[:year]
  search  = params[:search]
  legend = "Crop"
  compare = params[:compare]
  ji1 = [:Year, :Allotment, :Lifting, :Lifting_Percentage, :Crop]
if rain_fall_type || views

    if views == "Map View"
      l =  rain_fall_type.gsub(" ","")           
       if rain_fall_type  ==  "All"
        b = RuralDevelopmentProgrammes6.map_search("All",compare,year,rain_fall_type)
        u = "Total"
        a = RuralDevelopmentProgrammes6.map(b,params[:year],rain_fall_type,views)
       else
        b = RuralDevelopmentProgrammes6.map_search(params[:search],compare,year,rain_fall_type)
        a = RuralDevelopmentProgrammes6.map(b,rain_fall_type,year,ji)
       end
    elsif views == "Table"  
      b = RuralDevelopmentProgrammes6.search(params[:search],compare,year,rain_fall_type,legend)
      a = RuralDevelopmentProgrammes6.table(b,rain_fall_type,year,ji1,compare)
    else
      @RuralDevelopmentProgrammes6s = RuralDevelopmentProgrammes6.search(params[:search],compare,year,rain_fall_type,legend)
      a = RuralDevelopmentProgrammes6.query(@RuralDevelopmentProgrammes6s,params[:year],rain_fall_type,views,ji,compare)
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
    RuralDevelopmentProgrammes6.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /rural_development_programmes6s/1/edit
  def edit
  end

  # POST /rural_development_programmes6s
  def create
    @rural_development_programmes6 = RuralDevelopmentProgrammes6.new(rural_development_programmes6_params)

    if @rural_development_programmes6.save
      redirect_to @rural_development_programmes6, notice: 'Rural development programmes6 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /rural_development_programmes6s/1
  def update
    if @rural_development_programmes6.update(rural_development_programmes6_params)
      redirect_to @rural_development_programmes6, notice: 'Rural development programmes6 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /rural_development_programmes6s/1
  def destroy
    @rural_development_programmes6.destroy
    redirect_to rural_development_programmes6s_url, notice: 'Rural development programmes6 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rural_development_programmes6
      @rural_development_programmes6 = RuralDevelopmentProgrammes6.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rural_development_programmes6_params
      params.require(:rural_development_programmes6).permit(:Year, :Allotment, :Lifting, :Lifting_Percentage, :Crop)
    end
end
