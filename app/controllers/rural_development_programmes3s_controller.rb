class RuralDevelopmentProgrammes3sController < ApplicationController
  before_action :set_rural_development_programmes3, only: [:show, :edit, :update, :destroy]

  # GET /rural_development_programmes3s
  def index
    @rural_development_programmes3s = RuralDevelopmentProgrammes3.all

    respond_to do |format|
      format.html { render json:@rural_development_programmes3s }
  end
  end

  # GET /rural_development_programmes3s/1
  def show
  end

  # GET /rural_development_programmes3s/new
  def new
    @rural_development_programmes3 = RuralDevelopmentProgrammes3.new
  end


def test
  ji = [:Sector, :'2014-15', :'2015-16', :'2016-17', :Indicator]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   jip = [ :'2014-15', :'2015-16', :'2016-17']


   data = [
    "Water conservation",
    "Drought proofing",
    "Micro-irrigation works",
    "Works on Individual Land",
    "Renovation of traditional water bodies",
    "Land development",
    "Flood control and protection",
    "Rural connectivity",
    "Any other activity ",
    "Total Works Completed",
  ]
  legend = "Area"

search = rain_fall_type

   ji1 = [:Sector, :'2014-15', :'2015-16', :'2016-17', :Indicator]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = RuralDevelopmentProgrammes3.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = RuralDevelopmentProgrammes3.map(b,params[:year],rain_fall_type,views)
         else
          b = RuralDevelopmentProgrammes3.map_search(params[:search],compare,year,rain_fall_type)
          a = RuralDevelopmentProgrammes3.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = RuralDevelopmentProgrammes3.search(params[:search],compare,year,rain_fall_type)
        a = RuralDevelopmentProgrammes3.new_table(b,rain_fall_type,year,ji1,compare, search, data,legend)
      else
        @RuralDevelopmentProgrammes3s = RuralDevelopmentProgrammes3.search(params[:search],compare,year,rain_fall_type)
        a = RuralDevelopmentProgrammes3.query(@RuralDevelopmentProgrammes3s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    RuralDevelopmentProgrammes3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /rural_development_programmes3s/1/edit
  def edit
  end

  # POST /rural_development_programmes3s
  def create
    @rural_development_programmes3 = RuralDevelopmentProgrammes3.new(rural_development_programmes3_params)

    if @rural_development_programmes3.save
      redirect_to @rural_development_programmes3, notice: 'Rural development programmes3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /rural_development_programmes3s/1
  def update
    if @rural_development_programmes3.update(rural_development_programmes3_params)
      redirect_to @rural_development_programmes3, notice: 'Rural development programmes3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /rural_development_programmes3s/1
  def destroy
    @rural_development_programmes3.destroy
    redirect_to rural_development_programmes3s_url, notice: 'Rural development programmes3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rural_development_programmes3
      @rural_development_programmes3 = RuralDevelopmentProgrammes3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rural_development_programmes3_params
      params.require(:rural_development_programmes3).permit(:Sector, :'2014-15', :'2015-16', :'2016-17', :Indicator)
    end
end
