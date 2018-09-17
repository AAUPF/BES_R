class ResourceManagement9sController < ApplicationController
  before_action :set_resource_management9, only: [:show, :edit, :update, :destroy]

  # GET /resource_management9s
  def index
    @resource_management9s = ResourceManagement9.all
  end

  # GET /resource_management9s/1
  def show
  end

  # GET /resource_management9s/new
  def new
    @resource_management9 = ResourceManagement9.new
  end

def test
  ji = [:Budget_Estimate, :Actual_Receipts, :Variation_Excess_or_Shortfall_in_Amount, :Variation_Excess_or_Shortfall_in_Percentage]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   jip = [:Budget_Estimate, :Actual_Receipts, :Variation_Excess_or_Shortfall_in_Amount, :Variation_Excess_or_Shortfall_in_Percentage]
    ji1 = [:Sector, :Budget_Estimate, :Actual_Receipts, :Variation_Excess_or_Shortfall_in_Amount, :Variation_Excess_or_Shortfall_in_Percentage]
    compare = "None"
    if search == "Own Tax Revenue"
      if rain_fall_type == "None"
        data = [
          'Own Tax Revenue'
        ]
      else
        data = [
          "Taxes on Sales, Trade",
          "Taxes on Goods and Passengers",
          "State Excise",
          "Stamp and Registration Fees",
          "Taxes on Vehicles",
          "Land Revenue",
          "Taxes & Duties on Electricity",
          "Other Taxes and Duties on Commodities and Services",
          # "Total"
        ]
      end
  

    elsif search == 'Non Tax Revenue'

      if rain_fall_type == "None"
        data = [
          'Non Tax Revenue'
        ]
      else
        data = [
          "Non-Ferrous Mining and Metallurgical Industries",
          "Interest Receipts",
          "Miscellaneous General Services",
          "Other Administrative Services",
          "Police",
          "Major Irrigation",
          "Education, Sports, Arts and Culture",
          "Roads and Bridges",
          "Medical and Public Health",
          "Other Rural Development Programmes",
          "Social Security and Welfare",
          "Others",
          # "Total"
        ]
      end
    
    elsif search == 'All'
      data = [
        "Taxes on Sales, Trade",
          "Taxes on Goods and Passengers",
          "State Excise",
          "Stamp and Registration Fees",
          "Taxes on Vehicles",
          "Land Revenue",
          "Taxes & Duties on Electricity",
          "Other Taxes and Duties on Commodities and Services",
          "Non-Ferrous Mining and Metallurgical Industries",
          "Interest Receipts",
          "Miscellaneous General Services",
          "Other Administrative Services",
          "Police",
          "Major Irrigation",
          "Education, Sports, Arts and Culture",
          "Roads and Bridges",
          "Medical and Public Health",
          "Other Rural Development Programmes",
          "Social Security and Welfare",
          "Others",
      ]
    end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","") 
         if rain_fall_type  ==  "All"
          b = ResourceManagement9.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = ResourceManagement9.map(b,params[:year],rain_fall_type,views)
         else
          b = ResourceManagement9.map_search(params[:search],compare,year,rain_fall_type)
          a = ResourceManagement9.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = ResourceManagement9.search(params[:search],compare,year,rain_fall_type)
        a = ResourceManagement9.table(b, rain_fall_type, year, ji1, compare, search, data)
      else
        @ResourceManagement9s = ResourceManagement9.search(params[:search],compare,year,rain_fall_type)
        a = ResourceManagement9.query(@ResourceManagement9s,params[:year],rain_fall_type,views,ji, compare, search, data, jip)
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
    ResourceManagement9.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /resource_management9s/1/edit
  def edit
  end

  # POST /resource_management9s
  def create
    @resource_management9 = ResourceManagement9.new(resource_management9_params)

    if @resource_management9.save
      redirect_to @resource_management9, notice: 'Resource management9 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /resource_management9s/1
  def update
    if @resource_management9.update(resource_management9_params)
      redirect_to @resource_management9, notice: 'Resource management9 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /resource_management9s/1
  def destroy
    @resource_management9.destroy
    redirect_to resource_management9s_url, notice: 'Resource management9 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resource_management9
      @resource_management9 = ResourceManagement9.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def resource_management9_params
      params.require(:resource_management9).permit(:Revenue_Sources, :Budget_Estimate, :Actual_Receipts, :Variation_Excess_or_Shortfall_in_Amount, :Variation_Excess_or_Shortfall_in_Percentage)
    end
end
