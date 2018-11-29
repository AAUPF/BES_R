class SectoralShare8sController < ApplicationController
  before_action :set_sectoral_share8, only: [:show, :edit, :update, :destroy]

  # GET /sectoral_share8s
  def index
    @sectoral_share8s = SectoralShare8.all
  end

  # GET /sectoral_share8s/1
  def show
  end

  # GET /sectoral_share8s/new
  def new
    @sectoral_share8 = SectoralShare8.new
  end

def test
  ji = [:Branches_as_on_March_30_2016, :'2014-15', :'2015-16']
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   jip = [ :Branches_as_on_March_30_2016, :'2014-15', :'2015-16']


   data = [
    "Bihar",
    "Chhattisgarh",
    "Gujarat",
    "Haryana",
    "Himachal Pradesh ",
    "Karnataka",
    "Kerala",
    "Madhya Pradesh",
    "Maharashtra",
    "Odisha ",
    "Punjab",
    "Rajasthan",
    "Tamil Nadu",
    "Uttar Pradesh",
    "West Bengal",
    "All India ",
  ]
  legend = "State"

search = rain_fall_type

   ji1 = [:Sector, :Branches_as_on_March_30_2016, :'2014-15', :'2015-16', :Indicator]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = SectoralShare8.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = SectoralShare8.map(b,params[:year],rain_fall_type,views)
         else
          b = SectoralShare8.map_search(params[:search],compare,year,rain_fall_type)
          a = SectoralShare8.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = SectoralShare8.search(params[:search],compare,year,rain_fall_type)
        a = SectoralShare8.new_table(b,rain_fall_type,year,ji1,compare, search, data,legend)
      else
        @SectoralShare8s = SectoralShare8.search(params[:search],compare,year,rain_fall_type)
        a = SectoralShare8.query(@SectoralShare8s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    SectoralShare8.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /sectoral_share8s/1/edit
  def edit
  end

  # POST /sectoral_share8s
  def create
    @sectoral_share8 = SectoralShare8.new(sectoral_share8_params)

    if @sectoral_share8.save
      redirect_to @sectoral_share8, notice: 'Sectoral share8 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sectoral_share8s/1
  def update
    if @sectoral_share8.update(sectoral_share8_params)
      redirect_to @sectoral_share8, notice: 'Sectoral share8 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sectoral_share8s/1
  def destroy
    @sectoral_share8.destroy
    redirect_to sectoral_share8s_url, notice: 'Sectoral share8 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sectoral_share8
      @sectoral_share8 = SectoralShare8.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sectoral_share8_params
      params.require(:sectoral_share8).permit(:State, :Branches_as_on_March_30_2016, :'2014-15', :'2015-16', :Indicator)
    end
end
