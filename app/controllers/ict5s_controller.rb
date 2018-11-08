class Ict5sController < ApplicationController
  before_action :set_ict5, only: [:show, :edit, :update, :destroy]

  # GET /ict5s
  def index
    @ict5s = Ict5.all
  end

  # GET /ict5s/1
  def show
  end

  # GET /ict5s/new
  def new
    @ict5 = Ict5.new
  end

def test
  ji = [:Rural, :Deposits, :Investment, :MIS, :Sukanya_Samridhi_Account, :MG_NREGA]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

   ji1 = [:State, :Rural, :Deposits, :Investment, :MIS, :Sukanya_Samridhi_Account, :MG_NREGA, :Total, :Indicator]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Ict5.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Ict5.map(b,params[:year],rain_fall_type,views)
         else
          b = Ict5.map_search(params[:search],compare,year,rain_fall_type)
          a = Ict5.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Ict5.search(params[:search],compare,year,rain_fall_type)
        a = Ict5.table(b,rain_fall_type,year,ji1,compare)
      else
        @Ict5s = Ict5.search(params[:search],compare,year,rain_fall_type)
        a = Ict5.query(@Ict5s,params[:year],rain_fall_type,views,ji,compare)
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
    Ict5.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /ict5s/1/edit
  def edit
  end

  # POST /ict5s
  def create
    @ict5 = Ict5.new(ict5_params)

    if @ict5.save
      redirect_to @ict5, notice: 'Ict5 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /ict5s/1
  def update
    if @ict5.update(ict5_params)
      redirect_to @ict5, notice: 'Ict5 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /ict5s/1
  def destroy
    @ict5.destroy
    redirect_to ict5s_url, notice: 'Ict5 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ict5
      @ict5 = Ict5.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ict5_params
      params.require(:ict5).permit(:State, :Rural, :Deposits, :Investment, :MIS, :Sukanya_Samridhi_Account, :MG_NREGA, :Total, :Indicator)
    end
end
