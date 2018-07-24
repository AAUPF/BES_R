class NewricesController < ApplicationController
  before_action :set_newrice, only: [:show, :edit, :update, :destroy]

  # GET /newrices
  def index
    @newrices = Newrice.all
  end

  # GET /newrices/1
  def show
  end

  # GET /newrices/new
  def new
    @newrice = Newrice.new
  end

def test
  ji = [:Area, :Production, :Productivity]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

   ji1 = [:Area, :Production, :Productivity, :Year]


  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Newrice.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Newrice.map(b,params[:year],rain_fall_type,views)
         else
          b = Newrice.map_search(params[:search],compare,year,rain_fall_type)
          a = Newrice.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Newrice.search(params[:search],compare,year,rain_fall_type)
        a = Newrice.table(b,rain_fall_type,year,ji1,compare)
      else
        @Newrices = Newrice.search(params[:search],compare,year,rain_fall_type)
        a = Newrice.query(@Newrices,params[:year],rain_fall_type,views,ji,compare)
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
    Newrice.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /newrices/1/edit
  def edit
  end

  # POST /newrices
  def create
    @newrice = Newrice.new(newrice_params)

    if @newrice.save
      redirect_to @newrice, notice: 'Newrice was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /newrices/1
  def update
    if @newrice.update(newrice_params)
      redirect_to @newrice, notice: 'Newrice was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /newrices/1
  def destroy
    @newrice.destroy
    redirect_to newrices_url, notice: 'Newrice was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newrice
      @newrice = Newrice.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def newrice_params
      params.require(:newrice).permit(:Districts, :Area, :Production, :Productivity, :Year, :Area_Colour, :Production_Colour, :Productivity_Colour)
    end
end
