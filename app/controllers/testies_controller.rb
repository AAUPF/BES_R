class TestiesController < ApplicationController
  before_action :set_testy, only: [:show, :edit, :update, :destroy]

  # GET /testies
  def index
    @testies = Testy.all
  end

  # GET /testies/1
  def show
  end

  # GET /testies/new
  def new
    @testy = Testy.new
  end

def test
  ji = [:name, :number]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Testy.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Testy.map(b,params[:year],rain_fall_type,views)
         else
          b = Testy.map_search(params[:search],compare,year,rain_fall_type)
          a = Testy.map(b,rain_fall_type,year,ji,unit1)
         end
      elsif views == "Table"  
        b = Testy.search(params[:search],compare,year,rain_fall_type)
        a = Testy.table(b,rain_fall_type,year,ji1,compare)
      else
        @Testys = Testy.search(params[:search],compare,year,rain_fall_type)
        a = Testy.query(@Testys,params[:year],rain_fall_type,views,ji,compare)
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
    Testy.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /testies/1/edit
  def edit
  end

  # POST /testies
  def create
    @testy = Testy.new(testy_params)

    if @testy.save
      redirect_to @testy, notice: 'Testy was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /testies/1
  def update
    if @testy.update(testy_params)
      redirect_to @testy, notice: 'Testy was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /testies/1
  def destroy
    @testy.destroy
    redirect_to testies_url, notice: 'Testy was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testy
      @testy = Testy.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def testy_params
      params.require(:testy).permit(:name, :number)
    end
end
