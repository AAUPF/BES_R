class Health8sController < ApplicationController
  before_action :set_health8, only: [:show, :edit, :update, :destroy]

  # GET /health8s
  def index
    @health8s = Health8.all
  end

  # GET /health8s/1
  def show
  end

  # GET /health8s/new
  def new
    @health8 = Health8.new
  end

def test
  ji = [:Institutional_Delivery]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1 = [:Year, :Institutional_Delivery]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Health8.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Health8.map(b,params[:year],rain_fall_type,views)
         else
          b = Health8.map_search(params[:search],compare,year,rain_fall_type)
          a = Health8.map(b,rain_fall_type,year,ji,unit1)
         end
      elsif views == "Table"  
        b = Health8.search(params[:search],compare,year,rain_fall_type)
        a = Health8.table(b,rain_fall_type,year,ji1,compare)
      else
        @Health8s = Health8.search(params[:search],compare,year,rain_fall_type)
        a = Health8.query(@Health8s,params[:year],rain_fall_type,views,ji,compare)
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
    Health8.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /health8s/1/edit
  def edit
  end

  # POST /health8s
  def create
    @health8 = Health8.new(health8_params)

    if @health8.save
      redirect_to @health8, notice: 'Health8 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /health8s/1
  def update
    if @health8.update(health8_params)
      redirect_to @health8, notice: 'Health8 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /health8s/1
  def destroy
    @health8.destroy
    redirect_to health8s_url, notice: 'Health8 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health8
      @health8 = Health8.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def health8_params
      params.require(:health8).permit(:Year, :Institutional_Delivery)
    end
end
