class Roads3sController < ApplicationController
  before_action :set_roads3, only: [:show, :edit, :update, :destroy]

  # GET /roads3s
  def index
    @roads3s = Roads3.all
  end

  # GET /roads3s/1
  def show
  end

  # GET /roads3s/new
  def new
    @roads3 = Roads3.new
  end

def test
  ji = [:NH, :SH, :Other, :Total]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
  search = params[:search]
   ji1 = [:State, :NH, :SH, :Other, :Total, :Indicator]


  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Roads3.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Roads3.map(b,params[:year],rain_fall_type,views)
         else
          b = Roads3.map_search(params[:search],compare,year,rain_fall_type)
          a = Roads3.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Roads3.search(params[:search],compare,year,rain_fall_type)
        a = Roads3.table(b,rain_fall_type,year,ji1,compare)
      else
        @Roads3s = Roads3.search(params[:search],compare,year,rain_fall_type)
        a = Roads3.query(@Roads3s,params[:year],rain_fall_type,views,ji,compare,search)
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
    Roads3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /roads3s/1/edit
  def edit
  end

  # POST /roads3s
  def create
    @roads3 = Roads3.new(roads3_params)

    if @roads3.save
      redirect_to @roads3, notice: 'Roads3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /roads3s/1
  def update
    if @roads3.update(roads3_params)
      redirect_to @roads3, notice: 'Roads3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /roads3s/1
  def destroy
    @roads3.destroy
    redirect_to roads3s_url, notice: 'Roads3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roads3
      @roads3 = Roads3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def roads3_params
      params.require(:roads3).permit(:State, :NH, :SH, :Other, :Total, :Indicator)
    end
end
