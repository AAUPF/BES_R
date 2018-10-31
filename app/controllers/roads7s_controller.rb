class Roads7sController < ApplicationController
  before_action :set_roads7, only: [:show, :edit, :update, :destroy]

  # GET /roads7s
  def index
    @roads7s = Roads7.all
  end

  # GET /roads7s/1
  def show
  end

  # GET /roads7s/new
  def new
    @roads7 = Roads7.new
  end

def test
  ji = [:Project, :Length_in_kms, :Remarks]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Project"
   
   if rain_fall_type != "All"
    ji1 = [:Project, "#{rain_fall_type}"]
  else
    ji1 = [:Project, :Length_in_kms, :Remarks]
  end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Roads7.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Roads7.map(b,params[:year],rain_fall_type,views)
         else
          b = Roads7.map_search(params[:search],compare,year,rain_fall_type)
          a = Roads7.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Roads7.search(params[:search],compare,year,rain_fall_type,legend)
        a = Roads7.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @Roads7s = Roads7.search(params[:search],compare,year,rain_fall_type)
        a = Roads7.query(@Roads7s,params[:year],rain_fall_type,views,ji,compare)
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
    Roads7.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /roads7s/1/edit
  def edit
  end

  # POST /roads7s
  def create
    @roads7 = Roads7.new(roads7_params)

    if @roads7.save
      redirect_to @roads7, notice: 'Roads7 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /roads7s/1
  def update
    if @roads7.update(roads7_params)
      redirect_to @roads7, notice: 'Roads7 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /roads7s/1
  def destroy
    @roads7.destroy
    redirect_to roads7s_url, notice: 'Roads7 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roads7
      @roads7 = Roads7.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def roads7_params
      params.require(:roads7).permit(:Project, :Length_in_kms, :Remarks)
    end
end
