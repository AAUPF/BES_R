class Irrigation2sController < ApplicationController
  before_action :set_irrigation2, only: [:show, :edit, :update, :destroy]

  # GET /irrigation2s
  def index
    @irrigation2s = Irrigation2.all
  end

  # GET /irrigation2s/1
  def show
  end

  # GET /irrigation2s/new
  def new
    @irrigation2 = Irrigation2.new
  end

def test
  ji = [:Name_of_Scheme, :Created_Irrigation_Potential]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Irrigation2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Irrigation2.map(b,params[:year],rain_fall_type,views)
         else
          b = Irrigation2.map_search(params[:search],compare,year,rain_fall_type)
          a = Irrigation2.map(b,rain_fall_type,year,ji,unit1)
         end
      elsif views == "Table"  
        b = Irrigation2.search(params[:search],compare,year,rain_fall_type)
        a = Irrigation2.table(b,rain_fall_type,year,ji1,compare)
      else
        @Irrigation2s = Irrigation2.search(params[:search],compare,year,rain_fall_type)
        a = Irrigation2.query(@Irrigation2s,params[:year],rain_fall_type,views,ji,compare)
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
    Irrigation2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /irrigation2s/1/edit
  def edit
  end

  # POST /irrigation2s
  def create
    @irrigation2 = Irrigation2.new(irrigation2_params)

    if @irrigation2.save
      redirect_to @irrigation2, notice: 'Irrigation2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /irrigation2s/1
  def update
    if @irrigation2.update(irrigation2_params)
      redirect_to @irrigation2, notice: 'Irrigation2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /irrigation2s/1
  def destroy
    @irrigation2.destroy
    redirect_to irrigation2s_url, notice: 'Irrigation2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_irrigation2
      @irrigation2 = Irrigation2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def irrigation2_params
      params.require(:irrigation2).permit(:Name_of_Scheme, :Created_Irrigation_Potential)
    end
end
