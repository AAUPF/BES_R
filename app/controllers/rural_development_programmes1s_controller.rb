class RuralDevelopmentProgrammes1sController < ApplicationController
  before_action :set_rural_development_programmes1, only: [:show, :edit, :update, :destroy]

  # GET /rural_development_programmes1s
  def index
    @rural_development_programmes1s = RuralDevelopmentProgrammes1.all
  end

  # GET /rural_development_programmes1s/1
  def show
  end

  # GET /rural_development_programmes1s/new
  def new
    @rural_development_programmes1 = RuralDevelopmentProgrammes1.new
  end

def test
  ji = [:Progress]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Items"
   remove = ""
  #  ji1 = [:Characteristics, :India, :Bihar, :Year]
   if year == "All"
    ji1 = [:Items,:"2012-13",:"2013-14",:"2014-15",:"2015-16",:"2016-17",:"2017-18_till_Sept_17"]
   else
    if rain_fall_type != "All"
      ji1 = [:Items, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:Items, :Progress, :Year]
    end
    
   end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = RuralDevelopmentProgrammes1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = RuralDevelopmentProgrammes1.map(b,params[:year],rain_fall_type,views)
         else
          b = RuralDevelopmentProgrammes1.map_search(params[:search],compare,year,rain_fall_type)
          a = RuralDevelopmentProgrammes1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = RuralDevelopmentProgrammes1.search(params[:search],compare,year,rain_fall_type,legend)
        a = RuralDevelopmentProgrammes1.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @RuralDevelopmentProgrammes1s = RuralDevelopmentProgrammes1.search(params[:search],compare,year,rain_fall_type,legend)
        a = RuralDevelopmentProgrammes1.query(@RuralDevelopmentProgrammes1s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    RuralDevelopmentProgrammes1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /rural_development_programmes1s/1/edit
  def edit
  end

  # POST /rural_development_programmes1s
  def create
    @rural_development_programmes1 = RuralDevelopmentProgrammes1.new(rural_development_programmes1_params)

    if @rural_development_programmes1.save
      redirect_to @rural_development_programmes1, notice: 'Rural development programmes1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /rural_development_programmes1s/1
  def update
    if @rural_development_programmes1.update(rural_development_programmes1_params)
      redirect_to @rural_development_programmes1, notice: 'Rural development programmes1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /rural_development_programmes1s/1
  def destroy
    @rural_development_programmes1.destroy
    redirect_to rural_development_programmes1s_url, notice: 'Rural development programmes1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rural_development_programmes1
      @rural_development_programmes1 = RuralDevelopmentProgrammes1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rural_development_programmes1_params
      params.require(:rural_development_programmes1).permit(:Items, :Progress, :Year)
    end
end
