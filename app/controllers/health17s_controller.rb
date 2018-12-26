class Health17sController < ApplicationController
  before_action :set_health17, only: [:show, :edit, :update, :destroy]

  # GET /health17s
  def index
    @health17s = Health17.all
  end

  # GET /health17s/1
  def show
  end

  # GET /health17s/new
  def new
    @health17 = Health17.new
  end

def test
  ji = [:Regular_Post_sanctioned, :Contractual_Post_sanctioned, :Regular_Grade_A_Nurses_Employed, :Contractual_Grade_A_Nurses_Employed, :Number_of_Grade_A_Nurses_per_lakh_population]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
legend = "Districts"
remove = "Bihar"
#  ji1 = [:Characteristics, :India, :Bihar, :Year]
if year == "All"
 ji1 = [:Districts,:"2015",:"2016",:"2017"]
else
 if rain_fall_type != "All"
   ji1 = [:Districts, "#{rain_fall_type}", :Year]
   
 else
  ji1  = [:Districts, :Regular_Post_sanctioned, :Contractual_Post_sanctioned, :Regular_Grade_A_Nurses_Employed, :Contractual_Grade_A_Nurses_Employed, :Number_of_Grade_A_Nurses_per_lakh_population, :Year]
 end
 
end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Health17.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Health17.map(b,params[:year],rain_fall_type,views)
         else
          b = Health17.map_search(params[:search],compare,year,rain_fall_type)
          a = Health17.map(b,rain_fall_type,year,ji,unit1)
         end
      elsif views == "Table"  
        b = Health17.search(params[:search],compare,year,rain_fall_type,legend)
        a = Health17.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @Health17s = Health17.search(params[:search],compare,year,rain_fall_type,legend)
        a = Health17.query(@Health17s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    Health17.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /health17s/1/edit
  def edit
  end

  # POST /health17s
  def create
    @health17 = Health17.new(health17_params)

    if @health17.save
      redirect_to @health17, notice: 'Health17 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /health17s/1
  def update
    if @health17.update(health17_params)
      redirect_to @health17, notice: 'Health17 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /health17s/1
  def destroy
    @health17.destroy
    redirect_to health17s_url, notice: 'Health17 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health17
      @health17 = Health17.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def health17_params
      params.require(:health17).permit(:Districts, :Regular_Post_sanctioned, :Contractual_Post_sanctioned, :Regular_Grade_A_Nurses_Employed, :Contractual_Grade_A_Nurses_Employed, :Number_of_Grade_A_Nurses_per_lakh_population, :Year)
    end
end
