class Tourism2sController < ApplicationController
  before_action :set_tourism2, only: [:show, :edit, :update, :destroy]

  # GET /tourism2s
  def index
    @tourism2s = Tourism2.all
  end

  # GET /tourism2s/1
  def show
  end

  # GET /tourism2s/new
  def new
    @tourism2 = Tourism2.new
  end

def test
  ji = [:Domestic_tourists, :Foreign_tourists, :Total_tourists]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1 = [:Year, :Domestic_tourists, :Foreign_tourists, :Total_tourists]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Tourism2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Tourism2.map(b,params[:year],rain_fall_type,views)
         else
          b = Tourism2.map_search(params[:search],compare,year,rain_fall_type)
          a = Tourism2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Tourism2.search(params[:search],compare,year,rain_fall_type)
        a = Tourism2.table(b,rain_fall_type,year,ji1,compare)
      else
        @Tourism2s = Tourism2.search(params[:search],compare,year,rain_fall_type)
        a = Tourism2.query(@Tourism2s,params[:year],rain_fall_type,views,ji,compare)
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
    Tourism2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /tourism2s/1/edit
  def edit
  end

  # POST /tourism2s
  def create
    @tourism2 = Tourism2.new(tourism2_params)

    if @tourism2.save
      redirect_to @tourism2, notice: 'Tourism2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tourism2s/1
  def update
    if @tourism2.update(tourism2_params)
      redirect_to @tourism2, notice: 'Tourism2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tourism2s/1
  def destroy
    @tourism2.destroy
    redirect_to tourism2s_url, notice: 'Tourism2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tourism2
      @tourism2 = Tourism2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tourism2_params
      params.require(:tourism2).permit(:Year, :Domestic_tourists, :Foreign_tourists, :Total_tourists)
    end
end
