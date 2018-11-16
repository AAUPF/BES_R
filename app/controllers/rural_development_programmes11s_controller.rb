class RuralDevelopmentProgrammes11sController < ApplicationController
  before_action :set_rural_development_programmes11, only: [:show, :edit, :update, :destroy]

  # GET /rural_development_programmes11s
  def index
    @rural_development_programmes11s = RuralDevelopmentProgrammes11.all
  end

  # GET /rural_development_programmes11s/1
  def show
  end

  # GET /rural_development_programmes11s/new
  def new
    @rural_development_programmes11 = RuralDevelopmentProgrammes11.new
  end

def test
  ji = [:Trained, :Placed]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Programme"
   ji1 = [:Programme, :Trained, :Placed]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = RuralDevelopmentProgrammes11.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = RuralDevelopmentProgrammes11.map(b,params[:year],rain_fall_type,views)
         else
          b = RuralDevelopmentProgrammes11.map_search(params[:search],compare,year,rain_fall_type)
          a = RuralDevelopmentProgrammes11.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = RuralDevelopmentProgrammes11.search(params[:search],compare,year,rain_fall_type,legend)
        a = RuralDevelopmentProgrammes11.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @RuralDevelopmentProgrammes11s = RuralDevelopmentProgrammes11.search(params[:search],compare,year,rain_fall_type,legend)
        a = RuralDevelopmentProgrammes11.query(@RuralDevelopmentProgrammes11s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    RuralDevelopmentProgrammes11.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /rural_development_programmes11s/1/edit
  def edit
  end

  # POST /rural_development_programmes11s
  def create
    @rural_development_programmes11 = RuralDevelopmentProgrammes11.new(rural_development_programmes11_params)

    if @rural_development_programmes11.save
      redirect_to @rural_development_programmes11, notice: 'Rural development programmes11 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /rural_development_programmes11s/1
  def update
    if @rural_development_programmes11.update(rural_development_programmes11_params)
      redirect_to @rural_development_programmes11, notice: 'Rural development programmes11 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /rural_development_programmes11s/1
  def destroy
    @rural_development_programmes11.destroy
    redirect_to rural_development_programmes11s_url, notice: 'Rural development programmes11 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rural_development_programmes11
      @rural_development_programmes11 = RuralDevelopmentProgrammes11.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rural_development_programmes11_params
      params.require(:rural_development_programmes11).permit(:Programme, :Trained, :Placed)
    end
end
