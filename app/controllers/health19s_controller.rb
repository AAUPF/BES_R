class Health19sController < ApplicationController
  before_action :set_health19, only: [:show, :edit, :update, :destroy]

  # GET /health19s
  def index
    @health19s = Health19.all
  end

  # GET /health19s/1
  def show
  end

  # GET /health19s/new
  def new
    @health19 = Health19.new
  end

def test
  ji = [:Target, :Selection]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

search = params[:search]
legend = "Districts"
remove = "Bihar"
if year == "All"
 ji1 = [:Districts,:"2013",:"2014",:"2015",:"2016"]
else
 if rain_fall_type != "All"
   ji1 = [:Districts, "#{rain_fall_type}", :Year]
 else
  ji1 = [:Districts, :Target, :Selection, :Year]
end
 
end
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Health19.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Health19.map(b,params[:year],rain_fall_type,views)
         else
          b = Health19.map_search(params[:search],compare,year,rain_fall_type)
          a = Health19.map(b,rain_fall_type,year,ji,unit1)
         end
      elsif views == "Table"  
        b = Health19.search(params[:search],compare,year,rain_fall_type,legend)
        a = Health19.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @Health19s = Health19.search(params[:search],compare,year,rain_fall_type,legend)
        a = Health19.query(@Health19s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    Health19.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /health19s/1/edit
  def edit
  end

  # POST /health19s
  def create
    @health19 = Health19.new(health19_params)

    if @health19.save
      redirect_to @health19, notice: 'Health19 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /health19s/1
  def update
    if @health19.update(health19_params)
      redirect_to @health19, notice: 'Health19 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /health19s/1
  def destroy
    @health19.destroy
    redirect_to health19s_url, notice: 'Health19 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health19
      @health19 = Health19.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def health19_params
      params.require(:health19).permit(:Districts, :Target, :Selection, :Year)
    end
end
