class SectoralShare5sController < ApplicationController
  before_action :set_sectoral_share5, only: [:show, :edit, :update, :destroy]

  # GET /sectoral_share5s
  def index
    @sectoral_share5s = SectoralShare5.all
  end

  # GET /sectoral_share5s/1
  def show
  end

  # GET /sectoral_share5s/new
  def new
    @sectoral_share5 = SectoralShare5.new
  end

def test
  ji = [:Commercial_Banks, :RRBs, :Cooperative_and_LDBs, :Annual_Growth_Rate]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   ji1 = [:Year, :Commercial_Banks, :RRBs, :Cooperative_and_LDBs, :Total, :Annual_Growth_Rate]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = SectoralShare5.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = SectoralShare5.map(b,params[:year],rain_fall_type,views)
         else
          b = SectoralShare5.map_search(params[:search],compare,year,rain_fall_type)
          a = SectoralShare5.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = SectoralShare5.search(params[:search],compare,year,rain_fall_type)
        a = SectoralShare5.table(b,rain_fall_type,year,ji1,compare)
      else
        @SectoralShare5s = SectoralShare5.search(params[:search],compare,year,rain_fall_type)
        a = SectoralShare5.query(@SectoralShare5s,params[:year],rain_fall_type,views,ji,compare)
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
    SectoralShare5.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /sectoral_share5s/1/edit
  def edit
  end

  # POST /sectoral_share5s
  def create
    @sectoral_share5 = SectoralShare5.new(sectoral_share5_params)

    if @sectoral_share5.save
      redirect_to @sectoral_share5, notice: 'Sectoral share5 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sectoral_share5s/1
  def update
    if @sectoral_share5.update(sectoral_share5_params)
      redirect_to @sectoral_share5, notice: 'Sectoral share5 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sectoral_share5s/1
  def destroy
    @sectoral_share5.destroy
    redirect_to sectoral_share5s_url, notice: 'Sectoral share5 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sectoral_share5
      @sectoral_share5 = SectoralShare5.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sectoral_share5_params
      params.require(:sectoral_share5).permit(:Year, :Commercial_Banks, :RRBs, :Cooperative_and_LDBs, :Total, :Annual_Growth_Rate)
    end
end
