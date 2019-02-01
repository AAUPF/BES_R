class Roads4sController < ApplicationController
  before_action :set_roads4, only: [:show, :edit, :update, :destroy]

  # GET /roads4s
  def index
    @roads4s = Roads4.all
  end

  # GET /roads4s/1
  def show
  end

  # GET /roads4s/new
  def new
    @roads4 = Roads4.new
  end

def test
  ji = [:Total, :Paved, :Percent_of_Total, :Percent_of_paved]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Type_of_Road"
   remove = ""
   if year == "All"
    ji1 = [:Type_of_Road,:"2005",:"2010",:"2015"]
   else
    if rain_fall_type != "All"
      ji1 = [:Type_of_Road, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:Type_of_Road, :Total, :Paved, :Percent_of_Total, :Percent_of_paved, :Year]
    end
    
   end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Roads4.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Roads4.map(b,params[:year],rain_fall_type,views)
         else
          b = Roads4.map_search(params[:search],compare,year,rain_fall_type)
          a = Roads4.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Roads4.search(params[:search],compare,year,rain_fall_type,legend)
        a = Roads4.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @Roads4s = Roads4.search(params[:search],compare,year,rain_fall_type,legend)
        a = Roads4.query(@Roads4s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    Roads4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /roads4s/1/edit
  def edit
  end

  # POST /roads4s
  def create
    @roads4 = Roads4.new(roads4_params)

    if @roads4.save
      redirect_to @roads4, notice: 'Roads4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /roads4s/1
  def update
    if @roads4.update(roads4_params)
      redirect_to @roads4, notice: 'Roads4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /roads4s/1
  def destroy
    @roads4.destroy
    redirect_to roads4s_url, notice: 'Roads4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roads4
      @roads4 = Roads4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def roads4_params
      params.require(:roads4).permit(:Type_of_Road, :Total, :Paved, :Percent_of_Total, :Percent_of_paved, :Year)
    end
end
