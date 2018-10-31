class Irrigation7sController < ApplicationController
  before_action :set_irrigation7, only: [:show, :edit, :update, :destroy]

  # GET /irrigation7s
  def index
    @irrigation7s = Irrigation7.all
  end

  # GET /irrigation7s/1
  def show
  end

  # GET /irrigation7s/new
  def new
    @irrigation7 = Irrigation7.new
  end

def test
  ji = [:Scheme, :Financial_Requirement_in_Rs_crores, :Creation_of_Additional_Irrigation_Potential_in_lakh_ha, :Restoration_of_Lost_irrigation_Potential_in_lakh_ha]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Scheme"
   
   if rain_fall_type != "All"
    ji1 = [:Scheme, "#{rain_fall_type}"]
  else
    ji1 = [:Scheme, :Financial_Requirement_in_Rs_crores, :Creation_of_Additional_Irrigation_Potential_in_lakh_ha, :Restoration_of_Lost_irrigation_Potential_in_lakh_ha]
  end
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Irrigation7.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Irrigation7.map(b,params[:year],rain_fall_type,views)
         else
          b = Irrigation7.map_search(params[:search],compare,year,rain_fall_type)
          a = Irrigation7.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Irrigation7.search(params[:search],compare,year,rain_fall_type,legend)
        a = Irrigation7.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @Irrigation7s = Irrigation7.search(params[:search],compare,year,rain_fall_type)
        a = Irrigation7.query(@Irrigation7s,params[:year],rain_fall_type,views,ji,compare)
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
    Irrigation7.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /irrigation7s/1/edit
  def edit
  end

  # POST /irrigation7s
  def create
    @irrigation7 = Irrigation7.new(irrigation7_params)

    if @irrigation7.save
      redirect_to @irrigation7, notice: 'Irrigation7 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /irrigation7s/1
  def update
    if @irrigation7.update(irrigation7_params)
      redirect_to @irrigation7, notice: 'Irrigation7 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /irrigation7s/1
  def destroy
    @irrigation7.destroy
    redirect_to irrigation7s_url, notice: 'Irrigation7 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_irrigation7
      @irrigation7 = Irrigation7.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def irrigation7_params
      params.require(:irrigation7).permit(:Scheme, :Financial_Requirement_in_Rs_crores, :Creation_of_Additional_Irrigation_Potential_in_lakh_ha, :Restoration_of_Lost_irrigation_Potential_in_lakh_ha)
    end
end
