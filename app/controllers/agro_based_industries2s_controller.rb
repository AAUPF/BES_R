class AgroBasedIndustries2sController < ApplicationController
  before_action :set_agro_based_industries2, only: [:show, :edit, :update, :destroy]

  # GET /agro_based_industries2s
  def index
    @agro_based_industries2s = AgroBasedIndustries2.all
  end

  # GET /agro_based_industries2s/1
  def show
  end

  # GET /agro_based_industries2s/new
  def new
    @agro_based_industries2 = AgroBasedIndustries2.new
  end

def test
  ji = [:Organised_Societies, :Working_Societies, :Registered_Societies]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   ji1 = [:Location_of_Union_or_Project, :Organised_Societies, :Working_Societies, :Registered_Societies, :Year]
   if year == "All"
    ji1 = [:Location_of_Union_or_Project,:"2015-16",:"2016-17"]
   else
    if rain_fall_type == "Organised_Societies"
      ji1 = [:Location_of_Union_or_Project, :Organised_Societies, :Year]
      elsif rain_fall_type == "Working_Societies"
        ji1 = [:Location_of_Union_or_Project, :Working_Societies, :Year]
      elsif rain_fall_type == "Registered_Societies"
        ji1 = [:Location_of_Union_or_Project, :Registered_Societies, :Year]
    else
      ji1 = [:Location_of_Union_or_Project, :Organised_Societies, :Working_Societies, :Registered_Societies, :Year]
    end
    
   end
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = AgroBasedIndustries2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = AgroBasedIndustries2.map(b,params[:year],rain_fall_type,views)
         else
          b = AgroBasedIndustries2.map_search(params[:search],compare,year,rain_fall_type)
          a = AgroBasedIndustries2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = AgroBasedIndustries2.search(params[:search],compare,year,rain_fall_type)
        a = AgroBasedIndustries2.table(b,rain_fall_type,year,ji1,compare)
      else
        @AgroBasedIndustries2s = AgroBasedIndustries2.search(params[:search],compare,year,rain_fall_type)
        a = AgroBasedIndustries2.query(@AgroBasedIndustries2s,params[:year],rain_fall_type,views,ji,compare,search)
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
    AgroBasedIndustries2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /agro_based_industries2s/1/edit
  def edit
  end

  # POST /agro_based_industries2s
  def create
    @agro_based_industries2 = AgroBasedIndustries2.new(agro_based_industries2_params)

    if @agro_based_industries2.save
      redirect_to @agro_based_industries2, notice: 'Agro based industries2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /agro_based_industries2s/1
  def update
    if @agro_based_industries2.update(agro_based_industries2_params)
      redirect_to @agro_based_industries2, notice: 'Agro based industries2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /agro_based_industries2s/1
  def destroy
    @agro_based_industries2.destroy
    redirect_to agro_based_industries2s_url, notice: 'Agro based industries2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agro_based_industries2
      @agro_based_industries2 = AgroBasedIndustries2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def agro_based_industries2_params
      params.require(:agro_based_industries2).permit(:Location_of_Union_or_Project, :Organised_Societies, :Working_Societies, :Registered_Societies, :Year)
    end
end
