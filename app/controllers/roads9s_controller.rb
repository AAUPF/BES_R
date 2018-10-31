class Roads9sController < ApplicationController
  before_action :set_roads9, only: [:show, :edit, :update, :destroy]

  # GET /roads9s
  def index
    @roads9s = Roads9.all
  end

  # GET /roads9s/1
  def show
  end

  # GET /roads9s/new
  def new
    @roads9 = Roads9.new
  end

def test
  ji = [:Road_Constructed, :Bridge_Constructed, :Expenditure]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   ji1 = [:Name_of_the_Scheme, :Road_Constructed, :Bridge_Constructed, :Expenditure]
   legend = "Name_of_the_Scheme"

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Roads9.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Roads9.map(b,params[:year],rain_fall_type,views)
         else
          b = Roads9.map_search(params[:search],compare,year,rain_fall_type)
          a = Roads9.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Roads9.search(params[:search],compare,year,rain_fall_type,legend)
        a = Roads9.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @Roads9s = Roads9.search(params[:search],compare,year,rain_fall_type,legend)
        a = Roads9.query(@Roads9s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    Roads9.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /roads9s/1/edit
  def edit
  end

  # POST /roads9s
  def create
    @roads9 = Roads9.new(roads9_params)

    if @roads9.save
      redirect_to @roads9, notice: 'Roads9 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /roads9s/1
  def update
    if @roads9.update(roads9_params)
      redirect_to @roads9, notice: 'Roads9 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /roads9s/1
  def destroy
    @roads9.destroy
    redirect_to roads9s_url, notice: 'Roads9 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roads9
      @roads9 = Roads9.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def roads9_params
      params.require(:roads9).permit(:Name_of_the_Scheme, :Road_Constructed, :Bridge_Constructed, :Expenditure)
    end
end
