class Rainfall1sController < ApplicationController
  before_action :set_rainfall1, only: [:show, :edit, :update, :destroy]

  # GET /rainfall1s
  def index
    @rainfall1s = Rainfall1.all
  end

  # GET /rainfall1s/1
  def show
  end

  # GET /rainfall1s/new
  def new
    @rainfall1 = Rainfall1.new
  end

def test 
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]


    # abort(compare)
   if compare == "Total"
     ji = [:Winter_Rain, :Hot_Weather_Rain, :Southwest_Monsoon, :Northwest_Monsoon, :Total]
   else
     ji = [:Winter_Rain, :Hot_Weather_Rain, :Southwest_Monsoon, :Northwest_Monsoon]
   end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Rainfall1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Rainfall1.map(b,params[:year],rain_fall_type,views)
         else
          b = Rainfall1.map_search(params[:search],compare,year,rain_fall_type)
          a = Rainfall1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Rainfall1.search(params[:search],compare,year)
        a = Rainfall1.table(b,rain_fall_type,year)
      else
        @Rainfall1s = Rainfall1.search(params[:search],compare,year,rain_fall_type)
        a = Rainfall1.query(@Rainfall1s,params[:year],rain_fall_type,views,ji,compare)
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
    Rainfall1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /rainfall1s/1/edit
  def edit
  end

  # POST /rainfall1s
  def create
    @rainfall1 = Rainfall1.new(rainfall1_params)

    if @rainfall1.save
      redirect_to @rainfall1, notice: 'Rainfall1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /rainfall1s/1
  def update
    if @rainfall1.update(rainfall1_params)
      redirect_to @rainfall1, notice: 'Rainfall1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /rainfall1s/1
  def destroy
    @rainfall1.destroy
    redirect_to rainfall1s_url, notice: 'Rainfall1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rainfall1
      @rainfall1 = Rainfall1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rainfall1_params
      params.require(:rainfall1).permit(:Winter_Rain, :Hot_Weather_Rain, :Southwest_Monsoon, :Northwest_Monsoon, :Total, :Year)
    end
end
