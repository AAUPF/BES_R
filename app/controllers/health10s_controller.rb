class Health10sController < ApplicationController
  before_action :set_health10, only: [:show, :edit, :update, :destroy]

  # GET /health10s
  def index
    @health10s = Health10.all
  end

  # GET /health10s/1
  def show
  end

  # GET /health10s/new
  def new
    @health10 = Health10.new
  end

def test
  ji = [:Target, :Achievement]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Antigenname"
   remove = ""
  
   if year == "All"
    ji1 = [:Antigenname,:"2015",:"2016",:"2017"]
   else
    if rain_fall_type != "All"
      ji1 = [:Antigenname, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:Antigenname, :Target, :Achievement, :Year]
    end
    
   end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")
         if rain_fall_type  ==  "All"
          b = Health10.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Health10.map(b,params[:year],rain_fall_type,views)
         else
          b = Health10.map_search(params[:search],compare,year,rain_fall_type)
          a = Health10.map(b,rain_fall_type,year,ji,unit1)
         end
      elsif views == "Table"  
        b = Health10.search(params[:search],compare,year,rain_fall_type,legend)
        a = Health10.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @Health10s = Health10.search(params[:search],compare,year,rain_fall_type,legend)
        a = Health10.query(@Health10s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    Health10.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /health10s/1/edit
  def edit
  end

  # POST /health10s
  def create
    @health10 = Health10.new(health10_params)

    if @health10.save
      redirect_to @health10, notice: 'Health10 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /health10s/1
  def update
    if @health10.update(health10_params)
      redirect_to @health10, notice: 'Health10 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /health10s/1
  def destroy
    @health10.destroy
    redirect_to health10s_url, notice: 'Health10 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health10
      @health10 = Health10.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def health10_params
      params.require(:health10).permit(:Antigenname, :Target, :Achievement, :Year)
    end
end
