class Health12sController < ApplicationController
  before_action :set_health12, only: [:show, :edit, :update, :destroy]

  # GET /health12s
  def index
    @health12s = Health12.all
  end

  # GET /health12s/1
  def show
  end

  # GET /health12s/new
  def new
    @health12 = Health12.new
  end

def test
  ji = [:NRHM, :Fund_Disbursed]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1 = [:NRHM, :Fund_Disbursed, :Year]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Health12.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Health12.map(b,params[:year],rain_fall_type,views)
         else
          b = Health12.map_search(params[:search],compare,year,rain_fall_type)
          a = Health12.map(b,rain_fall_type,year,ji,unit1)
         end
      elsif views == "Table"  
        b = Health12.search(params[:search],compare,year,rain_fall_type)
        a = Health12.table(b,rain_fall_type,year,ji1,compare)
      else
        @Health12s = Health12.search(params[:search],compare,year,rain_fall_type)
        a = Health12.query(@Health12s,params[:year],rain_fall_type,views,ji,compare)
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
    Health12.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /health12s/1/edit
  def edit
  end

  # POST /health12s
  def create
    @health12 = Health12.new(health12_params)

    if @health12.save
      redirect_to @health12, notice: 'Health12 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /health12s/1
  def update
    if @health12.update(health12_params)
      redirect_to @health12, notice: 'Health12 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /health12s/1
  def destroy
    @health12.destroy
    redirect_to health12s_url, notice: 'Health12 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health12
      @health12 = Health12.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def health12_params
      params.require(:health12).permit(:NRHM, :Fund_Disbursed, :Year)
    end
end
