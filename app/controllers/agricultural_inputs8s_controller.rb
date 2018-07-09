class AgriculturalInputs8sController < ApplicationController
  before_action :set_agricultural_inputs8, only: [:show, :edit, :update, :destroy]

  # GET /agricultural_inputs8s
  def index
    @agricultural_inputs8s = AgriculturalInputs8.all
  end

  # GET /agricultural_inputs8s/1
  def show
  end

  # GET /agricultural_inputs8s/new
  def new
    @agricultural_inputs8 = AgriculturalInputs8.new
  end


  def test

    ji = [:Tractor, :Combine_Harvestor, :Zero_Tillage, :Pumpset, :Power_Tiller, :Manually_Operated_Tools, :Thresher]
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
            b = AgriculturalInputs8.map_search(rain_fall_type)
            u = "Total"
            a = AgriculturalInputs8.map(b,u,year)
           else
            b = AgriculturalInputs8.map_search(rain_fall_type)
            a = AgriculturalInputs8.map(b,rain_fall_type,year)
           end
        elsif views == "Table"  
          b = AgriculturalInputs8.search(params[:search],compare)

          a = AgriculturalInputs8.table(b,rain_fall_type,year)
        else
          @AgriculturalInputs8s = AgriculturalInputs8.search(params[:search],compare)
          a = AgriculturalInputs8.query(@AgriculturalInputs8s,params[:year],rain_fall_type,views,compare,ji)
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
    AgriculturalInputs8.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /agricultural_inputs8s/1/edit
  def edit
  end

  # POST /agricultural_inputs8s
  def create
    @agricultural_inputs8 = AgriculturalInputs8.new(agricultural_inputs8_params)

    if @agricultural_inputs8.save
      redirect_to @agricultural_inputs8, notice: 'Agricultural inputs8 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /agricultural_inputs8s/1
  def update
    if @agricultural_inputs8.update(agricultural_inputs8_params)
      redirect_to @agricultural_inputs8, notice: 'Agricultural inputs8 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /agricultural_inputs8s/1
  def destroy
    @agricultural_inputs8.destroy
    redirect_to agricultural_inputs8s_url, notice: 'Agricultural inputs8 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agricultural_inputs8
      @agricultural_inputs8 = AgriculturalInputs8.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def agricultural_inputs8_params
      params.require(:agricultural_inputs8).permit(:Districts, :Tractor, :Combine_Harvestor, :Zero_Tillage, :Pumpset, :Power_Tiller, :Manually_Operated_Tools, :Thresher)
    end
end
