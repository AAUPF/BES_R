class Health2sController < ApplicationController
  before_action :set_health2, only: [:show, :edit, :update, :destroy]

  # GET /health2s
  def index
    @health2s = Health2.all
  end

  # GET /health2s/1
  def show
  end

  # GET /health2s/new
  def new
    @health2 = Health2.new
  end

def test
  ji = [:Male, :Female]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
search = params[:search]
   legend = "Region"
   remove = ""
  #  ji1 = [:Characteristics, :India, :Bihar, :Year]
   if year == "All"
    ji1 = [:Region,:"2001-05",:"2011-15"]
   else
    if rain_fall_type != "All"
      ji1 = [:Region, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:Region, :Male, :Female, :Total, :Year]
    end
    
   end
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Health2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Health2.map(b,params[:year],rain_fall_type,views)
         else
          b = Health2.map_search(params[:search],compare,year,rain_fall_type)
          a = Health2.map(b,rain_fall_type,year,ji,unit1)
         end
      elsif views == "Table"  
        b = Health2.search(params[:search],compare,year,rain_fall_type,legend)
        a = Health2.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @Health2s = Health2.search(params[:search],compare,year,rain_fall_type,legend)
        a = Health2.query(@Health2s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    Health2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /health2s/1/edit
  def edit
  end

  # POST /health2s
  def create
    @health2 = Health2.new(health2_params)

    if @health2.save
      redirect_to @health2, notice: 'Health2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /health2s/1
  def update
    if @health2.update(health2_params)
      redirect_to @health2, notice: 'Health2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /health2s/1
  def destroy
    @health2.destroy
    redirect_to health2s_url, notice: 'Health2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health2
      @health2 = Health2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def health2_params
      params.require(:health2).permit(:Region, :Male, :Female, :Total, :Year)
    end
end
