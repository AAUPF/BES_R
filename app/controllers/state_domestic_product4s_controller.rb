class StateDomesticProduct4sController < ApplicationController
  before_action :set_state_domestic_product4, only: [:show, :edit, :update, :destroy]

  # GET /state_domestic_product4s
  def index
    @state_domestic_product4s = StateDomesticProduct4.all
  end

  # GET /state_domestic_product4s/1
  def show
  end

  # GET /state_domestic_product4s/new
  def new
    @state_domestic_product4 = StateDomesticProduct4.new
  end

def test
  ji = [:GSDP, :NSDP, :Per_Capita_GSDP]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]

   ji1 = [:Reference,:GSDP, :NSDP, :Per_Capita_GSDP, :Year]


  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = StateDomesticProduct4.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = StateDomesticProduct4.map(b,params[:year],rain_fall_type,views)
         else
          b = StateDomesticProduct4.map_search(params[:search],compare,year,rain_fall_type)
          a = StateDomesticProduct4.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = StateDomesticProduct4.search(params[:search],compare,year,rain_fall_type)
        a = StateDomesticProduct4.table(b,rain_fall_type,year,ji1,compare,search)
      else
        @StateDomesticProduct4s = StateDomesticProduct4.search(params[:search],compare,year,rain_fall_type)
        a = StateDomesticProduct4.query(@StateDomesticProduct4s,params[:year],rain_fall_type,views,ji,compare,search)
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
    StateDomesticProduct4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /state_domestic_product4s/1/edit
  def edit
  end

  # POST /state_domestic_product4s
  def create
    @state_domestic_product4 = StateDomesticProduct4.new(state_domestic_product4_params)

    if @state_domestic_product4.save
      redirect_to @state_domestic_product4, notice: 'State domestic product4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /state_domestic_product4s/1
  def update
    if @state_domestic_product4.update(state_domestic_product4_params)
      redirect_to @state_domestic_product4, notice: 'State domestic product4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /state_domestic_product4s/1
  def destroy
    @state_domestic_product4.destroy
    redirect_to state_domestic_product4s_url, notice: 'State domestic product4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state_domestic_product4
      @state_domestic_product4 = StateDomesticProduct4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def state_domestic_product4_params
      params.require(:state_domestic_product4).permit(:Year, :GSDP, :NSDP, :Per_Capita_GSDP, :Reference, :Factor_Cost)
    end
end
