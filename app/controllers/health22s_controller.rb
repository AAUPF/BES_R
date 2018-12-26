class Health22sController < ApplicationController
  before_action :set_health22, only: [:show, :edit, :update, :destroy]

  # GET /health22s
  def index
    @health22s = Health22.all
  end

  # GET /health22s/1
  def show
  end

  # GET /health22s/new
  def new
    @health22 = Health22.new
  end

def test
  unit1 = "Lakh"

  ji = [:NRHM_Total]
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
  ji1 = [:Districts, :NRHM_Total, :Year]
end
 
end
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Health22.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Health22.map(b,params[:year],rain_fall_type,views)
         else
          b = Health22.map_search(params[:search],compare,year,rain_fall_type)
          a = Health22.map(b,rain_fall_type,year,ji,unit1)
         end
      elsif views == "Table"  
        b = Health22.search(params[:search],compare,year,rain_fall_type,legend)
        a = Health22.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @Health22s = Health22.search(params[:search],compare,year,rain_fall_type,legend)
        a = Health22.query(@Health22s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    Health22.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /health22s/1/edit
  def edit
  end

  # POST /health22s
  def create
    @health22 = Health22.new(health22_params)

    if @health22.save
      redirect_to @health22, notice: 'Health22 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /health22s/1
  def update
    if @health22.update(health22_params)
      redirect_to @health22, notice: 'Health22 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /health22s/1
  def destroy
    @health22.destroy
    redirect_to health22s_url, notice: 'Health22 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health22
      @health22 = Health22.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def health22_params
      params.require(:health22).permit(:Districts, :NRHM_Total, :Year)
    end
end
