class SectoralShare3sController < ApplicationController
  before_action :set_sectoral_share3, only: [:show, :edit, :update, :destroy]

  # GET /sectoral_share3s
  def index
    @sectoral_share3s = SectoralShare3.all
  end

  # GET /sectoral_share3s/1
  def show
  end

  # GET /sectoral_share3s/new
  def new
    @sectoral_share3 = SectoralShare3.new
  end

def test
  ji = [:Target, :Achievement, :Achievement_Percentage]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Agencies"
   remove = ""
  #  ji1 = [:Characteristics, :India, :Bihar, :Year]
   if year == "All"
    ji1 = [:Agencies,:"2015-16",:"2016-17"]
   else
    if rain_fall_type != "All"
      ji1 = [:Agencies, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:Agencies, :Target, :Achievement, :Achievement_Percentage, :Year]
    end
    
   end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = SectoralShare3.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = SectoralShare3.map(b,params[:year],rain_fall_type,views)
         else
          b = SectoralShare3.map_search(params[:search],compare,year,rain_fall_type)
          a = SectoralShare3.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = SectoralShare3.search(params[:search],compare,year,rain_fall_type,legend)
        a = SectoralShare3.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @SectoralShare3s = SectoralShare3.search(params[:search],compare,year,rain_fall_type,legend)
        a = SectoralShare3.query(@SectoralShare3s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    SectoralShare3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /sectoral_share3s/1/edit
  def edit
  end

  # POST /sectoral_share3s
  def create
    @sectoral_share3 = SectoralShare3.new(sectoral_share3_params)

    if @sectoral_share3.save
      redirect_to @sectoral_share3, notice: 'Sectoral share3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sectoral_share3s/1
  def update
    if @sectoral_share3.update(sectoral_share3_params)
      redirect_to @sectoral_share3, notice: 'Sectoral share3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sectoral_share3s/1
  def destroy
    @sectoral_share3.destroy
    redirect_to sectoral_share3s_url, notice: 'Sectoral share3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sectoral_share3
      @sectoral_share3 = SectoralShare3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sectoral_share3_params
      params.require(:sectoral_share3).permit(:Agencies, :Target, :Achievement, :Achievement_Percentage, :Year)
    end
end
