class Roads8sController < ApplicationController
  before_action :set_roads8, only: [:show, :edit, :update, :destroy]

  # GET /roads8s
  def index
    @roads8s = Roads8.all
  end

  # GET /roads8s/1
  def show
  end

  # GET /roads8s/new
  def new
    @roads8 = Roads8.new
  end

def test
  ji = [:Agency_wise_Road_Bridge, :Length_in_kms, :Remarks]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Agency_wise_Road_Bridge"
   if rain_fall_type != "All"
    ji1 = [:Agency_wise_Road_Bridge, "#{rain_fall_type}"]
  else
    ji1 = [:Agency_wise_Road_Bridge, :Length_in_kms, :Remarks]
  end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Roads8.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Roads8.map(b,params[:year],rain_fall_type,views)
         else
          b = Roads8.map_search(params[:search],compare,year,rain_fall_type)
          a = Roads8.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Roads8.search(params[:search],compare,year,rain_fall_type,legend)
        a = Roads8.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @Roads8s = Roads8.search(params[:search],compare,year,rain_fall_type)
        a = Roads8.query(@Roads8s,params[:year],rain_fall_type,views,ji,compare)
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
    Roads8.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /roads8s/1/edit
  def edit
  end

  # POST /roads8s
  def create
    @roads8 = Roads8.new(roads8_params)

    if @roads8.save
      redirect_to @roads8, notice: 'Roads8 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /roads8s/1
  def update
    if @roads8.update(roads8_params)
      redirect_to @roads8, notice: 'Roads8 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /roads8s/1
  def destroy
    @roads8.destroy
    redirect_to roads8s_url, notice: 'Roads8 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roads8
      @roads8 = Roads8.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def roads8_params
      params.require(:roads8).permit(:Agency_wise_Road_Bridge, :Length_in_kms, :Remarks)
    end
end
