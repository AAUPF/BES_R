class SectoralShare1sController < ApplicationController
  before_action :set_sectoral_share1, only: [:show, :edit, :update, :destroy]

  # GET /sectoral_share1s
  def index
    @sectoral_share1s = SectoralShare1.all
  end

  # GET /sectoral_share1s/1
  def show
  end

  # GET /sectoral_share1s/new
  def new
    @sectoral_share1 = SectoralShare1.new
  end

def test
  ji = [:ACP_Target, :Achievement, :Achievement_Percentage, :Percentage_of_Share_in_Advances]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Sector"
   remove = ""
  #  ji1 = [:Characteristics, :India, :Bihar, :Year]
   if year == "All"
    ji1 = [:Sector,:"2015-16",:"2016-17"]
   else
    if rain_fall_type != "All"
      ji1 = [:Sector, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:Sector, :ACP_Target, :Achievement, :Achievement_Percentage, :Percentage_of_Share_in_Advances, :Year]
    end
    
   end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = SectoralShare1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = SectoralShare1.map(b,params[:year],rain_fall_type,views)
         else
          b = SectoralShare1.map_search(params[:search],compare,year,rain_fall_type)
          a = SectoralShare1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = SectoralShare1.search(params[:search],compare,year,rain_fall_type,legend)
        a = SectoralShare1.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @SectoralShare1s = SectoralShare1.search(params[:search],compare,year,rain_fall_type,legend)
        a = SectoralShare1.query(@SectoralShare1s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    SectoralShare1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /sectoral_share1s/1/edit
  def edit
  end

  # POST /sectoral_share1s
  def create
    @sectoral_share1 = SectoralShare1.new(sectoral_share1_params)

    if @sectoral_share1.save
      redirect_to @sectoral_share1, notice: 'Sectoral share1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sectoral_share1s/1
  def update
    if @sectoral_share1.update(sectoral_share1_params)
      redirect_to @sectoral_share1, notice: 'Sectoral share1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sectoral_share1s/1
  def destroy
    @sectoral_share1.destroy
    redirect_to sectoral_share1s_url, notice: 'Sectoral share1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sectoral_share1
      @sectoral_share1 = SectoralShare1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sectoral_share1_params
      params.require(:sectoral_share1).permit(:Sector, :ACP_Target, :Achievement, :Achievement_Percentage, :Percentage_of_Share_in_Advances, :Year)
    end
end
