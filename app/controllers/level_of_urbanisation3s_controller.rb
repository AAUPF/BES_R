class LevelOfUrbanisation3sController < ApplicationController
  before_action :set_level_of_urbanisation3, only: [:show, :edit, :update, :destroy]

  # GET /level_of_urbanisation3s
  def index
    @level_of_urbanisation3s = LevelOfUrbanisation3.all
  end

  # GET /level_of_urbanisation3s/1
  def show
  end

  # GET /level_of_urbanisation3s/new
  def new
    @level_of_urbanisation3 = LevelOfUrbanisation3.new
  end

def test
  ji = [:Urbanisation]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
# ji1 = [:Districts, :Per_Capita_GDP, :Year]
if year == "All"
  ji1 = [:Districts, :"2001", :"2011"]
else
  ji1 = [:Districts, :Urbanisation, :Year]
end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = LevelOfUrbanisation3.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = LevelOfUrbanisation3.map(b,params[:year],rain_fall_type,views)
         else
          b = LevelOfUrbanisation3.map_search(params[:search],compare,year,rain_fall_type)
          a = LevelOfUrbanisation3.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = LevelOfUrbanisation3.search(params[:search],compare,year,rain_fall_type)
        a = LevelOfUrbanisation3.table(b,rain_fall_type,year,ji1,compare)
      else
        @LevelOfUrbanisation3s = LevelOfUrbanisation3.search(params[:search],compare,year,rain_fall_type)
        a = LevelOfUrbanisation3.query(@LevelOfUrbanisation3s,params[:year],rain_fall_type,views,ji,compare,search)
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
    LevelOfUrbanisation3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /level_of_urbanisation3s/1/edit
  def edit
  end

  # POST /level_of_urbanisation3s
  def create
    @level_of_urbanisation3 = LevelOfUrbanisation3.new(level_of_urbanisation3_params)

    if @level_of_urbanisation3.save
      redirect_to @level_of_urbanisation3, notice: 'Level of urbanisation3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /level_of_urbanisation3s/1
  def update
    if @level_of_urbanisation3.update(level_of_urbanisation3_params)
      redirect_to @level_of_urbanisation3, notice: 'Level of urbanisation3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /level_of_urbanisation3s/1
  def destroy
    @level_of_urbanisation3.destroy
    redirect_to level_of_urbanisation3s_url, notice: 'Level of urbanisation3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_level_of_urbanisation3
      @level_of_urbanisation3 = LevelOfUrbanisation3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def level_of_urbanisation3_params
      params.require(:level_of_urbanisation3).permit(:Districts, :Urbanisation, :Year)
    end
end
