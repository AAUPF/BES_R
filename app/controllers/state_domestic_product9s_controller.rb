class StateDomesticProduct9sController < ApplicationController
  before_action :set_state_domestic_product9, only: [:show, :edit, :update, :destroy]

  # GET /state_domestic_product9s
  def index
    @state_domestic_product9s = StateDomesticProduct9.all
  end

  # GET /state_domestic_product9s/1
  def show
  end

  # GET /state_domestic_product9s/new
  def new
    @state_domestic_product9 = StateDomesticProduct9.new
  end

def test
  ji = [:Per_Capita_GDP]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
# ji1 = [:Districts, :Per_Capita_GDP, :Year]
if year == "All"
  ji1 = [:Districts, :"2007", :"2008", :"2009", :"2010", :"2011"]
else
  ji1 = [:Districts, :Per_Capita_GDP, :Year]
end
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = StateDomesticProduct9.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = StateDomesticProduct9.map_ranges_manually(b,params[:year],rain_fall_type,views)
         else
          b = StateDomesticProduct9.map_search(params[:search],compare,year,rain_fall_type)
          a = StateDomesticProduct9.map_ranges_manually(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = StateDomesticProduct9.search(params[:search],compare,year,rain_fall_type)
        a = StateDomesticProduct9.table(b,rain_fall_type,year,ji1,compare)
      else
        @StateDomesticProduct9s = StateDomesticProduct9.search(params[:search],compare,year,rain_fall_type)
        a = StateDomesticProduct9.query(@StateDomesticProduct9s,params[:year],rain_fall_type,views,ji,compare,search)
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
    StateDomesticProduct9.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /state_domestic_product9s/1/edit
  def edit
  end

  # POST /state_domestic_product9s
  def create
    @state_domestic_product9 = StateDomesticProduct9.new(state_domestic_product9_params)

    if @state_domestic_product9.save
      redirect_to @state_domestic_product9, notice: 'State domestic product9 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /state_domestic_product9s/1
  def update
    if @state_domestic_product9.update(state_domestic_product9_params)
      redirect_to @state_domestic_product9, notice: 'State domestic product9 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /state_domestic_product9s/1
  def destroy
    @state_domestic_product9.destroy
    redirect_to state_domestic_product9s_url, notice: 'State domestic product9 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state_domestic_product9
      @state_domestic_product9 = StateDomesticProduct9.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def state_domestic_product9_params
      params.require(:state_domestic_product9).permit(:Districts, :Per_Capita_GDP, :Year)
    end
end
