class ProductionProductivity10sController < ApplicationController
  before_action :set_production_productivity10, only: [:show, :edit, :update, :destroy]

  # GET /production_productivity10s
  def index
    @production_productivity10s = ProductionProductivity10.all
  end

  # GET /production_productivity10s/1
  def show
  end

  # GET /production_productivity10s/new
  def new
    @production_productivity10 = ProductionProductivity10.new
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
            b = ProductionProductivity10.map_search(j)
            u = "Total"
            a = ProductionProductivity10.map(b,u,year)
           else
            b = ProductionProductivity10.map_search(j)
            a = ProductionProductivity10.map(b,rain_fall_type,year)
           end
        elsif views == "Table"  
          b = ProductionProductivity10.search(params[:search],compare)

          a = ProductionProductivity10.table(b,rain_fall_type,year)
        else
          @ProductionProductivity10s = ProductionProductivity10.search(params[:search],compare)
          a = ProductionProductivity10.query(@ProductionProductivity10s,params[:year],rain_fall_type,views,compare)
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
    ProductionProductivity10.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /production_productivity10s/1/edit
  def edit
  end

  # POST /production_productivity10s
  def create
    @production_productivity10 = ProductionProductivity10.new(production_productivity10_params)

    if @production_productivity10.save
      redirect_to @production_productivity10, notice: 'Production productivity10 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /production_productivity10s/1
  def update
    if @production_productivity10.update(production_productivity10_params)
      redirect_to @production_productivity10, notice: 'Production productivity10 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /production_productivity10s/1
  def destroy
    @production_productivity10.destroy
    redirect_to production_productivity10s_url, notice: 'Production productivity10 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_production_productivity10
      @production_productivity10 = ProductionProductivity10.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def production_productivity10_params
      params.require(:production_productivity10).permit(:Districts, :Mango_Area_2015, :Mango_Production_2015, :Mango_Area_2016, :Mango_Production_2016, :Guava_Area_2015, :Guava_Production_2015, :Guava_Area_2016, :Guava_Production_2016, :Litchi_Area_2015, :Litchi_Production_2015, :Litchi_Area_2016, :Litchi_Production_2016, :Banana_Area_2015, :Banana_Production_2015, :Banana_Area_2016, :Banana_Production_2016)
    end
end
