class LabourResourceAndWelfare1sController < ApplicationController
  before_action :set_labour_resource_and_welfare1, only: [:show, :edit, :update, :destroy]

  # GET /labour_resource_and_welfare1s
  def index
    @labour_resource_and_welfare1s = LabourResourceAndWelfare1.all
  end

  # GET /labour_resource_and_welfare1s/1
  def show
  end

  # GET /labour_resource_and_welfare1s/new
  def new
    @labour_resource_and_welfare1 = LabourResourceAndWelfare1.new
  end

def test
  ji = [:Cultivators, :Agricultural_Labourers, :Household_Industry_Workers, :Other_Workers]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "State"
   ji1 = [:State, :Total_Number_of_Workers, :Cultivators, :Agricultural_Labourers, :Household_Industry_Workers, :Other_Workers, :Total]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = LabourResourceAndWelfare1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = LabourResourceAndWelfare1.map(b,params[:year],rain_fall_type,views)
         else
          b = LabourResourceAndWelfare1.map_search(params[:search],compare,year,rain_fall_type)
          a = LabourResourceAndWelfare1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = LabourResourceAndWelfare1.search(params[:search],compare,year,rain_fall_type,legend)
        a = LabourResourceAndWelfare1.table(b,rain_fall_type,year,ji1,compare)
      else
        @LabourResourceAndWelfare1s = LabourResourceAndWelfare1.search(params[:search],compare,year,rain_fall_type,legend)
        a = LabourResourceAndWelfare1.query(@LabourResourceAndWelfare1s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    LabourResourceAndWelfare1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /labour_resource_and_welfare1s/1/edit
  def edit
  end

  # POST /labour_resource_and_welfare1s
  def create
    @labour_resource_and_welfare1 = LabourResourceAndWelfare1.new(labour_resource_and_welfare1_params)

    if @labour_resource_and_welfare1.save
      redirect_to @labour_resource_and_welfare1, notice: 'Labour resource and welfare1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /labour_resource_and_welfare1s/1
  def update
    if @labour_resource_and_welfare1.update(labour_resource_and_welfare1_params)
      redirect_to @labour_resource_and_welfare1, notice: 'Labour resource and welfare1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /labour_resource_and_welfare1s/1
  def destroy
    @labour_resource_and_welfare1.destroy
    redirect_to labour_resource_and_welfare1s_url, notice: 'Labour resource and welfare1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_labour_resource_and_welfare1
      @labour_resource_and_welfare1 = LabourResourceAndWelfare1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def labour_resource_and_welfare1_params
      params.require(:labour_resource_and_welfare1).permit(:State, :Total_Number_of_Workers, :Cultivators, :Agricultural_Labourers, :Household_Industry_Workers, :Other_Workers, :Total)
    end
end
