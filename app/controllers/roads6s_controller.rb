class Roads6sController < ApplicationController
  before_action :set_roads6, only: [:show, :edit, :update, :destroy]

  # GET /roads6s
  def index
    @roads6s = Roads6.all
  end

  # GET /roads6s/1
  def show
  end

  # GET /roads6s/new
  def new
    @roads6 = Roads6.new
  end

def test
  ji = [:Indicator, :NH_in_kms, :Expenditure_on_NH_Development, :Expenditure_on_NH_Maintenance, :Total_Expenditure_on_NH]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Indicator"
   remove = ""
  #  ji1 = [:Characteristics, :India, :Bihar, :Year]
   if year == "All"
    ji1 = [:Indicator,:"2010-11",:"2015-16"]
   else
    if rain_fall_type != "All"
      ji1 = [:Indicator, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:Indicator, :NH_in_kms, :Expenditure_on_NH_Development, :Expenditure_on_NH_Maintenance, :Total_Expenditure_on_NH, :Year]
    end
    
   end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Roads6.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Roads6.map(b,params[:year],rain_fall_type,views)
         else
          b = Roads6.map_search(params[:search],compare,year,rain_fall_type)
          a = Roads6.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Roads6.search(params[:search],compare,year,rain_fall_type,legend)
        a = Roads6.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @Roads6s = Roads6.search(params[:search],compare,year,rain_fall_type,legend)
        a = Roads6.query(@Roads6s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    Roads6.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /roads6s/1/edit
  def edit
  end

  # POST /roads6s
  def create
    @roads6 = Roads6.new(roads6_params)

    if @roads6.save
      redirect_to @roads6, notice: 'Roads6 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /roads6s/1
  def update
    if @roads6.update(roads6_params)
      redirect_to @roads6, notice: 'Roads6 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /roads6s/1
  def destroy
    @roads6.destroy
    redirect_to roads6s_url, notice: 'Roads6 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roads6
      @roads6 = Roads6.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def roads6_params
      params.require(:roads6).permit(:Indicator, :NH_in_kms, :Expenditure_on_NH_Development, :Expenditure_on_NH_Maintenance, :Total_Expenditure_on_NH, :Year)
    end
end
