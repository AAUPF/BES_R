class DistributionOfHomesteadLand2sController < ApplicationController
  before_action :set_distribution_of_homestead_land2, only: [:show, :edit, :update, :destroy]

  # GET /distribution_of_homestead_land2s
  def index
    @distribution_of_homestead_land2s = DistributionOfHomesteadLand2.all

    respond_to do |format|
      format.html { render json:@distribution_of_homestead_land2s }
  end

  end

  # GET /distribution_of_homestead_land2s/1
  def show
  end

  # GET /distribution_of_homestead_land2s/new
  def new
    @distribution_of_homestead_land2 = DistributionOfHomesteadLand2.new
  end



def test
  ji = [:Sector, :'2005-06', :'2010-11', :Indicator]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   jip = [:'2005-06', :'2010-11']


   data = [
    "Marginal",
    "Small",
    "Semi Medium",
    "Medium",
    "Large",
    "Total",
  ]
  legend = "Size class"

search = rain_fall_type

   ji1 = [:Sector, :'2005-06', :'2010-11', :Indicator]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = DistributionOfHomesteadLand2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = DistributionOfHomesteadLand2.map(b,params[:year],rain_fall_type,views)
         else
          b = DistributionOfHomesteadLand2.map_search(params[:search],compare,year,rain_fall_type)
          a = DistributionOfHomesteadLand2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = DistributionOfHomesteadLand2.search(params[:search],compare,year,rain_fall_type)
        a = DistributionOfHomesteadLand2.new_table(b,rain_fall_type,year,ji1,compare, search, data,legend)
      else
        @DistributionOfHomesteadLand2s = DistributionOfHomesteadLand2.search(params[:search],compare,year,rain_fall_type)
        a = DistributionOfHomesteadLand2.query(@DistributionOfHomesteadLand2s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    DistributionOfHomesteadLand2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /distribution_of_homestead_land2s/1/edit
  def edit
  end

  # POST /distribution_of_homestead_land2s
  def create
    @distribution_of_homestead_land2 = DistributionOfHomesteadLand2.new(distribution_of_homestead_land2_params)

    if @distribution_of_homestead_land2.save
      redirect_to @distribution_of_homestead_land2, notice: 'Distribution of homestead land2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /distribution_of_homestead_land2s/1
  def update
    if @distribution_of_homestead_land2.update(distribution_of_homestead_land2_params)
      redirect_to @distribution_of_homestead_land2, notice: 'Distribution of homestead land2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /distribution_of_homestead_land2s/1
  def destroy
    @distribution_of_homestead_land2.destroy
    redirect_to distribution_of_homestead_land2s_url, notice: 'Distribution of homestead land2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_distribution_of_homestead_land2
      @distribution_of_homestead_land2 = DistributionOfHomesteadLand2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def distribution_of_homestead_land2_params
      params.require(:distribution_of_homestead_land2).permit(:Sector, :'2005-06', :'2010-11', :Indicator)
    end
end
