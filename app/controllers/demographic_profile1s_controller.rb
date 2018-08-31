class DemographicProfile1sController < ApplicationController
  before_action :set_demographic_profile1, only: [:show, :edit, :update, :destroy]

  # GET /demographic_profile1s
  def index
    @demographic_profile1s = DemographicProfile1.all
  end

  # GET /demographic_profile1s/1
  def show
  end

  # GET /demographic_profile1s/new
  def new
    @demographic_profile1 = DemographicProfile1.new
  end

def test
  ji = [:Bihar, :India]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
# ji1 = [:Demographic_Indicator, :Bihar, :India, :Year]
if year == "All"
  ji1 = [:Demographic_Indicator, :"2001", :"2011"]
else
  if rain_fall_type == "Bihar"
    ji1 = [:Demographic_Indicator, :Bihar, :Year]
  elsif rain_fall_type == "India"
    ji1 = [:Demographic_Indicator, :India, :Year]
  else
  ji1 = [:Demographic_Indicator, :Bihar, :India, :Year]
end
end
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = DemographicProfile1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = DemographicProfile1.map(b,params[:year],rain_fall_type,views)
         else
          b = DemographicProfile1.map_search(params[:search],compare,year,rain_fall_type)
          a = DemographicProfile1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = DemographicProfile1.search(params[:search],compare,year,rain_fall_type)
        a = DemographicProfile1.table(b,rain_fall_type,year,ji1,compare)
      else
        @DemographicProfile1s = DemographicProfile1.search(params[:search],compare,year,rain_fall_type)
        a = DemographicProfile1.query(@DemographicProfile1s,params[:year],rain_fall_type,views,ji,compare,search)
      end


    # l =  @DemographicProfile1s.group_by{ |data| data[:Year]}
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
    DemographicProfile1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /demographic_profile1s/1/edit
  def edit
  end

  # POST /demographic_profile1s
  def create
    @demographic_profile1 = DemographicProfile1.new(demographic_profile1_params)

    if @demographic_profile1.save
      redirect_to @demographic_profile1, notice: 'Demographic profile1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /demographic_profile1s/1
  def update
    if @demographic_profile1.update(demographic_profile1_params)
      redirect_to @demographic_profile1, notice: 'Demographic profile1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /demographic_profile1s/1
  def destroy
    @demographic_profile1.destroy
    redirect_to demographic_profile1s_url, notice: 'Demographic profile1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demographic_profile1
      @demographic_profile1 = DemographicProfile1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def demographic_profile1_params
      params.require(:demographic_profile1).permit(:Demographic_Indicator, :Bihar, :India, :Year)
    end
end
