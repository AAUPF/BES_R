class Roads5sController < ApplicationController
  before_action :set_roads5, only: [:show, :edit, :update, :destroy]

  # GET /roads5s
  def index
    @roads5s = Roads5.all
  end

  # GET /roads5s/1
  def show
  end

  # GET /roads5s/new
  def new
    @roads5 = Roads5.new
  end

def test
  ji = [:Length, :Percentage]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]

   data = []
   ji1 = [:Indicator, :Length, :Percentage, :Sector]

   jip = [:Length, :Percentage]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Roads5.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Roads5.map(b,params[:year],rain_fall_type,views)
         else
          b = Roads5.map_search(params[:search],compare,year,rain_fall_type)
          a = Roads5.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Roads5.search(params[:search],compare,year,rain_fall_type)
        a = Roads5.table(b,rain_fall_type,year,ji1,compare, search, data)
      else
        @Roads5s = Roads5.search(params[:search],compare,year,rain_fall_type)
        a = Roads5.query(@Roads5s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    Roads5.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /roads5s/1/edit
  def edit
  end

  # POST /roads5s
  def create
    @roads5 = Roads5.new(roads5_params)

    if @roads5.save
      redirect_to @roads5, notice: 'Roads5 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /roads5s/1
  def update
    if @roads5.update(roads5_params)
      redirect_to @roads5, notice: 'Roads5 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /roads5s/1
  def destroy
    @roads5.destroy
    redirect_to roads5s_url, notice: 'Roads5 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roads5
      @roads5 = Roads5.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def roads5_params
      params.require(:roads5).permit(:Category_of_Road, :Length, :Percentage, :Indicator)
    end
end
