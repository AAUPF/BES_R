class SectoralShare7sController < ApplicationController
  before_action :set_sectoral_share7, only: [:show, :edit, :update, :destroy]

  # GET /sectoral_share7s
  def index
    @sectoral_share7s = SectoralShare7.all
  end

  # GET /sectoral_share7s/1
  def show
  end

  # GET /sectoral_share7s/new
  def new
    @sectoral_share7 = SectoralShare7.new
  end

def test
  ji = [:'2013-14', :'2014-15', :'2015-16']
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

   jip = [ :'2013-14', :'2014-15', :'2015-16']


   data = [
          "Andhra Pradesh ",
          "Bihar",
          "Gujarat",
          "Haryana",
          "Himachal Pradesh",
          "Karnataka",
          "Kerala",
          "Madhya Pradesh",
          "Maharashtra",
          "Odisha",
          "Punjab",
          "Rajasthan",
          "Tamil Nadu",
          "Uttar Pradesh",
          "Uttarakhand",
          "West Bengal",
          "India",
  ]
  legend = "State"

search = rain_fall_type

   ji1 = [:Sector, :'2013-14', :'2014-15', :'2015-16', :Indicator]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = SectoralShare7.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = SectoralShare7.map(b,params[:year],rain_fall_type,views)
         else
          b = SectoralShare7.map_search(params[:search],compare,year,rain_fall_type)
          a = SectoralShare7.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = SectoralShare7.search(params[:search],compare,year,rain_fall_type)
        a = SectoralShare7.new_table(b,rain_fall_type,year,ji1,compare, search, data,legend)
      else
        @SectoralShare7s = SectoralShare7.search(params[:search],compare,year,rain_fall_type)
        a = SectoralShare7.query(@SectoralShare7s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    SectoralShare7.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /sectoral_share7s/1/edit
  def edit
  end

  # POST /sectoral_share7s
  def create
    @sectoral_share7 = SectoralShare7.new(sectoral_share7_params)

    if @sectoral_share7.save
      redirect_to @sectoral_share7, notice: 'Sectoral share7 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sectoral_share7s/1
  def update
    if @sectoral_share7.update(sectoral_share7_params)
      redirect_to @sectoral_share7, notice: 'Sectoral share7 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sectoral_share7s/1
  def destroy
    @sectoral_share7.destroy
    redirect_to sectoral_share7s_url, notice: 'Sectoral share7 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sectoral_share7
      @sectoral_share7 = SectoralShare7.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sectoral_share7_params
      params.require(:sectoral_share7).permit(:State, :'2013-14', :'2014-15', :'2015-16', :Indicator)
    end
end
