class Health20sController < ApplicationController
  before_action :set_health20, only: [:show, :edit, :update, :destroy]

  # GET /health20s
  def index
    @health20s = Health20.all
  end

  # GET /health20s/1
  def show
  end

  # GET /health20s/new
  def new
    @health20 = Health20.new
  end

def test

  unit1 = "'000"
  ji = [:Institutional_Deliveries]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

search = params[:search]
legend = "Districts"
remove = "Bihar"
if year == "All"
 ji1 = [:Districts,:"2013",:"2014",:"2015",:"2016",:"2017"]
else
 if rain_fall_type != "All"
   ji1 = [:Districts, "#{rain_fall_type}", :Year]
 else
  ji1 = [:Districts, :Institutional_Deliveries, :Year]
end
 
end
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Health20.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Health20.map(b,params[:year],rain_fall_type,views)
         else
          b = Health20.map_search(params[:search],compare,year,rain_fall_type)
          a = Health20.map(b,rain_fall_type,year,ji,unit1)
         end
      elsif views == "Table"  
        b = Health20.search(params[:search],compare,year,rain_fall_type,legend)
        a = Health20.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @Health20s = Health20.search(params[:search],compare,year,rain_fall_type,legend)
        a = Health20.query(@Health20s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    Health20.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /health20s/1/edit
  def edit
  end

  # POST /health20s
  def create
    @health20 = Health20.new(health20_params)

    if @health20.save
      redirect_to @health20, notice: 'Health20 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /health20s/1
  def update
    if @health20.update(health20_params)
      redirect_to @health20, notice: 'Health20 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /health20s/1
  def destroy
    @health20.destroy
    redirect_to health20s_url, notice: 'Health20 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health20
      @health20 = Health20.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def health20_params
      params.require(:health20).permit(:Districts, :Institutional_Deliveries, :Year)
    end
end
