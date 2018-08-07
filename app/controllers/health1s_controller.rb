class Health1sController < ApplicationController
  before_action :set_health1, only: [:show, :edit, :update, :destroy]

  # GET /health1s
  def index
    @health1s = Health1.all
  end

  # GET /health1s/1
  def show
  end

  # GET /health1s/new
  def new
    @health1 = Health1.new
  end

def test
  ji = [:Total_Expense_on_Social_Services_India, :Total_Expense_on_Social_Services_Bihar, :Total_Expense_India, :Total_Expense_Bihar, :Percentage_share_of_Social_Services_in_Total_Expenditure_India, :Percentage_share_of_Social_Services_in_Total_Expenditure_Bihar, :Per_Capita_Expenditure_on_Social_Services_India, :Per_Capita_Expenditure_on_Social_Services_Bihar]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1 = [:Year, :Total_Expense_on_Social_Services_India, :Total_Expense_on_Social_Services_Bihar, :Total_Expense_India, :Total_Expense_Bihar, :Percentage_share_of_Social_Services_in_Total_Expenditure_India, :Percentage_share_of_Social_Services_in_Total_Expenditure_Bihar, :Per_Capita_Expenditure_on_Social_Services_India, :Per_Capita_Expenditure_on_Social_Services_Bihar]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Health1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Health1.map(b,params[:year],rain_fall_type,views)
         else
          b = Health1.map_search(params[:search],compare,year,rain_fall_type)
          a = Health1.map(b,rain_fall_type,year,ji,unit1)
         end
      elsif views == "Table"  
        b = Health1.search(params[:search],compare,year,rain_fall_type)
        a = Health1.table(b,rain_fall_type,year,ji1,compare)
      else
        @Health1s = Health1.search(params[:search],compare,year,rain_fall_type)
        a = Health1.query(@Health1s,params[:year],rain_fall_type,views,ji,compare)
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
    Health1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /health1s/1/edit
  def edit
  end

  # POST /health1s
  def create
    @health1 = Health1.new(health1_params)

    if @health1.save
      redirect_to @health1, notice: 'Health1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /health1s/1
  def update
    if @health1.update(health1_params)
      redirect_to @health1, notice: 'Health1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /health1s/1
  def destroy
    @health1.destroy
    redirect_to health1s_url, notice: 'Health1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health1
      @health1 = Health1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def health1_params
      params.require(:health1).permit(:Year, :Total_Expense_on_Social_Services_India, :Total_Expense_on_Social_Services_Bihar, :Total_Expense_India, :Total_Expense_Bihar, :Percentage_share_of_Social_Services_in_Total_Expenditure_India, :Percentage_share_of_Social_Services_in_Total_Expenditure_Bihar, :Per_Capita_Expenditure_on_Social_Services_India, :Per_Capita_Expenditure_on_Social_Services_Bihar)
    end
end
