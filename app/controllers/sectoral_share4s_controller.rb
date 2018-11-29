class SectoralShare4sController < ApplicationController
  before_action :set_sectoral_share4, only: [:show, :edit, :update, :destroy]

  # GET /sectoral_share4s
  def index
    @sectoral_share4s = SectoralShare4.all
  end

  # GET /sectoral_share4s/1
  def show
  end

  # GET /sectoral_share4s/new
  def new
    @sectoral_share4 = SectoralShare4.new
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
          b = SectoralShare4.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = SectoralShare4.map(b,params[:year],rain_fall_type,views)
         else
          b = SectoralShare4.map_search(params[:search],compare,year,rain_fall_type)
          a = SectoralShare4.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = SectoralShare4.search(params[:search],compare,year,rain_fall_type,legend)
        a = SectoralShare4.table(b,rain_fall_type,year,ji1,compare)
      else
        @SectoralShare4s = SectoralShare4.search(params[:search],compare,year,rain_fall_type,legend)
        a = SectoralShare4.query(@SectoralShare4s,params[:year],rain_fall_type,views,ji,compare)
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
    SectoralShare4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /sectoral_share4s/1/edit
  def edit
  end

  # POST /sectoral_share4s
  def create
    @sectoral_share4 = SectoralShare4.new(sectoral_share4_params)

    if @sectoral_share4.save
      redirect_to @sectoral_share4, notice: 'Sectoral share4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sectoral_share4s/1
  def update
    if @sectoral_share4.update(sectoral_share4_params)
      redirect_to @sectoral_share4, notice: 'Sectoral share4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sectoral_share4s/1
  def destroy
    @sectoral_share4.destroy
    redirect_to sectoral_share4s_url, notice: 'Sectoral share4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sectoral_share4
      @sectoral_share4 = SectoralShare4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sectoral_share4_params
      params.require(:sectoral_share4).permit(:Year, :Target, :Achievement, :Achievement_Percentage, :Indicator)
    end
end
