class Land1sController < ApplicationController
  before_action :set_land1, only: [:show, :edit, :update, :destroy]

  # GET /land1s
  def index
    @land1s = Land1.all
  end

  # GET /land1s/1
  def show
  end

  # GET /land1s/new
  def new
    @land1 = Land1.new
  end

def test
  ji = [:Year, :Geographical_Area, :Forests, :Barren_Unculturable_Land, :Land_put_to_Non_agricultural_use, :Land_Area, :Water_Area, :Culturable_Waste, :Permanent_Pastures, :Land_under_Tree_Crops, :Fallow_Land_excl_Current_Fallow, :Current_Fallow, :Total_Unculturable_Land, :Net_Sown_Area, :Gross_Sown_Area, :Cropping_Intensity]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Land1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Land1.map(b,params[:year],rain_fall_type,views)
         else
          b = Land1.map_search(params[:search],compare,year,rain_fall_type)
          a = Land1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Land1.search(params[:search],compare,year)
        a = Land1.table(b,rain_fall_type,year)
      else
        @Land1s = Land1.search(params[:search],compare,year,rain_fall_type)
       
        a = Land1.query(@Land1s,params[:year],rain_fall_type,views,ji,compare)
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
    Land1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /land1s/1/edit
  def edit
  end

  # POST /land1s
  def create
    @land1 = Land1.new(land1_params)

    if @land1.save
      redirect_to @land1, notice: 'Land1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /land1s/1
  def update
    if @land1.update(land1_params)
      redirect_to @land1, notice: 'Land1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /land1s/1
  def destroy
    @land1.destroy
    redirect_to land1s_url, notice: 'Land1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_land1
      @land1 = Land1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def land1_params
      params.require(:land1).permit(:Year, :Geographical_Area, :Forests, :Barren_Unculturable_Land, :Land_put_to_Non_agricultural_use, :Land_Area, :Water_Area, :Culturable_Waste, :Permanent_Pastures, :Land_under_Tree_Crops, :Fallow_Land_excl_Current_Fallow, :Current_Fallow, :Total_Unculturable_Land, :Net_Sown_Area, :Gross_Sown_Area, :Cropping_Intensity)
    end
end
