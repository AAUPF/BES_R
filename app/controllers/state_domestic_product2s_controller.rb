class StateDomesticProduct2sController < ApplicationController
  before_action :set_state_domestic_product2, only: [:show, :edit, :update, :destroy]

  # GET /state_domestic_product2s
  def index
    @state_domestic_product2s = StateDomesticProduct2.all
  end

  # GET /state_domestic_product2s/1
  def show
  end

  # GET /state_domestic_product2s/new
  def new
    @state_domestic_product2 = StateDomesticProduct2.new
  end

def test
  ji = [:Per_Capita_Income]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1 = [:State, :Per_Capita_Income, :Year]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = StateDomesticProduct2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = StateDomesticProduct2.map(b,params[:year],rain_fall_type,views)
         else
          b = StateDomesticProduct2.map_search(params[:search],compare,year,rain_fall_type)
          a = StateDomesticProduct2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = StateDomesticProduct2.search(params[:search],compare,year,rain_fall_type)
        a = StateDomesticProduct2.table(b,rain_fall_type,year,ji1,compare)
      else
        @StateDomesticProduct2s = StateDomesticProduct2.search(params[:search],compare,year,rain_fall_type)
        a = StateDomesticProduct2.query(@StateDomesticProduct2s,params[:year],rain_fall_type,views,ji,compare)
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
    StateDomesticProduct2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /state_domestic_product2s/1/edit
  def edit
  end

  # POST /state_domestic_product2s
  def create
    @state_domestic_product2 = StateDomesticProduct2.new(state_domestic_product2_params)

    if @state_domestic_product2.save
      redirect_to @state_domestic_product2, notice: 'State domestic product2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /state_domestic_product2s/1
  def update
    if @state_domestic_product2.update(state_domestic_product2_params)
      redirect_to @state_domestic_product2, notice: 'State domestic product2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /state_domestic_product2s/1
  def destroy
    @state_domestic_product2.destroy
    redirect_to state_domestic_product2s_url, notice: 'State domestic product2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state_domestic_product2
      @state_domestic_product2 = StateDomesticProduct2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def state_domestic_product2_params
      params.require(:state_domestic_product2).permit(:State, :Per_Capita_Income, :Year)
    end
end
