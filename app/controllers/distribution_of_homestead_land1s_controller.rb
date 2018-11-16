class DistributionOfHomesteadLand1sController < ApplicationController
  before_action :set_distribution_of_homestead_land1, only: [:show, :edit, :update, :destroy]

  # GET /distribution_of_homestead_land1s
  def index
    @distribution_of_homestead_land1s = DistributionOfHomesteadLand1.all
  end

  # GET /distribution_of_homestead_land1s/1
  def show
  end

  # GET /distribution_of_homestead_land1s/new
  def new
    @distribution_of_homestead_land1 = DistributionOfHomesteadLand1.new
  end

def test
  ji = [:Mahadalit, :SC, :ST, :BC_Schedule_1, :BC_Schedule_2, :Percentage_of_Mahadalit, :Percentage_of_SC, :Percentage_of_ST, :Percentage_of_BC_Schedule_1, :Percentage_of_BC_Schedule_2]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Item"
ji1 = [:Item, :Mahadalit, :SC, :ST, :BC_Schedule_1, :BC_Schedule_2, :Total, :Percentage_of_Mahadalit, :Percentage_of_SC, :Percentage_of_ST, :Percentage_of_BC_Schedule_1, :Percentage_of_BC_Schedule_2, :Total_Percentage]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = DistributionOfHomesteadLand1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = DistributionOfHomesteadLand1.map(b,params[:year],rain_fall_type,views)
         else
          b = DistributionOfHomesteadLand1.map_search(params[:search],compare,year,rain_fall_type)
          a = DistributionOfHomesteadLand1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = DistributionOfHomesteadLand1.search(params[:search],compare,year,rain_fall_type,legend)
        a = DistributionOfHomesteadLand1.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @DistributionOfHomesteadLand1s = DistributionOfHomesteadLand1.search(params[:search],compare,year,rain_fall_type,legend)
        a = DistributionOfHomesteadLand1.query(@DistributionOfHomesteadLand1s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    DistributionOfHomesteadLand1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /distribution_of_homestead_land1s/1/edit
  def edit
  end

  # POST /distribution_of_homestead_land1s
  def create
    @distribution_of_homestead_land1 = DistributionOfHomesteadLand1.new(distribution_of_homestead_land1_params)

    if @distribution_of_homestead_land1.save
      redirect_to @distribution_of_homestead_land1, notice: 'Distribution of homestead land1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /distribution_of_homestead_land1s/1
  def update
    if @distribution_of_homestead_land1.update(distribution_of_homestead_land1_params)
      redirect_to @distribution_of_homestead_land1, notice: 'Distribution of homestead land1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /distribution_of_homestead_land1s/1
  def destroy
    @distribution_of_homestead_land1.destroy
    redirect_to distribution_of_homestead_land1s_url, notice: 'Distribution of homestead land1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_distribution_of_homestead_land1
      @distribution_of_homestead_land1 = DistributionOfHomesteadLand1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def distribution_of_homestead_land1_params
      params.require(:distribution_of_homestead_land1).permit(:Item, :Mahadalit, :SC, :ST, :BC_Schedule_1, :BC_Schedule_2, :Total, :Percentage_of_Mahadalit, :Percentage_of_SC, :Percentage_of_ST, :Percentage_of_BC_Schedule_1, :Percentage_of_BC_Schedule_2, :Total_Percentage)
    end
end
