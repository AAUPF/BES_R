class Health18sController < ApplicationController
  before_action :set_health18, only: [:show, :edit, :update, :destroy]

  # GET /health18s
  def index
    @health18s = Health18.all
  end

  # GET /health18s/1
  def show
  end

  # GET /health18s/new
  def new
    @health18 = Health18.new
  end

def test
  ji = [:Regular_Post_sanctioned, :Contractual_Post_sanctioned, :Regular_ANM_Employed, :Contractual_ANM_Employed, :Number_of_ANM_per_lakh_population]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
search = params[:search]
legend = "Districts"
remove = "Bihar"
if year == "All"
 ji1 = [:Districts,:"2015",:"2016",:"2017"]
else
 if rain_fall_type != "All"
   ji1 = [:Districts, "#{rain_fall_type}", :Year]
 else
  ji1 = [:Districts, :Regular_Post_sanctioned, :Contractual_Post_sanctioned, :Regular_ANM_Employed, :Contractual_ANM_Employed, :Number_of_ANM_per_lakh_population, :Year]
end
 
end
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Health18.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Health18.map(b,params[:year],rain_fall_type,views)
         else
          b = Health18.map_search(params[:search],compare,year,rain_fall_type)
          a = Health18.map(b,rain_fall_type,year,ji,unit1)
         end
      elsif views == "Table"  
        b = Health18.search(params[:search],compare,year,rain_fall_type,legend)
        a = Health18.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @Health18s = Health18.search(params[:search],compare,year,rain_fall_type,legend)
        a = Health18.query(@Health18s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    Health18.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /health18s/1/edit
  def edit
  end

  # POST /health18s
  def create
    @health18 = Health18.new(health18_params)

    if @health18.save
      redirect_to @health18, notice: 'Health18 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /health18s/1
  def update
    if @health18.update(health18_params)
      redirect_to @health18, notice: 'Health18 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /health18s/1
  def destroy
    @health18.destroy
    redirect_to health18s_url, notice: 'Health18 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health18
      @health18 = Health18.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def health18_params
      params.require(:health18).permit(:Districts, :Regular_Post_sanctioned, :Contractual_Post_sanctioned, :Regular_ANM_Employed, :Contractual_ANM_Employed, :Number_of_ANM_per_lakh_population, :Year)
    end
end
