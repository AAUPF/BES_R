class Health16sController < ApplicationController
  before_action :set_health16, only: [:show, :edit, :update, :destroy]

  # GET /health16s
  def index
    @health16s = Health16.all
  end

  # GET /health16s/1
  def show
  end

  # GET /health16s/new
  def new
    @health16 = Health16.new
  end

def test
  unit1 = "000";
  ji = [:Regular_Post_sanctioned, :Contractual_Post_sanctioned, :Regular_Doctor_Employed, :Contractual_Doctor_Employed, :Year, :Number_of_doctors_per_lakh_population]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1 = [:Districts, :Regular_Post_sanctioned, :Contractual_Post_sanctioned, :Regular_Doctor_Employed, :Contractual_Doctor_Employed, :Year, :Number_of_doctors_per_lakh_population]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Health16.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Health16.map(b,params[:year],rain_fall_type,views)
         else
          b = Health16.map_search(params[:search],compare,year,rain_fall_type)
          a = Health16.map(b,rain_fall_type,year,ji,unit1)
         end
      elsif views == "Table"  
        b = Health16.search(params[:search],compare,year,rain_fall_type)
        a = Health16.table(b,rain_fall_type,year,ji1,compare)
      else
        @Health16s = Health16.search(params[:search],compare,year,rain_fall_type)
        a = Health16.query(@Health16s,params[:year],rain_fall_type,views,ji,compare)
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
    Health16.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /health16s/1/edit
  def edit
  end

  # POST /health16s
  def create
    @health16 = Health16.new(health16_params)

    if @health16.save
      redirect_to @health16, notice: 'Health16 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /health16s/1
  def update
    if @health16.update(health16_params)
      redirect_to @health16, notice: 'Health16 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /health16s/1
  def destroy
    @health16.destroy
    redirect_to health16s_url, notice: 'Health16 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health16
      @health16 = Health16.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def health16_params
      params.require(:health16).permit(:Districts, :Regular_Post_sanctioned, :Contractual_Post_sanctioned, :Regular_Doctor_Employed, :Contractual_Doctor_Employed, :Year, :Number_of_doctors_per_lakh_population)
    end
end
