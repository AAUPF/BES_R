class Poverty2sController < ApplicationController
  before_action :set_poverty2, only: [:show, :edit, :update, :destroy]

  # GET /poverty2s
  def index
    @poverty2s = Poverty2.all
  end

  # GET /poverty2s/1
  def show
  end

  # GET /poverty2s/new
  def new
    @poverty2 = Poverty2.new
  end

def test
  ji = [:Rural_poverty, :Urban_poverty, :Total_poverty]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Population_below_poverty_line_in_Percentages"

if rain_fall_type != "All"
  ji1 = [:Population_below_poverty_line_in_Percentages, "#{rain_fall_type}"]
else
  ji1 = [:Population_below_poverty_line_in_Percentages, :Rural_poverty, :Urban_poverty, :Total_poverty]
end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Poverty2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Poverty2.map(b,params[:year],rain_fall_type,views)
         else
          b = Poverty2.map_search(params[:search],compare,year,rain_fall_type)
          a = Poverty2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Poverty2.search(params[:search],compare,year,rain_fall_type,legend)
        a = Poverty2.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @Poverty2s = Poverty2.search(params[:search],compare,year,rain_fall_type)
        a = Poverty2.query(@Poverty2s,params[:year],rain_fall_type,views,ji,compare)
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
    Poverty2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /poverty2s/1/edit
  def edit
  end

  # POST /poverty2s
  def create
    @poverty2 = Poverty2.new(poverty2_params)

    if @poverty2.save
      redirect_to @poverty2, notice: 'Poverty2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /poverty2s/1
  def update
    if @poverty2.update(poverty2_params)
      redirect_to @poverty2, notice: 'Poverty2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /poverty2s/1
  def destroy
    @poverty2.destroy
    redirect_to poverty2s_url, notice: 'Poverty2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poverty2
      @poverty2 = Poverty2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def poverty2_params
      params.require(:poverty2).permit(:Population_below_poverty_line_in_Percentages, :Rural_poverty, :Urban_poverty, :Total_poverty)
    end
end
