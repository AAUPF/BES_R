class PanchayatiRaj1sController < ApplicationController
  before_action :set_panchayati_raj1, only: [:show, :edit, :update, :destroy]

  # GET /panchayati_raj1s
  def index
    @panchayati_raj1s = PanchayatiRaj1.all
  end

  # GET /panchayati_raj1s/1
  def show
  end

  # GET /panchayati_raj1s/new
  def new
    @panchayati_raj1 = PanchayatiRaj1.new
  end

def test
  ji = [:Number, :Number_of_Members_or_Functionaries, :Average_Number_of_Members_per_Panchayat]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Item"
ji1 = [:Item, :Number, :Number_of_Members_or_Functionaries, :Average_Number_of_Members_per_Panchayat]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = PanchayatiRaj1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = PanchayatiRaj1.map(b,params[:year],rain_fall_type,views)
         else
          b = PanchayatiRaj1.map_search(params[:search],compare,year,rain_fall_type)
          a = PanchayatiRaj1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = PanchayatiRaj1.search(params[:search],compare,year,rain_fall_type,legend)
        a = PanchayatiRaj1.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @PanchayatiRaj1s = PanchayatiRaj1.search(params[:search],compare,year,rain_fall_type,legend)
        a = PanchayatiRaj1.query(@PanchayatiRaj1s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    PanchayatiRaj1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /panchayati_raj1s/1/edit
  def edit
  end

  # POST /panchayati_raj1s
  def create
    @panchayati_raj1 = PanchayatiRaj1.new(panchayati_raj1_params)

    if @panchayati_raj1.save
      redirect_to @panchayati_raj1, notice: 'Panchayati raj1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /panchayati_raj1s/1
  def update
    if @panchayati_raj1.update(panchayati_raj1_params)
      redirect_to @panchayati_raj1, notice: 'Panchayati raj1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /panchayati_raj1s/1
  def destroy
    @panchayati_raj1.destroy
    redirect_to panchayati_raj1s_url, notice: 'Panchayati raj1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_panchayati_raj1
      @panchayati_raj1 = PanchayatiRaj1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def panchayati_raj1_params
      params.require(:panchayati_raj1).permit(:Item, :Number, :Number_of_Members_or_Functionaries, :Average_Number_of_Members_per_Panchayat)
    end
end
