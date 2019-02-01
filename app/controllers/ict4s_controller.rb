class Ict4sController < ApplicationController
  before_action :set_ict4, only: [:show, :edit, :update, :destroy]

  # GET /ict4s
  def index
    @ict4s = Ict4.all
  end

  # GET /ict4s/1
  def show
  end

  # GET /ict4s/new
  def new
    @ict4 = Ict4.new
  end

def test
  ji = [:Rural, :Urban, :Total, :Rural_Percentage, :Urban_Percentage, :Share_in_all_India]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]

   ji1 = [:State, :Rural, :Urban, :Total, :Rural_Percentage, :Urban_Percentage, :Share_in_all_India, :Indicator]


  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Ict4.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Ict4.map(b,params[:year],rain_fall_type,views)
         else
          b = Ict4.map_search(params[:search],compare,year,rain_fall_type)
          a = Ict4.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Ict4.search(params[:search],compare,year,rain_fall_type)
        a = Ict4.table(b,rain_fall_type,year,ji1,compare)
      else
        @Ict4s = Ict4.search(params[:search],compare,year,rain_fall_type)
        a = Ict4.query(@Ict4s,params[:year],rain_fall_type,views,ji,compare,search)
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
    Ict4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /ict4s/1/edit
  def edit
  end

  # POST /ict4s
  def create
    @ict4 = Ict4.new(ict4_params)

    if @ict4.save
      redirect_to @ict4, notice: 'Ict4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /ict4s/1
  def update
    if @ict4.update(ict4_params)
      redirect_to @ict4, notice: 'Ict4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /ict4s/1
  def destroy
    @ict4.destroy
    redirect_to ict4s_url, notice: 'Ict4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ict4
      @ict4 = Ict4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ict4_params
      params.require(:ict4).permit(:State, :Rural, :Urban, :Total, :Rural_Percentage, :Urban_Percentage, :Share_in_all_India, :Indicator)
    end
end
