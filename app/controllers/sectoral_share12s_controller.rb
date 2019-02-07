class SectoralShare12sController < ApplicationController
  before_action :set_sectoral_share12, only: [:show, :edit, :update, :destroy]

  # GET /sectoral_share12s
  def index
    @sectoral_share12s = SectoralShare12.all
  end

  # GET /sectoral_share12s/1
  def show
  end

  # GET /sectoral_share12s/new
  def new
    @sectoral_share12 = SectoralShare12.new
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
          b = SectoralShare12.search(params[:search],compare,year,rain_fall_type,legend)
          u = "Total"
          a = SectoralShare12.map(b,params[:year],rain_fall_type,views)
         else
          b = SectoralShare12.search(params[:search],compare,year,rain_fall_type,legend)
          a = SectoralShare12.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = SectoralShare12.search(params[:search],compare,year,rain_fall_type,legend)
        a = SectoralShare12.table(b,rain_fall_type,year,ji1,compare)
      else
        @SectoralShare12s = SectoralShare12.search(params[:search],compare,year,rain_fall_type,legend)
        a = SectoralShare12.query(@SectoralShare12s,params[:year],rain_fall_type,views,ji,compare,remove,search)
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
    SectoralShare12.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /sectoral_share12s/1/edit
  def edit
  end

  # POST /sectoral_share12s
  def create
    @sectoral_share12 = SectoralShare12.new(sectoral_share12_params)

    if @sectoral_share12.save
      redirect_to @sectoral_share12, notice: 'Sectoral share12 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sectoral_share12s/1
  def update
    if @sectoral_share12.update(sectoral_share12_params)
      redirect_to @sectoral_share12, notice: 'Sectoral share12 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sectoral_share12s/1
  def destroy
    @sectoral_share12.destroy
    redirect_to sectoral_share12s_url, notice: 'Sectoral share12 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sectoral_share12
      @sectoral_share12 = SectoralShare12.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sectoral_share12_params
      params.require(:sectoral_share12).permit(:Districts, :Target, :Achievement, :Achievement_Percentage, :Indicator)
    end
end
