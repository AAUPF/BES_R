class BiharStartUpPoliciesController < ApplicationController
  before_action :set_bihar_start_up_policy, only: [:show, :edit, :update, :destroy]

  # GET /bihar_start_up_policies
  def index
    @bihar_start_up_policies = BiharStartUpPolicy.all
  end

  # GET /bihar_start_up_policies/1
  def show
  end

  # GET /bihar_start_up_policies/new
  def new
    @bihar_start_up_policy = BiharStartUpPolicy.new
  end

def test
  ji = [:Number_of_Startups]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   ji1 = [:Incubators, :Number_of_Startups]
legend = "Incubators"

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = BiharStartUpPolicy.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = BiharStartUpPolicy.map(b,params[:year],rain_fall_type,views)
         else
          b = BiharStartUpPolicy.map_search(params[:search],compare,year,rain_fall_type)
          a = BiharStartUpPolicy.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = BiharStartUpPolicy.search(params[:search],compare,year,rain_fall_type,legend)
        a = BiharStartUpPolicy.table(b,rain_fall_type,year,ji1,compare,search,legend)
      else
        @BiharStartUpPolicys = BiharStartUpPolicy.search(params[:search],compare,year,rain_fall_type,legend)
        a = BiharStartUpPolicy.query(@BiharStartUpPolicys,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    BiharStartUpPolicy.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /bihar_start_up_policies/1/edit
  def edit
  end

  # POST /bihar_start_up_policies
  def create
    @bihar_start_up_policy = BiharStartUpPolicy.new(bihar_start_up_policy_params)

    if @bihar_start_up_policy.save
      redirect_to @bihar_start_up_policy, notice: 'Bihar start up policy was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /bihar_start_up_policies/1
  def update
    if @bihar_start_up_policy.update(bihar_start_up_policy_params)
      redirect_to @bihar_start_up_policy, notice: 'Bihar start up policy was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /bihar_start_up_policies/1
  def destroy
    @bihar_start_up_policy.destroy
    redirect_to bihar_start_up_policies_url, notice: 'Bihar start up policy was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bihar_start_up_policy
      @bihar_start_up_policy = BiharStartUpPolicy.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bihar_start_up_policy_params
      params.require(:bihar_start_up_policy).permit(:Incubators, :Number_of_Startups)
    end
end
