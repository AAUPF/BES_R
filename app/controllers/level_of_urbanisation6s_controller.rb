class LevelOfUrbanisation6sController < ApplicationController
  before_action :set_level_of_urbanisation6, only: [:show, :edit, :update, :destroy]

  # GET /level_of_urbanisation6s
  def index
    @level_of_urbanisation6s = LevelOfUrbanisation6.all
  end

  # GET /level_of_urbanisation6s/1
  def show
  end

  # GET /level_of_urbanisation6s/new
  def new
    @level_of_urbanisation6 = LevelOfUrbanisation6.new
  end

# def test
#   ji = [:Year, :Municipal_Corporations, :Municipal_Councils, :Nagar_Panchayats, :Total, :Indicator]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = LevelOfUrbanisation6.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = LevelOfUrbanisation6.map(b,params[:year],rain_fall_type,views)
#          else
#           b = LevelOfUrbanisation6.map_search(params[:search],compare,year,rain_fall_type)
#           a = LevelOfUrbanisation6.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = LevelOfUrbanisation6.search(params[:search],compare,year,rain_fall_type)
#         a = LevelOfUrbanisation6.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @LevelOfUrbanisation6s = LevelOfUrbanisation6.search(params[:search],compare,year,rain_fall_type)
#         a = LevelOfUrbanisation6.query(@LevelOfUrbanisation6s,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [:Municipal_Corporations, :Municipal_Councils, :Nagar_Panchayats, :Total]
  rain_fall_type = params[:rain_fall_type]
  views  = params[:views]
  year  = params[:year]
  search  = params[:search]
  legend = "Indicator"
  compare = params[:compare]
  ji1 = [:Year, :Municipal_Corporations, :Municipal_Councils, :Nagar_Panchayats, :Total, :Indicator]
if rain_fall_type || views

    if views == "Map View"
      l =  rain_fall_type.gsub(" ","")           
       if rain_fall_type  ==  "All"
        b = LevelOfUrbanisation6.map_search("All",compare,year,rain_fall_type)
        u = "Total"
        a = LevelOfUrbanisation6.map(b,params[:year],rain_fall_type,views)
       else
        b = LevelOfUrbanisation6.map_search(params[:search],compare,year,rain_fall_type)
        a = LevelOfUrbanisation6.map(b,rain_fall_type,year,ji)
       end
    elsif views == "Table"  
      b = LevelOfUrbanisation6.search(params[:search],compare,year,rain_fall_type,legend)
      a = LevelOfUrbanisation6.table(b,rain_fall_type,year,ji1,compare)
    else
      @LevelOfUrbanisation6s = LevelOfUrbanisation6.search(params[:search],compare,year,rain_fall_type,legend)
      a = LevelOfUrbanisation6.query(@LevelOfUrbanisation6s,params[:year],rain_fall_type,views,ji,compare)
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
    LevelOfUrbanisation6.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /level_of_urbanisation6s/1/edit
  def edit
  end

  # POST /level_of_urbanisation6s
  def create
    @level_of_urbanisation6 = LevelOfUrbanisation6.new(level_of_urbanisation6_params)

    if @level_of_urbanisation6.save
      redirect_to @level_of_urbanisation6, notice: 'Level of urbanisation6 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /level_of_urbanisation6s/1
  def update
    if @level_of_urbanisation6.update(level_of_urbanisation6_params)
      redirect_to @level_of_urbanisation6, notice: 'Level of urbanisation6 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /level_of_urbanisation6s/1
  def destroy
    @level_of_urbanisation6.destroy
    redirect_to level_of_urbanisation6s_url, notice: 'Level of urbanisation6 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_level_of_urbanisation6
      @level_of_urbanisation6 = LevelOfUrbanisation6.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def level_of_urbanisation6_params
      params.require(:level_of_urbanisation6).permit(:Year, :Municipal_Corporations, :Municipal_Councils, :Nagar_Panchayats, :Total, :Indicator)
    end
end
