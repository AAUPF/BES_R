class Roads1sController < ApplicationController
  before_action :set_roads1, only: [:show, :edit, :update, :destroy]

  # GET /roads1s
  def index
    @roads1s = Roads1.all
    respond_to do |format|
      format.html { render json:@roads1s}
  end
  end

  # GET /roads1s/1
  def show
  end

  # GET /roads1s/new
  def new
    @roads1 = Roads1.new
  end

def test
  # ji = [:Sector, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16_P', :'2016-17_Q', :'CAGR_2011-16']
  # rain_fall_type = params[:rain_fall_type]
  #  views  = params[:views]
  #  year  = params[:year]
  #  compare = params[:compare]

   ji = [:Sector, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16_P', :'2016-17_Q', :'CAGR_2011-16']
   rain_fall_type = params[:rain_fall_type]
   views = params[:views]
   year = params[:year]
   compare = params[:compare]
   search = params[:search]
 
   search = rain_fall_type
 
   jip = [:'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16_P', :'2016-17_Q', :'CAGR_2011-16']
   ji1 = [:Sector, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16_P', :'2016-17_Q', :'CAGR_2011-16']
 
 
   if views != "Table"
 
 
     data = [
      "Transport",
      "Railways",
      "Road Transport",
      "Water Transport",
      "Air Transport",
      "Communication",
 
   
     ]
 
     
   else
 
     data = [
      "Transport",
      "Railways",
      "Road Transport",
      "Water Transport",
      "Air Transport",
      "Communication",
     ]
 
     
   end

   legend = "Items"
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Roads1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Roads1.map(b,params[:year],rain_fall_type,views)
         else
          b = Roads1.map_search(params[:search],compare,year,rain_fall_type)
          a = Roads1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Roads1.search(params[:search],compare,year,rain_fall_type)
        a = Roads1.new_table(b, rain_fall_type, year, ji1, compare, search, data,legend)
      else
        @Roads1s = Roads1.search(params[:search],compare,year,rain_fall_type)
        a = Roads1.query(@Roads1s, params[:year], rain_fall_type, views, ji, compare, search, data, jip)
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
    Roads1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /roads1s/1/edit
  def edit
  end

  # POST /roads1s
  def create
    @roads1 = Roads1.new(roads1_params)

    if @roads1.save
      redirect_to @roads1, notice: 'Roads1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /roads1s/1
  def update
    if @roads1.update(roads1_params)
      redirect_to @roads1, notice: 'Roads1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /roads1s/1
  def destroy
    @roads1.destroy
    redirect_to roads1s_url, notice: 'Roads1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roads1
      @roads1 = Roads1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def roads1_params
      params.require(:roads1).permit(:Sector, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16_P', :'2016-17_Q', :'CAGR_2011-16')
    end
end
