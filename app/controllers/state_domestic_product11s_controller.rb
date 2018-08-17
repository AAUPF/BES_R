class StateDomesticProduct11sController < ApplicationController
  before_action :set_state_domestic_product11, only: [:show, :edit, :update, :destroy]

  # GET /state_domestic_product11s
  def index
    @state_domestic_product11s = StateDomesticProduct11.all
  end

  # GET /state_domestic_product11s/1
  def show
  end

  # GET /state_domestic_product11s/new
  def new
    @state_domestic_product11 = StateDomesticProduct11.new
  end

def test
  ji = [:Target, :Achievement]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1 = [:Districts, :Target, :Achievement, :Year]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = StateDomesticProduct11.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = StateDomesticProduct11.map(b,params[:year],rain_fall_type,views)
         else
          b = StateDomesticProduct11.map_search(params[:search],compare,year,rain_fall_type)
          a = StateDomesticProduct11.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = StateDomesticProduct11.search(params[:search],compare,year,rain_fall_type)
        a = StateDomesticProduct11.table(b,rain_fall_type,year,ji1,compare)
      else
        @StateDomesticProduct11s = StateDomesticProduct11.search(params[:search],compare,year,rain_fall_type)
        a = StateDomesticProduct11.query(@StateDomesticProduct11s,params[:year],rain_fall_type,views,ji,compare)
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
    StateDomesticProduct11.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /state_domestic_product11s/1/edit
  def edit
  end

  # POST /state_domestic_product11s
  def create
    @state_domestic_product11 = StateDomesticProduct11.new(state_domestic_product11_params)

    if @state_domestic_product11.save
      redirect_to @state_domestic_product11, notice: 'State domestic product11 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /state_domestic_product11s/1
  def update
    if @state_domestic_product11.update(state_domestic_product11_params)
      redirect_to @state_domestic_product11, notice: 'State domestic product11 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /state_domestic_product11s/1
  def destroy
    @state_domestic_product11.destroy
    redirect_to state_domestic_product11s_url, notice: 'State domestic product11 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state_domestic_product11
      @state_domestic_product11 = StateDomesticProduct11.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def state_domestic_product11_params
      params.require(:state_domestic_product11).permit(:Districts, :Target, :Achievement, :Year)
    end
end
