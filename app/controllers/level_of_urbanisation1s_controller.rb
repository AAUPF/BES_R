class LevelOfUrbanisation1sController < ApplicationController
  before_action :set_level_of_urbanisation1, only: [:show, :edit, :update, :destroy]

  # GET /level_of_urbanisation1s
  def index
    @level_of_urbanisation1s = LevelOfUrbanisation1.all
  end

  # GET /level_of_urbanisation1s/1
  def show
  end

  # GET /level_of_urbanisation1s/new
  def new
    @level_of_urbanisation1 = LevelOfUrbanisation1.new
  end

# def test
#   ji = [:Year, :India, :Bihar, :Indicator]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = LevelOfUrbanisation1.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = LevelOfUrbanisation1.map(b,params[:year],rain_fall_type,views)
#          else
#           b = LevelOfUrbanisation1.map_search(params[:search],compare,year,rain_fall_type)
#           a = LevelOfUrbanisation1.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = LevelOfUrbanisation1.search(params[:search],compare,year,rain_fall_type)
#         a = LevelOfUrbanisation1.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @LevelOfUrbanisation1s = LevelOfUrbanisation1.search(params[:search],compare,year,rain_fall_type)
#         a = LevelOfUrbanisation1.query(@LevelOfUrbanisation1s,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [:India, :Bihar]
  rain_fall_type = params[:rain_fall_type]
  views  = params[:views]
  year  = params[:year]
  search  = params[:search]
  legend = "Indicator"
  compare = params[:compare]
  ji1 = [:Year, :India, :Bihar, :Indicator]
if rain_fall_type || views

    if views == "Map View"
      l =  rain_fall_type.gsub(" ","")           
       if rain_fall_type  ==  "All"
        b = LevelOfUrbanisation1.map_search("All",compare,year,rain_fall_type)
        u = "Total"
        a = LevelOfUrbanisation1.map(b,params[:year],rain_fall_type,views)
       else
        b = LevelOfUrbanisation1.map_search(params[:search],compare,year,rain_fall_type)
        a = LevelOfUrbanisation1.map(b,rain_fall_type,year,ji)
       end
    elsif views == "Table"  
      b = LevelOfUrbanisation1.search(params[:search],compare,year,rain_fall_type,legend)
      a = LevelOfUrbanisation1.table(b,rain_fall_type,year,ji1,compare)
    else
      @LevelOfUrbanisation1s = LevelOfUrbanisation1.search(params[:search],compare,year,rain_fall_type,legend)
      a = LevelOfUrbanisation1.query(@LevelOfUrbanisation1s,params[:year],rain_fall_type,views,ji,compare)
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
    LevelOfUrbanisation1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /level_of_urbanisation1s/1/edit
  def edit
  end

  # POST /level_of_urbanisation1s
  def create
    @level_of_urbanisation1 = LevelOfUrbanisation1.new(level_of_urbanisation1_params)

    if @level_of_urbanisation1.save
      redirect_to @level_of_urbanisation1, notice: 'Level of urbanisation1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /level_of_urbanisation1s/1
  def update
    if @level_of_urbanisation1.update(level_of_urbanisation1_params)
      redirect_to @level_of_urbanisation1, notice: 'Level of urbanisation1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /level_of_urbanisation1s/1
  def destroy
    @level_of_urbanisation1.destroy
    redirect_to level_of_urbanisation1s_url, notice: 'Level of urbanisation1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_level_of_urbanisation1
      @level_of_urbanisation1 = LevelOfUrbanisation1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def level_of_urbanisation1_params
      params.require(:level_of_urbanisation1).permit(:Year, :India, :Bihar, :Indicator)
    end
end
