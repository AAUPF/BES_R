class Health21sController < ApplicationController
  before_action :set_health21, only: [:show, :edit, :update, :destroy]

  # GET /health21s
  def index
    @health21s = Health21.all
  end

  # GET /health21s/1
  def show
  end

  # GET /health21s/new
  def new
    @health21 = Health21.new
  end

def test
  ji = [:Acute_Diarrheal_Disease, :Bacillary_Dysentery, :Viral_Hepatitis, :Enteric_Fever, :Malaria, :PUO, :Acute_Respiratory_Infection, :Pneumonia, :Dogbite, :Other_State_Specific_Disease, :Unusual_Syndromes_Not_Captured]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1  = [:Districts, :Acute_Diarrheal_Disease, :Bacillary_Dysentery, :Viral_Hepatitis, :Enteric_Fever, :Malaria, :PUO, :Acute_Respiratory_Infection, :Pneumonia, :Dogbite, :Other_State_Specific_Disease, :Unusual_Syndromes_Not_Captured]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Health21.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Health21.map(b,params[:year],rain_fall_type,views)
         else
          b = Health21.map_search(params[:search],compare,year,rain_fall_type)
          a = Health21.map(b,rain_fall_type,year,ji,unit1)
         end
      elsif views == "Table"  
        b = Health21.search(params[:search],compare,year,rain_fall_type)
        a = Health21.table(b,rain_fall_type,year,ji1,compare)
      else
        @Health21s = Health21.search(params[:search],compare,year,rain_fall_type)
        a = Health21.query(@Health21s,params[:year],rain_fall_type,views,ji,compare)
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
    Health21.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /health21s/1/edit
  def edit
  end

  # POST /health21s
  def create
    @health21 = Health21.new(health21_params)

    if @health21.save
      redirect_to @health21, notice: 'Health21 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /health21s/1
  def update
    if @health21.update(health21_params)
      redirect_to @health21, notice: 'Health21 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /health21s/1
  def destroy
    @health21.destroy
    redirect_to health21s_url, notice: 'Health21 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health21
      @health21 = Health21.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def health21_params
      params.require(:health21).permit(:Districts, :Acute_Diarrheal_Disease, :Bacillary_Dysentery, :Viral_Hepatitis, :Enteric_Fever, :Malaria, :PUO, :Acute_Respiratory_Infection, :Pneumonia, :Dogbite, :Other_State_Specific_Disease, :Unusual_Syndromes_Not_Captured)
    end
end
