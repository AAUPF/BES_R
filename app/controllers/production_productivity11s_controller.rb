class ProductionProductivity11sController < ApplicationController
  before_action :set_production_productivity11, only: [:show, :edit, :update, :destroy]

  # GET /production_productivity11s
  def index
    @production_productivity11s = ProductionProductivity11.all
  end

  # GET /production_productivity11s/1
  def show
  end

  # GET /production_productivity11s/new
  def new
    @production_productivity11 = ProductionProductivity11.new
  end


  def test
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
            b = ProductionProductivity11.map_search(j)
            u = "Total"
            a = ProductionProductivity11.map(b,u,year)
           else
            b = ProductionProductivity11.map_search(j)
            a = ProductionProductivity11.map(b,rain_fall_type,year)
           end
        elsif views == "Table"  
          b = ProductionProductivity11.search(params[:search],compare)

          a = ProductionProductivity11.table(b,rain_fall_type,year)
        else
          @ProductionProductivity11s = ProductionProductivity11.search(params[:search],compare)
          a = ProductionProductivity11.query(@ProductionProductivity11s,params[:year],rain_fall_type,views,compare)
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
    ProductionProductivity11.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /production_productivity11s/1/edit
  def edit
  end

  # POST /production_productivity11s
  def create
    @production_productivity11 = ProductionProductivity11.new(production_productivity11_params)

    if @production_productivity11.save
      redirect_to @production_productivity11, notice: 'Production productivity11 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /production_productivity11s/1
  def update
    if @production_productivity11.update(production_productivity11_params)
      redirect_to @production_productivity11, notice: 'Production productivity11 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /production_productivity11s/1
  def destroy
    @production_productivity11.destroy
    redirect_to production_productivity11s_url, notice: 'Production productivity11 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_production_productivity11
      @production_productivity11 = ProductionProductivity11.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def production_productivity11_params
      params.require(:production_productivity11).permit(:Districts, :Potato_Area_2015, :Potato_Production_2015, :Potato_Area_2016, :Potato_Production_2016, :Onion_Area_2015, :Onion_Production_2015, :Onion_Area_2016, :Onion_Production_2016, :Cauliflower_Area_2015, :Cauliflower_Production_2015, :Cauliflower_Area_2016, :Cauliflower_Production_2016, :Brinjal_Area_2015, :Brinjal_Production_2015, :Brinjal_Area_2016, :Brinjal_Production_2016)
    end
end
