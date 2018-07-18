class Irrigation6sController < ApplicationController
  before_action :set_irrigation6, only: [:show, :edit, :update, :destroy]

  # GET /irrigation6s
  def index
    @irrigation6s = Irrigation6.all
  end

  # GET /irrigation6s/1
  def show
  end

  # GET /irrigation6s/new
  def new
    @irrigation6 = Irrigation6.new
  end

def test
  ji = [:Surface_Canal, :Tanks_including_Ahars_Pynes, :Tubewells_Private_and_State, :Other_Sources_Lift_Irrigation_and_Barge_Lift_Irrigation, :Total]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

   ji1 = [:Year,:Surface_Canal, :Tanks_including_Ahars_Pynes, :Tubewells_Private_and_State, :Other_Sources_Lift_Irrigation_and_Barge_Lift_Irrigation, :Total]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Irrigation6.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Irrigation6.map(b,params[:year],rain_fall_type,views)
         else
          b = Irrigation6.map_search(params[:search],compare,year,rain_fall_type)
          a = Irrigation6.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Irrigation6.search(params[:search],compare,year,rain_fall_type)
        a = Irrigation6.table(b,rain_fall_type,year,ji1,compare)
      else
        @Irrigation6s = Irrigation6.search(params[:search],compare,year,rain_fall_type)
        a = Irrigation6.query(@Irrigation6s,params[:year],rain_fall_type,views,ji,compare)
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
    Irrigation6.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /irrigation6s/1/edit
  def edit
  end

  # POST /irrigation6s
  def create
    @irrigation6 = Irrigation6.new(irrigation6_params)

    if @irrigation6.save
      redirect_to @irrigation6, notice: 'Irrigation6 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /irrigation6s/1
  def update
    if @irrigation6.update(irrigation6_params)
      redirect_to @irrigation6, notice: 'Irrigation6 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /irrigation6s/1
  def destroy
    @irrigation6.destroy
    redirect_to irrigation6s_url, notice: 'Irrigation6 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_irrigation6
      @irrigation6 = Irrigation6.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def irrigation6_params
      params.require(:irrigation6).permit(:Year, :Surface_Canal, :Tanks_including_Ahars_Pynes, :Tubewells_Private_and_State, :Other_Sources_Lift_Irrigation_and_Barge_Lift_Irrigation, :Total)
    end
end
