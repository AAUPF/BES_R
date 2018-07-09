class ProductionProductivity7sController < ApplicationController
  before_action :set_production_productivity7, only: [:show, :edit, :update, :destroy]
  # include Concerns::MyAwesomeModule

  # GET /production_productivity7s
  # GET /production_productivity7s.json
  def index
    @production_productivity7s = ProductionProductivity7.all
    respond_to do |format|
      format.html { render json:   @production_productivity7s} 
  end
  end

  # GET /production_productivity7s/1
  # GET /production_productivity7s/1.json
  def show
  end

  # GET /production_productivity7s/new
  def new
    @production_productivity7 = ProductionProductivity7.new
  end

  # GET /production_productivity7s/1/edit
  def edit
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
            b = ProductionProductivity7.map_search(rain_fall_type)
            u = "Total"
            a = ProductionProductivity7.map(b,u,year)
           else
            b = ProductionProductivity7.map_search(rain_fall_type)
            a = ProductionProductivity7.map(b,rain_fall_type,year)
           end
        elsif views == "Table"  
          b = ProductionProductivity7.search(params[:search],compare)

          a = ProductionProductivity7.table(b,rain_fall_type,year)
        else
          @ProductionProductivity7s = ProductionProductivity7.search(params[:search],compare)
          a = ProductionProductivity7.query(@ProductionProductivity7s,params[:year],rain_fall_type,views,compare,ji)
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
    ProductionProductivity7.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end


  # POST /production_productivity7s
  # POST /production_productivity7s.json
  def create
    @production_productivity7 = ProductionProductivity7.new(production_productivity7_params)

    respond_to do |format|
      if @production_productivity7.save
        format.html { redirect_to @production_productivity7, notice: 'Production productivity7 was successfully created.' }
        format.json { render :show, status: :created, location: @production_productivity7 }
      else
        format.html { render :new }
        format.json { render json: @production_productivity7.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /production_productivity7s/1
  # PATCH/PUT /production_productivity7s/1.json
  def update
    respond_to do |format|
      if @production_productivity7.update(production_productivity7_params)
        format.html { redirect_to @production_productivity7, notice: 'Production productivity7 was successfully updated.' }
        format.json { render :show, status: :ok, location: @production_productivity7 }
      else
        format.html { render :edit }
        format.json { render json: @production_productivity7.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /production_productivity7s/1
  # DELETE /production_productivity7s/1.json
  def destroy
    @production_productivity7.destroy
    respond_to do |format|
      format.html { redirect_to production_productivity7s_url, notice: 'Production productivity7 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_production_productivity7
      @production_productivity7 = ProductionProductivity7.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def production_productivity7_params
      params.require(:production_productivity7).permit(:Districts, :Area_2015, :Production_2015, :Productivity_2015, :Area_2016, :Production_2016, :Productivity_2016)
    end
end
