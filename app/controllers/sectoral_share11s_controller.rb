class SectoralShare11sController < ApplicationController
  before_action :set_sectoral_share11, only: [:show, :edit, :update, :destroy]

  # GET /sectoral_share11s
  def index
    @sectoral_share11s = SectoralShare11.all
  end

  # GET /sectoral_share11s/1
  def show
  end

  # GET /sectoral_share11s/new
  def new
    @sectoral_share11 = SectoralShare11.new
  end

def test
  ji = [:Target, :Achievement, :Achievement_Percentage]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend  = "Indicator"
   remove = "Bihar"
   ji1 = [:Districts, :Target, :Achievement, :Achievement_Percentage, :Indicator]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = SectoralShare11.search(params[:search],compare,year,rain_fall_type,legend)
          u = "Total"
          a = SectoralShare11.map(b,params[:year],rain_fall_type,views)
         else
          b = SectoralShare11.search(params[:search],compare,year,rain_fall_type,legend)
          a = SectoralShare11.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = SectoralShare11.search(params[:search],compare,year,rain_fall_type,legend)
        a = SectoralShare11.table(b,rain_fall_type,year,ji1,compare)
      else
        @SectoralShare11s = SectoralShare11.search(params[:search],compare,year,rain_fall_type,legend)
        a = SectoralShare11.query(@SectoralShare11s,params[:year],rain_fall_type,views,ji,compare,remove,search)
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
    SectoralShare11.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /sectoral_share11s/1/edit
  def edit
  end

  # POST /sectoral_share11s
  def create
    @sectoral_share11 = SectoralShare11.new(sectoral_share11_params)

    if @sectoral_share11.save
      redirect_to @sectoral_share11, notice: 'Sectoral share11 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sectoral_share11s/1
  def update
    if @sectoral_share11.update(sectoral_share11_params)
      redirect_to @sectoral_share11, notice: 'Sectoral share11 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sectoral_share11s/1
  def destroy
    @sectoral_share11.destroy
    redirect_to sectoral_share11s_url, notice: 'Sectoral share11 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sectoral_share11
      @sectoral_share11 = SectoralShare11.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sectoral_share11_params
      params.require(:sectoral_share11).permit(:Districts, :Target, :Achievement, :Achievement_Percentage, :Indicator)
    end
end
