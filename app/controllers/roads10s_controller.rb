class Roads10sController < ApplicationController
  before_action :set_roads10, only: [:show, :edit, :update, :destroy]

  # GET /roads10s
  def index
    @roads10s = Roads10.all
  end

  # GET /roads10s/1
  def show
  end

  # GET /roads10s/new
  def new
    @roads10 = Roads10.new
  end

def test
  ji = [:NH, :SH, :MDR, :Rural_Road]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Districts"
   remove = "Total"
  #  ji1 = [:Characteristics, :India, :Bihar, :Year]
   if year == "All"
    ji1 = [:Districts,:"2010",:"2017 upto Sept"]
   else
    if rain_fall_type != "All"
      ji1 = [:Districts, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:Districts, :NH, :SH, :MDR, :Rural_Road, :Year]
    end
    
   end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Roads10.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Roads10.map(b,params[:year],rain_fall_type,views)
         else
          b = Roads10.map_search(params[:search],compare,year,rain_fall_type)
          a = Roads10.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Roads10.search(params[:search],compare,year,rain_fall_type,legend)
        a = Roads10.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @Roads10s = Roads10.search(params[:search],compare,year,rain_fall_type,legend)
        a = Roads10.query(@Roads10s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    Roads10.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /roads10s/1/edit
  def edit
  end

  # POST /roads10s
  def create
    @roads10 = Roads10.new(roads10_params)

    if @roads10.save
      redirect_to @roads10, notice: 'Roads10 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /roads10s/1
  def update
    if @roads10.update(roads10_params)
      redirect_to @roads10, notice: 'Roads10 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /roads10s/1
  def destroy
    @roads10.destroy
    redirect_to roads10s_url, notice: 'Roads10 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roads10
      @roads10 = Roads10.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def roads10_params
      params.require(:roads10).permit(:Districts, :NH, :SH, :MDR, :Rural_Road, :Year)
    end
end
