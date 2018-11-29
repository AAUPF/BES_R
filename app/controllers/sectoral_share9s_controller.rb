class SectoralShare9sController < ApplicationController
  before_action :set_sectoral_share9, only: [:show, :edit, :update, :destroy]

  # GET /sectoral_share9s
  def index
    @sectoral_share9s = SectoralShare9.all
  end

  # GET /sectoral_share9s/1
  def show
  end

  # GET /sectoral_share9s/new
  def new
    @sectoral_share9 = SectoralShare9.new
  end

def test
  ji = [:Target, :Achievement, :Achievement_Percentage]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search  = params[:search]
  legend = "Indicator"
  ji1 = [:Year, :Target, :Achievement, :Achievement_Percentage, :Indicator]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = SectoralShare9.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = SectoralShare9.map(b,params[:year],rain_fall_type,views)
         else
          b = SectoralShare9.map_search(params[:search],compare,year,rain_fall_type)
          a = SectoralShare9.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = SectoralShare9.search(params[:search],compare,year,rain_fall_type,legend)
        a = SectoralShare9.table(b,rain_fall_type,year,ji1,compare)
      else
        @SectoralShare9s = SectoralShare9.search(params[:search],compare,year,rain_fall_type,legend)
        a = SectoralShare9.query(@SectoralShare9s,params[:year],rain_fall_type,views,ji,compare)
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
    SectoralShare9.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /sectoral_share9s/1/edit
  def edit
  end

  # POST /sectoral_share9s
  def create
    @sectoral_share9 = SectoralShare9.new(sectoral_share9_params)

    if @sectoral_share9.save
      redirect_to @sectoral_share9, notice: 'Sectoral share9 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sectoral_share9s/1
  def update
    if @sectoral_share9.update(sectoral_share9_params)
      redirect_to @sectoral_share9, notice: 'Sectoral share9 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sectoral_share9s/1
  def destroy
    @sectoral_share9.destroy
    redirect_to sectoral_share9s_url, notice: 'Sectoral share9 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sectoral_share9
      @sectoral_share9 = SectoralShare9.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sectoral_share9_params
      params.require(:sectoral_share9).permit(:Year, :Target, :Achievement, :Achievement_Percentage, :Indicator)
    end
end
