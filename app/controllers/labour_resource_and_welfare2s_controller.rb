class LabourResourceAndWelfare2sController < ApplicationController
  before_action :set_labour_resource_and_welfare2, only: [:show, :edit, :update, :destroy]

  # GET /labour_resource_and_welfare2s
  def index
    @labour_resource_and_welfare2s = LabourResourceAndWelfare2.all
  end

  # GET /labour_resource_and_welfare2s/1
  def show
  end

  # GET /labour_resource_and_welfare2s/new
  def new
    @labour_resource_and_welfare2 = LabourResourceAndWelfare2.new
  end

def test
  ji = [:Budget_outlay, :Financial_Achievement]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Programme"
   remove = "Total"
  #  ji1 = [:Characteristics, :India, :Bihar, :Year]
   if year == "All"
    ji1 = [:Programme,:"2015-16",:"2016-17"]
   else
    if rain_fall_type != "All"
      ji1 = [:Programme, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:Programme, :Budget_outlay, :Financial_Achievement, :Year]
    end
    
   end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = LabourResourceAndWelfare2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = LabourResourceAndWelfare2.map(b,params[:year],rain_fall_type,views)
         else
          b = LabourResourceAndWelfare2.map_search(params[:search],compare,year,rain_fall_type)
          a = LabourResourceAndWelfare2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = LabourResourceAndWelfare2.search(params[:search],compare,year,rain_fall_type,legend)
        a = LabourResourceAndWelfare2.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @LabourResourceAndWelfare2s = LabourResourceAndWelfare2.search(params[:search],compare,year,rain_fall_type,legend)
        a = LabourResourceAndWelfare2.query(@LabourResourceAndWelfare2s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    LabourResourceAndWelfare2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /labour_resource_and_welfare2s/1/edit
  def edit
  end

  # POST /labour_resource_and_welfare2s
  def create
    @labour_resource_and_welfare2 = LabourResourceAndWelfare2.new(labour_resource_and_welfare2_params)

    if @labour_resource_and_welfare2.save
      redirect_to @labour_resource_and_welfare2, notice: 'Labour resource and welfare2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /labour_resource_and_welfare2s/1
  def update
    if @labour_resource_and_welfare2.update(labour_resource_and_welfare2_params)
      redirect_to @labour_resource_and_welfare2, notice: 'Labour resource and welfare2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /labour_resource_and_welfare2s/1
  def destroy
    @labour_resource_and_welfare2.destroy
    redirect_to labour_resource_and_welfare2s_url, notice: 'Labour resource and welfare2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_labour_resource_and_welfare2
      @labour_resource_and_welfare2 = LabourResourceAndWelfare2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def labour_resource_and_welfare2_params
      params.require(:labour_resource_and_welfare2).permit(:Programme, :Budget_outlay, :Financial_Achievement, :Year)
    end
end
