class RuralDevelopmentProgrammes8sController < ApplicationController
  before_action :set_rural_development_programmes8, only: [:show, :edit, :update, :destroy]

  # GET /rural_development_programmes8s
  def index
    @rural_development_programmes8s = RuralDevelopmentProgrammes8.all
  end

  # GET /rural_development_programmes8s/1
  def show
  end

  # GET /rural_development_programmes8s/new
  def new
    @rural_development_programmes8 = RuralDevelopmentProgrammes8.new
  end

def test
  ji = [:Fund_available, :Fund_utilised, :Percentage_of_utilisation]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Districts"
   remove = "Bihar"
  #  ji1 = [:Characteristics, :India, :Bihar, :Year]
   if year == "All"
    ji1 = [:Districts,:"2014-15",:"2015-16",:"2016-17"]
   else
    if rain_fall_type != "All"
      ji1 = [:Districts, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:Districts, :Fund_available, :Fund_utilised, :Percentage_of_utilisation, :Year]
    end
    
   end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = RuralDevelopmentProgrammes8.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = RuralDevelopmentProgrammes8.map(b,params[:year],rain_fall_type,views)
         else
          b = RuralDevelopmentProgrammes8.map_search(params[:search],compare,year,rain_fall_type)
          a = RuralDevelopmentProgrammes8.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = RuralDevelopmentProgrammes8.search(params[:search],compare,year,rain_fall_type,legend)
        a = RuralDevelopmentProgrammes8.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @RuralDevelopmentProgrammes8s = RuralDevelopmentProgrammes8.search(params[:search],compare,year,rain_fall_type,legend)
        a = RuralDevelopmentProgrammes8.query(@RuralDevelopmentProgrammes8s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    RuralDevelopmentProgrammes8.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /rural_development_programmes8s/1/edit
  def edit
  end

  # POST /rural_development_programmes8s
  def create
    @rural_development_programmes8 = RuralDevelopmentProgrammes8.new(rural_development_programmes8_params)

    if @rural_development_programmes8.save
      redirect_to @rural_development_programmes8, notice: 'Rural development programmes8 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /rural_development_programmes8s/1
  def update
    if @rural_development_programmes8.update(rural_development_programmes8_params)
      redirect_to @rural_development_programmes8, notice: 'Rural development programmes8 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /rural_development_programmes8s/1
  def destroy
    @rural_development_programmes8.destroy
    redirect_to rural_development_programmes8s_url, notice: 'Rural development programmes8 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rural_development_programmes8
      @rural_development_programmes8 = RuralDevelopmentProgrammes8.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rural_development_programmes8_params
      params.require(:rural_development_programmes8).permit(:Districts, :Fund_available, :Fund_utilised, :Percentage_of_utilisation, :Year)
    end
end
