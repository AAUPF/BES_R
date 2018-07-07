class ProductionProductivity9sController < ApplicationController
  before_action :set_production_productivity9, only: [:show, :edit, :update, :destroy]

  # GET /production_productivity9s
  # GET /production_productivity9s.json
  def index
    @production_productivity9s = ProductionProductivity9.all
  end

  # GET /production_productivity9s/1
  # GET /production_productivity9s/1.json
  def show
  end

  # GET /production_productivity9s/new
  def new
    @production_productivity9 = ProductionProductivity9.new
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
            b = ProductionProductivity9.map_search(j)
            u = "Total"
            a = ProductionProductivity9.map(b,u,year)
           else
            b = ProductionProductivity9.map_search(j)
            a = ProductionProductivity9.map(b,rain_fall_type,year)
           end
        elsif views == "Table"  
          b = ProductionProductivity9.search(params[:search],compare)

          a = ProductionProductivity9.table(b,rain_fall_type,year)
        else
          @ProductionProductivity9s = ProductionProductivity9.search(params[:search],compare)
          a = ProductionProductivity9.query(@ProductionProductivity9s,params[:year],rain_fall_type,views,compare)
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
  ProductionProductivity9.import1(params[:file])
  redirect_to tests_path, notice: "Products imported."
end


  # GET /production_productivity9s/1/edit
  def edit
  end

  # POST /production_productivity9s
  # POST /production_productivity9s.json
  def create
    @production_productivity9 = ProductionProductivity9.new(production_productivity9_params)

    respond_to do |format|
      if @production_productivity9.save
        format.html { redirect_to @production_productivity9, notice: 'Production productivity9 was successfully created.' }
        format.json { render :show, status: :created, location: @production_productivity9 }
      else
        format.html { render :new }
        format.json { render json: @production_productivity9.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /production_productivity9s/1
  # PATCH/PUT /production_productivity9s/1.json
  def update
    respond_to do |format|
      if @production_productivity9.update(production_productivity9_params)
        format.html { redirect_to @production_productivity9, notice: 'Production productivity9 was successfully updated.' }
        format.json { render :show, status: :ok, location: @production_productivity9 }
      else
        format.html { render :edit }
        format.json { render json: @production_productivity9.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /production_productivity9s/1
  # DELETE /production_productivity9s/1.json
  def destroy
    @production_productivity9.destroy
    respond_to do |format|
      format.html { redirect_to production_productivity9s_url, notice: 'Production productivity9 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_production_productivity9
      @production_productivity9 = ProductionProductivity9.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def production_productivity9_params
      params.require(:production_productivity9).permit(:Districts, :Area_2015, :Production_2015, :Productivity_2015, :Area_2016, :Production_2016, :Productivity_2016)
    end
end
