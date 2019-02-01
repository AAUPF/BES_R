class Roads2sController < ApplicationController
  before_action :set_roads2, only: [:show, :edit, :update, :destroy]

  # GET /roads2s
  def index
    @roads2s = Roads2.all
    respond_to do |format|
      format.html { render json:@roads2s }
  end
  end

  # GET /roads2s/1
  def show
  end

  # GET /roads2s/new
  def new
    @roads2 = Roads2.new
  end

def test
  ji = [:Sector, :'2007-08', :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17', :'2017-18', :'CAGR_2014-18', :Indicator]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   jip = [:'2007-08', :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17', :'2017-18']

if search == "Public Investment in Road and Bridges"
  data = [
    "Total Expenditure on Road and Bridges",
    "Revenue Expenditure on Road and Bridges",
    "Capital Expenditure on Road and Bridges",
    "Expenditure on Economic Services",
    "Development Expenditure",
    "Total Budget",
    "GSDP",
  ]
else
  data = [
    "Economic Services",
    "Development Expenditure",
    "Total Budget",
    "GSDP",
  ]
end
   
  legend = "Sector"

search = rain_fall_type

   ji1 = [:Sector, :'2007-08', :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17', :'2017-18', :'CAGR_2014-18', :Indicator]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Roads2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Roads2.map(b,params[:year],rain_fall_type,views)
         else
          b = Roads2.map_search(params[:search],compare,year,rain_fall_type)
          a = Roads2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Roads2.search(params[:search],compare,year,rain_fall_type)
        a = Roads2.new_table(b,rain_fall_type,year,ji1,compare, search, data,legend)
      else
        @Roads2s = Roads2.search(params[:search],compare,year,rain_fall_type)
        a = Roads2.query(@Roads2s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    Roads2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /roads2s/1/edit
  def edit
  end

  # POST /roads2s
  def create
    @roads2 = Roads2.new(roads2_params)

    if @roads2.save
      redirect_to @roads2, notice: 'Roads2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /roads2s/1
  def update
    if @roads2.update(roads2_params)
      redirect_to @roads2, notice: 'Roads2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /roads2s/1
  def destroy
    @roads2.destroy
    redirect_to roads2s_url, notice: 'Roads2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roads2
      @roads2 = Roads2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def roads2_params
      params.require(:roads2).permit(:Sector, :'2007-08', :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17', :'2017-18', :'CAGR_2014-18', :Indicator)
    end
end
