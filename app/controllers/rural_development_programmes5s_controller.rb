class RuralDevelopmentProgrammes5sController < ApplicationController
  before_action :set_rural_development_programmes5, only: [:show, :edit, :update, :destroy]

  # GET /rural_development_programmes5s
  def index
    @rural_development_programmes5s = RuralDevelopmentProgrammes5.all
  end

  # GET /rural_development_programmes5s/1
  def show
  end

  # GET /rural_development_programmes5s/new
  def new
    @rural_development_programmes5 = RuralDevelopmentProgrammes5.new
  end

def test
  ji = [:No_of_PDS_Outlets, :Percentage_Share]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Social_Background_of_PDS_Dealers"
   remove = "Total"
  #  ji1 = [:Characteristics, :India, :Bihar, :Year]
   if year == "All"
    ji1 = [:Social_Background_of_PDS_Dealers,:"2014",:"2015",:"2016",:"2017"]
   else
    if rain_fall_type != "All"
      ji1 = [:Social_Background_of_PDS_Dealers, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:Social_Background_of_PDS_Dealers, :No_of_PDS_Outlets, :Percentage_Share, :Year]
    end
    
   end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = RuralDevelopmentProgrammes5.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = RuralDevelopmentProgrammes5.map(b,params[:year],rain_fall_type,views)
         else
          b = RuralDevelopmentProgrammes5.map_search(params[:search],compare,year,rain_fall_type)
          a = RuralDevelopmentProgrammes5.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = RuralDevelopmentProgrammes5.search(params[:search],compare,year,rain_fall_type,legend)
        a = RuralDevelopmentProgrammes5.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @RuralDevelopmentProgrammes5s = RuralDevelopmentProgrammes5.search(params[:search],compare,year,rain_fall_type,legend)
        a = RuralDevelopmentProgrammes5.query(@RuralDevelopmentProgrammes5s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    RuralDevelopmentProgrammes5.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /rural_development_programmes5s/1/edit
  def edit
  end

  # POST /rural_development_programmes5s
  def create
    @rural_development_programmes5 = RuralDevelopmentProgrammes5.new(rural_development_programmes5_params)

    if @rural_development_programmes5.save
      redirect_to @rural_development_programmes5, notice: 'Rural development programmes5 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /rural_development_programmes5s/1
  def update
    if @rural_development_programmes5.update(rural_development_programmes5_params)
      redirect_to @rural_development_programmes5, notice: 'Rural development programmes5 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /rural_development_programmes5s/1
  def destroy
    @rural_development_programmes5.destroy
    redirect_to rural_development_programmes5s_url, notice: 'Rural development programmes5 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rural_development_programmes5
      @rural_development_programmes5 = RuralDevelopmentProgrammes5.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rural_development_programmes5_params
      params.require(:rural_development_programmes5).permit(:Social_Background_of_PDS_Dealers, :No_of_PDS_Outlets, :Percentage_Share, :Year)
    end
end
