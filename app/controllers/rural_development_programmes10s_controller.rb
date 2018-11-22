class RuralDevelopmentProgrammes10sController < ApplicationController
  before_action :set_rural_development_programmes10, only: [:show, :edit, :update, :destroy]

  # GET /rural_development_programmes10s
  def index
    @rural_development_programmes10s = RuralDevelopmentProgrammes10.all
  end

  # GET /rural_development_programmes10s/1
  def show
  end

  # GET /rural_development_programmes10s/new
  def new
    @rural_development_programmes10 = RuralDevelopmentProgrammes10.new
  end

# def test
#   ji = [:Districts, :Allotment, :Lifting, :Lifting_Percentage, :Crops]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = RuralDevelopmentProgrammes10.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = RuralDevelopmentProgrammes10.map(b,params[:year],rain_fall_type,views)
#          else
#           b = RuralDevelopmentProgrammes10.map_search(params[:search],compare,year,rain_fall_type)
#           a = RuralDevelopmentProgrammes10.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = RuralDevelopmentProgrammes10.search(params[:search],compare,year,rain_fall_type)
#         a = RuralDevelopmentProgrammes10.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @RuralDevelopmentProgrammes10s = RuralDevelopmentProgrammes10.search(params[:search],compare,year,rain_fall_type)
#         a = RuralDevelopmentProgrammes10.query(@RuralDevelopmentProgrammes10s,params[:year],rain_fall_type,views,ji,compare)
#       end
#       respond_to do |format|
#         format.html { render json:a }
#     end

#   else
#     respond_to do |format|
#       format.html { render json: "error"}
#   end
#   end

# end






def test
  ji = [ :Allotment, :Lifting, :Lifting_Percentage]
  rain_fall_type = params[:rain_fall_type]

   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1 = [:Districts, :Allotment, :Lifting, :Lifting_Percentage, :Crops]

legend  = "Crops"

remove = "Bihar"
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = RuralDevelopmentProgrammes10.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = RuralDevelopmentProgrammes10.map(b,params[:year],rain_fall_type,views)
         else
          b = RuralDevelopmentProgrammes10.map_search(params[:search],compare,year,rain_fall_type)
          a = RuralDevelopmentProgrammes10.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = RuralDevelopmentProgrammes10.search(params[:search],compare,year,rain_fall_type,legend)
        a = RuralDevelopmentProgrammes10.table(b,rain_fall_type,year,ji1,compare)
      else
        @RuralDevelopmentProgrammes10s = RuralDevelopmentProgrammes10.search(params[:search],compare,year,rain_fall_type,legend)
        a = RuralDevelopmentProgrammes10.query(@RuralDevelopmentProgrammes10s,params[:year],rain_fall_type,views,ji,compare,remove)
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
    RuralDevelopmentProgrammes10.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /rural_development_programmes10s/1/edit
  def edit
  end

  # POST /rural_development_programmes10s
  def create
    @rural_development_programmes10 = RuralDevelopmentProgrammes10.new(rural_development_programmes10_params)

    if @rural_development_programmes10.save
      redirect_to @rural_development_programmes10, notice: 'Rural development programmes10 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /rural_development_programmes10s/1
  def update
    if @rural_development_programmes10.update(rural_development_programmes10_params)
      redirect_to @rural_development_programmes10, notice: 'Rural development programmes10 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /rural_development_programmes10s/1
  def destroy
    @rural_development_programmes10.destroy
    redirect_to rural_development_programmes10s_url, notice: 'Rural development programmes10 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rural_development_programmes10
      @rural_development_programmes10 = RuralDevelopmentProgrammes10.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rural_development_programmes10_params
      params.require(:rural_development_programmes10).permit(:Districts, :Allotment, :Lifting, :Lifting_Percentage, :Crops)
    end
end
