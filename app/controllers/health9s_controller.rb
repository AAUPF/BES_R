class Health9sController < ApplicationController
  before_action :set_health9, only: [:show, :edit, :update, :destroy]

  # GET /health9s
  def index
    @health9s = Health9.all
  end

  # GET /health9s/1
  def show
  end

  # GET /health9s/new
  def new
    @health9 = Health9.new
  end

def test
  ji = [:Percentage_of_children_fully_immunized_NFHS_3_2005_06, :Percentage_of_children_fully_immunized_NFHS_4_2015_16, :Percentage_Point_Increase, :Rank_by_percentage_increase]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1 = [:State, :Percentage_of_children_fully_immunized_NFHS_3_2005_06, :Percentage_of_children_fully_immunized_NFHS_4_2015_16, :Percentage_Point_Increase, :Rank_by_percentage_increase]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Health9.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Health9.map(b,params[:year],rain_fall_type,views)
         else
          b = Health9.map_search(params[:search],compare,year,rain_fall_type)
          a = Health9.map(b,rain_fall_type,year,ji,unit1)
         end
      elsif views == "Table"  
        b = Health9.search(params[:search],compare,year,rain_fall_type)
        a = Health9.table(b,rain_fall_type,year,ji1,compare)
      else
        @Health9s = Health9.search(params[:search],compare,year,rain_fall_type)
        a = Health9.query(@Health9s,params[:year],rain_fall_type,views,ji,compare)
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
    Health9.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /health9s/1/edit
  def edit
  end

  # POST /health9s
  def create
    @health9 = Health9.new(health9_params)

    if @health9.save
      redirect_to @health9, notice: 'Health9 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /health9s/1
  def update
    if @health9.update(health9_params)
      redirect_to @health9, notice: 'Health9 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /health9s/1
  def destroy
    @health9.destroy
    redirect_to health9s_url, notice: 'Health9 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health9
      @health9 = Health9.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def health9_params
      params.require(:health9).permit(:State, :Percentage_of_children_fully_immunized_NFHS_3_2005_06, :Percentage_of_children_fully_immunized_NFHS_4_2015_16, :Percentage_Point_Increase, :Rank_by_percentage_increase)
    end
end
