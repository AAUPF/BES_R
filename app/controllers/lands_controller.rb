class LandsController < ApplicationController
  before_action :set_land, only: [:show, :edit, :update, :destroy]
  # include Concerns::MyAwesomeModule

  # GET /lands
  # GET /lands.json
  def index
    @lands = Land.all
    respond_to do |format|
      format.html { render json: @lands} 
  end
  end


  def test
    ji = [:Geographical_Area, :Forest, :Barren_and_Unculturable_land, :Non_Agriculture_Land_Area,:Non_Agriculture_Perennial, :Non_Agriculture_Temporary,:Culturable_Waste_Land]
    rain_fall_type = params[:rain_fall_type]
     views  = params[:views]
     year  = ""
     compare = params[:compare]

    if rain_fall_type || views

        if views == "Map View"
          l =  rain_fall_type.gsub(" ","")
          if year == "2016"
            j = "#{l}_2016"
          elsif year == "2017"
            j = "#{l}_2017"
          else
            puts "no year"
          end  
           
           if rain_fall_type  ==  "All"
           

            if year == "2016"
              j = "Total_2016"
            elsif year == "2017"
              j = "Total_2017"
            else
              puts "no year"
            end  
            b = Land.map_search(rain_fall_type)
            u = "Total"
            a = Land.map(b,u,year)
           else
            b = Land.map_search(rain_fall_type)
            a = Land.map(b,rain_fall_type,year)
           end
        elsif views == "Table"  
          b = Land.search(params[:search],compare)

          a = Land.table(b,rain_fall_type,year)
        else
          @Lands = Land.search(params[:search],compare)
          a = Land.query(@Lands,params[:year],rain_fall_type,views,compare,ji)
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

  # GET /lands/1
  # GET /lands/1.json
  def show
  end

  # GET /lands/new
  def new
    @land = Land.new
  end

  def import
    # Module1.import(params[:file])
    Land.import1(params[:file])
    redirect_to lands_path, notice: "Products imported."
  end

  # GET /lands/1/edit
  def edit
  end

  # POST /lands
  # POST /lands.json
  def create
    @land = Land.new(land_params)

    respond_to do |format|
      if @land.save
        format.html { redirect_to @land, notice: 'Land was successfully created.' }
        format.json { render :show, status: :created, location: @land }
      else
        format.html { render :new }
        format.json { render json: @land.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lands/1
  # PATCH/PUT /lands/1.json
  def update
    respond_to do |format|
      if @land.update(land_params)
        format.html { redirect_to @land, notice: 'Land was successfully updated.' }
        format.json { render :show, status: :ok, location: @land }
      else
        format.html { render :edit }
        format.json { render json: @land.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lands/1
  # DELETE /lands/1.json
  def destroy
    @land.destroy
    respond_to do |format|
      format.html { redirect_to lands_url, notice: 'Land was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_land
      @land = Land.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def land_params
      params.require(:land).permit(:Districts, :Geographical_Area, :Forest, :Barren_and_Unculturable_land, :Non_Agriculture_Land_Area, :Non_Agriculture_Perennial, :Non_Agriculture_Temporary, :Culturable_Waste_Land)
    end
end
