class ProductionAndProductivityOfRicesController < ApplicationController
  before_action :set_production_and_productivity_of_rice, only: [:show, :edit, :update, :destroy]
  # GET /production_and_productivity_of_rices
  # GET /production_and_productivity_of_rices.json
  # include Concerns::MyAwesomeModule

  def index
    @production_and_productivity_of_rices = ProductionAndProductivityOfRice.all
    respond_to do |format|
      format.html { render json: @production_and_productivity_of_rices} 
  end
  end
  # GET /production_and_productivity_of_rices/1
  # GET /production_and_productivity_of_rices/1.json
  def show
  end

  # GET /production_and_productivity_of_rices/new
  def new
    @production_and_productivity_of_rice = ProductionAndProductivityOfRice.new
  end
  def test
    ji = [:Area_2015, :Production_2015, :Productivity_2015, :Non_Agriculture_Land_Area,:Area_2016, :Production_2016,:Productivity_2016]
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
            b = ProductionAndProductivityOfRice.map_search(rain_fall_type)
            u = "Total"
            a = ProductionAndProductivityOfRice.map(b,u,year)
           else
            b = ProductionAndProductivityOfRice.map_search(rain_fall_type)
            a = ProductionAndProductivityOfRice.map(b,rain_fall_type,year)
           end
        elsif views == "Table"  
          b = ProductionAndProductivityOfRice.search(params[:search],compare)

          a = ProductionAndProductivityOfRice.table(b,rain_fall_type,year)
        else
          @ProductionAndProductivityOfRices = ProductionAndProductivityOfRice.search(params[:search],compare)
          a = ProductionAndProductivityOfRice.query(@ProductionAndProductivityOfRices,params[:year],rain_fall_type,views,compare,ji)
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
    ProductionAndProductivityOfRice.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /production_and_productivity_of_rices/1/edit
  def edit
  end

  # POST /production_and_productivity_of_rices
  # POST /production_and_productivity_of_rices.json
  def create
    @production_and_productivity_of_rice = ProductionAndProductivityOfRice.new(production_and_productivity_of_rice_params)

    respond_to do |format|
      if @production_and_productivity_of_rice.save
        format.html { redirect_to @production_and_productivity_of_rice, notice: 'Production and productivity of rice was successfully created.' }
        format.json { render :show, status: :created, location: @production_and_productivity_of_rice }
      else
        format.html { render :new }
        format.json { render json: @production_and_productivity_of_rice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /production_and_productivity_of_rices/1
  # PATCH/PUT /production_and_productivity_of_rices/1.json
  def update
    respond_to do |format|
      if @production_and_productivity_of_rice.update(production_and_productivity_of_rice_params)
        format.html { redirect_to @production_and_productivity_of_rice, notice: 'Production and productivity of rice was successfully updated.' }
        format.json { render :show, status: :ok, location: @production_and_productivity_of_rice }
      else
        format.html { render :edit }
        format.json { render json: @production_and_productivity_of_rice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /production_and_productivity_of_rices/1
  # DELETE /production_and_productivity_of_rices/1.json
  def destroy
    @production_and_productivity_of_rice.destroy
    respond_to do |format|
      format.html { redirect_to production_and_productivity_of_rices_url, notice: 'Production and productivity of rice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_production_and_productivity_of_rice
      @production_and_productivity_of_rice = ProductionAndProductivityOfRice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def production_and_productivity_of_rice_params
      params.require(:production_and_productivity_of_rice).permit(:Districts, :Area_2015, :Production_2015, :Productivity_2015, :Area_2016, :Production_2016, :Productivity_2016)
    end
end
