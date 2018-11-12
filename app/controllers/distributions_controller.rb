class DistributionsController < ApplicationController
  before_action :set_distribution, only: [:show, :edit, :update, :destroy]

  # GET /distributions
  def index
    @distributions = Distribution.all
  end

  # GET /distributions/1
  def show
  end

  # GET /distributions/new
  def new
    @distribution = Distribution.new
  end

def test
  search = params[:search]
  if search == "Number"
    ji = [:Domestic_Consumer, :Commercial_Consumer, :Industrial_LT_Consumer, :Industrial_HT_Consumer, :Public_Lighting_Consumer, :Traction_Consumer, :Agriculture_Consumer, :Public_Water_Works_Consumer]
    ji1 = [:Year,:Domestic_Consumer, :Commercial_Consumer, :Industrial_LT_Consumer, :Industrial_HT_Consumer, :Public_Lighting_Consumer, :Traction_Consumer, :Agriculture_Consumer, :Public_Water_Works_Consumer, :Total_Consumer]

  else
    ji = [:Percentage_of_Domestic_Consumer, :Percentage_of_Commercial_Consumer, :Percentage_of_Industrial_LT_Consumer, :Percentage_of_Industrial_HT_Consumer, :Percentage_of_Public_Lighting_Consumer, :Percentage_of_Agriculture_Consumer, :Percentage_of_Public_Water_Works_Consumer]
    ji1 = [:Year,:Percentage_of_Domestic_Consumer, :Percentage_of_Commercial_Consumer, :Percentage_of_Industrial_LT_Consumer, :Percentage_of_Industrial_HT_Consumer, :Percentage_of_Public_Lighting_Consumer, :Percentage_of_Agriculture_Consumer, :Percentage_of_Public_Water_Works_Consumer, :Percentage_of_Total_Consumer]
  end
  
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Distribution.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Distribution.map(b,params[:year],rain_fall_type,views)
         else
          b = Distribution.map_search(params[:search],compare,year,rain_fall_type)
          a = Distribution.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Distribution.search(params[:search],compare,year,rain_fall_type)
        a = Distribution.table(b,rain_fall_type,year,ji1,compare)
      else
        @Distributions = Distribution.search(params[:search],compare,year,rain_fall_type)
        a = Distribution.query(@Distributions,params[:year],rain_fall_type,views,ji,compare)
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
    Distribution.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /distributions/1/edit
  def edit
  end

  # POST /distributions
  def create
    @distribution = Distribution.new(distribution_params)

    if @distribution.save
      redirect_to @distribution, notice: 'Distribution was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /distributions/1
  def update
    if @distribution.update(distribution_params)
      redirect_to @distribution, notice: 'Distribution was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /distributions/1
  def destroy
    @distribution.destroy
    redirect_to distributions_url, notice: 'Distribution was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_distribution
      @distribution = Distribution.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def distribution_params
      params.require(:distribution).permit(:Year, :Domestic_Consumer, :Commercial_Consumer, :Industrial_LT_Consumer, :Industrial_HT_Consumer, :Public_Lighting_Consumer, :Traction_Consumer, :Agriculture_Consumer, :Public_Water_Works_Consumer, :Total_Consumer, :Percentage_of_Domestic_Consumer, :Percentage_of_Commercial_Consumer, :Percentage_of_Industrial_LT_Consumer, :Percentage_of_Industrial_HT_Consumer, :Percentage_of_Public_Lighting_Consumer, :Percentage_of_Agriculture_Consumer, :Percentage_of_Public_Water_Works_Consumer, :Percentage_of_Total_Consumer)
    end
end
