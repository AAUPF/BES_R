class LevelOfUrbanisation5sController < ApplicationController
  before_action :set_level_of_urbanisation5, only: [:show, :edit, :update, :destroy]

  # GET /level_of_urbanisation5s
  def index
    @level_of_urbanisation5s = LevelOfUrbanisation5.all
  end

  # GET /level_of_urbanisation5s/1
  def show
  end

  # GET /level_of_urbanisation5s/new
  def new
    @level_of_urbanisation5 = LevelOfUrbanisation5.new
  end

def test
  ji = [:Municipal_Corporations, :Municipal_Councils, :Nagar_Panchayats]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Particulars"
ji1 = [:Particulars, :Municipal_Corporations, :Municipal_Councils, :Nagar_Panchayats, :Total]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = LevelOfUrbanisation5.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = LevelOfUrbanisation5.map(b,params[:year],rain_fall_type,views)
         else
          b = LevelOfUrbanisation5.map_search(params[:search],compare,year,rain_fall_type)
          a = LevelOfUrbanisation5.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = LevelOfUrbanisation5.search(params[:search],compare,year,rain_fall_type,legend)
        a = LevelOfUrbanisation5.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @LevelOfUrbanisation5s = LevelOfUrbanisation5.search(params[:search],compare,year,rain_fall_type,legend)
        a = LevelOfUrbanisation5.query(@LevelOfUrbanisation5s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    LevelOfUrbanisation5.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /level_of_urbanisation5s/1/edit
  def edit
  end

  # POST /level_of_urbanisation5s
  def create
    @level_of_urbanisation5 = LevelOfUrbanisation5.new(level_of_urbanisation5_params)

    if @level_of_urbanisation5.save
      redirect_to @level_of_urbanisation5, notice: 'Level of urbanisation5 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /level_of_urbanisation5s/1
  def update
    if @level_of_urbanisation5.update(level_of_urbanisation5_params)
      redirect_to @level_of_urbanisation5, notice: 'Level of urbanisation5 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /level_of_urbanisation5s/1
  def destroy
    @level_of_urbanisation5.destroy
    redirect_to level_of_urbanisation5s_url, notice: 'Level of urbanisation5 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_level_of_urbanisation5
      @level_of_urbanisation5 = LevelOfUrbanisation5.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def level_of_urbanisation5_params
      params.require(:level_of_urbanisation5).permit(:Particulars, :Municipal_Corporations, :Municipal_Councils, :Nagar_Panchayats, :Total)
    end
end
