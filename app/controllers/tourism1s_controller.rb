class Tourism1sController < ApplicationController
  before_action :set_tourism1, only: [:show, :edit, :update, :destroy]

  # GET /tourism1s
  def index
    @tourism1s = Tourism1.all
  end

  # GET /tourism1s/1
  def show
  end

  # GET /tourism1s/new
  def new
    @tourism1 = Tourism1.new
  end

def test
  ji = [:Budget_Estimate, :Expenditure, :Expenditure_as_percentage_of_Budget]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1 = [:Year, :Budget_Estimate, :Expenditure, :Expenditure_as_percentage_of_Budget]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Tourism1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Tourism1.map(b,params[:year],rain_fall_type,views)
         else
          b = Tourism1.map_search(params[:search],compare,year,rain_fall_type)
          a = Tourism1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Tourism1.search(params[:search],compare,year,rain_fall_type)
        a = Tourism1.table(b,rain_fall_type,year,ji1,compare)
      else
        @Tourism1s = Tourism1.search(params[:search],compare,year,rain_fall_type)
        a = Tourism1.query(@Tourism1s,params[:year],rain_fall_type,views,ji,compare)
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
    Tourism1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /tourism1s/1/edit
  def edit
  end

  # POST /tourism1s
  def create
    @tourism1 = Tourism1.new(tourism1_params)

    if @tourism1.save
      redirect_to @tourism1, notice: 'Tourism1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tourism1s/1
  def update
    if @tourism1.update(tourism1_params)
      redirect_to @tourism1, notice: 'Tourism1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tourism1s/1
  def destroy
    @tourism1.destroy
    redirect_to tourism1s_url, notice: 'Tourism1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tourism1
      @tourism1 = Tourism1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tourism1_params
      params.require(:tourism1).permit(:Year, :Budget_Estimate, :Expenditure, :Expenditure_as_percentage_of_Budget)
    end
end
