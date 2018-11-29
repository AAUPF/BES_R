class LevelOfUrbanisation2sController < ApplicationController
  before_action :set_level_of_urbanisation2, only: [:show, :edit, :update, :destroy]

  # GET /level_of_urbanisation2s
  def index
    @level_of_urbanisation2s = LevelOfUrbanisation2.all
  end

  # GET /level_of_urbanisation2s/1
  def show
  end

  # GET /level_of_urbanisation2s/new
  def new
    @level_of_urbanisation2 = LevelOfUrbanisation2.new
  end

# def test
#   ji = [:Size_Class, :Number_2001, :Number_2011, :Population_million_2001, :Population_million_2011, :Growth_Rate_of_Population]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = LevelOfUrbanisation2.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = LevelOfUrbanisation2.map(b,params[:year],rain_fall_type,views)
#          else
#           b = LevelOfUrbanisation2.map_search(params[:search],compare,year,rain_fall_type)
#           a = LevelOfUrbanisation2.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = LevelOfUrbanisation2.search(params[:search],compare,year,rain_fall_type)
#         a = LevelOfUrbanisation2.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @LevelOfUrbanisation2s = LevelOfUrbanisation2.search(params[:search],compare,year,rain_fall_type)
#         a = LevelOfUrbanisation2.query(@LevelOfUrbanisation2s,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [ :Number_2001, :Number_2011, :Population_million_2001, :Population_million_2011, :Growth_Rate_of_Population]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   rain_fall_type = params[:rain_fall_type]
   legend = "Size_Class"
ji1 = [:Size_Class, :Number_2001, :Number_2011, :Population_million_2001, :Population_million_2011, :Growth_Rate_of_Population]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = LevelOfUrbanisation2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = LevelOfUrbanisation2.map(b,params[:year],rain_fall_type,views)
         else
          b = LevelOfUrbanisation2.map_search(params[:search],compare,year,rain_fall_type)
          a = LevelOfUrbanisation2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = LevelOfUrbanisation2.search(params[:search],compare,year,rain_fall_type,legend)
        a = LevelOfUrbanisation2.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @LevelOfUrbanisation2s = LevelOfUrbanisation2.search(params[:search],compare,year,rain_fall_type,legend)
        a = LevelOfUrbanisation2.query(@LevelOfUrbanisation2s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    LevelOfUrbanisation2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /level_of_urbanisation2s/1/edit
  def edit
  end

  # POST /level_of_urbanisation2s
  def create
    @level_of_urbanisation2 = LevelOfUrbanisation2.new(level_of_urbanisation2_params)

    if @level_of_urbanisation2.save
      redirect_to @level_of_urbanisation2, notice: 'Level of urbanisation2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /level_of_urbanisation2s/1
  def update
    if @level_of_urbanisation2.update(level_of_urbanisation2_params)
      redirect_to @level_of_urbanisation2, notice: 'Level of urbanisation2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /level_of_urbanisation2s/1
  def destroy
    @level_of_urbanisation2.destroy
    redirect_to level_of_urbanisation2s_url, notice: 'Level of urbanisation2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_level_of_urbanisation2
      @level_of_urbanisation2 = LevelOfUrbanisation2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def level_of_urbanisation2_params
      params.require(:level_of_urbanisation2).permit(:Size_Class, :Number_2001, :Number_2011, :Population_million_2001, :Population_million_2011, :Growth_Rate_of_Population)
    end
end
