class SectoralShare2sController < ApplicationController
  before_action :set_sectoral_share2, only: [:show, :edit, :update, :destroy]

  # GET /sectoral_share2s
  def index
    @sectoral_share2s = SectoralShare2.all
  end

  # GET /sectoral_share2s/1
  def show
  end

  # GET /sectoral_share2s/new
  def new
    @sectoral_share2 = SectoralShare2.new
  end

def test
  ji = [:Target, :Achievement, :Achievement_Percentage]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1 = [:Year, :Target, :Achievement, :Achievement_Percentage]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = SectoralShare2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = SectoralShare2.map(b,params[:year],rain_fall_type,views)
         else
          b = SectoralShare2.map_search(params[:search],compare,year,rain_fall_type)
          a = SectoralShare2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = SectoralShare2.search(params[:search],compare,year,rain_fall_type)
        a = SectoralShare2.table(b,rain_fall_type,year,ji1,compare)
      else
        @SectoralShare2s = SectoralShare2.search(params[:search],compare,year,rain_fall_type)
        a = SectoralShare2.query(@SectoralShare2s,params[:year],rain_fall_type,views,ji,compare)
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
    SectoralShare2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /sectoral_share2s/1/edit
  def edit
  end

  # POST /sectoral_share2s
  def create
    @sectoral_share2 = SectoralShare2.new(sectoral_share2_params)

    if @sectoral_share2.save
      redirect_to @sectoral_share2, notice: 'Sectoral share2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sectoral_share2s/1
  def update
    if @sectoral_share2.update(sectoral_share2_params)
      redirect_to @sectoral_share2, notice: 'Sectoral share2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sectoral_share2s/1
  def destroy
    @sectoral_share2.destroy
    redirect_to sectoral_share2s_url, notice: 'Sectoral share2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sectoral_share2
      @sectoral_share2 = SectoralShare2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sectoral_share2_params
      params.require(:sectoral_share2).permit(:Year, :Target, :Achievement, :Achievement_Percentage)
    end
end
