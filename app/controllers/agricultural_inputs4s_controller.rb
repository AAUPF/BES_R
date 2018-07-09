class AgriculturalInputs4sController < ApplicationController
  before_action :set_agricultural_inputs4, only: [:show, :edit, :update, :destroy]

  # GET /agricultural_inputs4s
  def index
    @agricultural_inputs4s = AgriculturalInputs4.all
  end

  # GET /agricultural_inputs4s/1
  def show
  end

  # GET /agricultural_inputs4s/new
  def new
    @agricultural_inputs4 = AgriculturalInputs4.new
  end


  def test
    ji = [:Urea, :DAP, :SSP, :MOP, :Ammonium_Sulphate, :Complex, :Total, :N, :P, :K, :Total_NPK, :Grand_Total]

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
            b = AgriculturalInputs4.map_search(rain_fall_type)
            u = "Total"
            a = AgriculturalInputs4.map(b,u,year)
           else
            b = AgriculturalInputs4.map_search(rain_fall_type)
            a = AgriculturalInputs4.map(b,rain_fall_type,year)
           end
        elsif views == "Table"  
          b = AgriculturalInputs4.search(params[:search],compare)

          a = AgriculturalInputs4.table(b,rain_fall_type,year)
        else
          @AgriculturalInputs4s = AgriculturalInputs4.search(params[:search],compare)
          a = AgriculturalInputs4.query(@AgriculturalInputs4s,params[:year],rain_fall_type,views,compare,ji)
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
    AgriculturalInputs4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /agricultural_inputs4s/1/edit
  def edit
  end

  # POST /agricultural_inputs4s
  def create
    @agricultural_inputs4 = AgriculturalInputs4.new(agricultural_inputs4_params)

    if @agricultural_inputs4.save
      redirect_to @agricultural_inputs4, notice: 'Agricultural inputs4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /agricultural_inputs4s/1
  def update
    if @agricultural_inputs4.update(agricultural_inputs4_params)
      redirect_to @agricultural_inputs4, notice: 'Agricultural inputs4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /agricultural_inputs4s/1
  def destroy
    @agricultural_inputs4.destroy
    redirect_to agricultural_inputs4s_url, notice: 'Agricultural inputs4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agricultural_inputs4
      @agricultural_inputs4 = AgriculturalInputs4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def agricultural_inputs4_params
      params.require(:agricultural_inputs4).permit(:Districts, :Urea, :DAP, :SSP, :MOP, :Ammonium_Sulphate, :Complex, :Total, :N, :P, :K, :Total_NPK, :Grand_Total)
    end
end
