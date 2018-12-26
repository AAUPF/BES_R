class Health13sController < ApplicationController
  before_action :set_health13, only: [:show, :edit, :update, :destroy]

  # GET /health13s
  def index
    @health13s = Health13.all
  end

  # GET /health13s/1
  def show
  end

  # GET /health13s/new
  def new
    @health13 = Health13.new
  end

def test
  ji = [:No_of_Sanctioned_Posts, :Working, :Percentage_of_Vacant_Post]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Posts"
   remove = ""
  if year == "All"
    ji1 = [:Posts,:"2012",:"2013",:"2014",:"2015",:"2016"]
   else
    if rain_fall_type != "All"
      ji1 = [:Posts, "#{rain_fall_type}", :Year]
    else
      ji1 = [:Posts, :No_of_Sanctioned_Posts, :Working, :Percentage_of_Vacant_Post, :Year]
    end
  end
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Health13.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Health13.map(b,params[:year],rain_fall_type,views)
         else
          b = Health13.map_search(params[:search],compare,year,rain_fall_type)
          a = Health13.map(b,rain_fall_type,year,ji,unit1)
         end
      elsif views == "Table"  
        b = Health13.search(params[:search],compare,year,rain_fall_type,legend)
        a = Health13.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @Health13s = Health13.search(params[:search],compare,year,rain_fall_type,legend)
        a = Health13.query(@Health13s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    Health13.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /health13s/1/edit
  def edit
  end

  # POST /health13s
  def create
    @health13 = Health13.new(health13_params)

    if @health13.save
      redirect_to @health13, notice: 'Health13 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /health13s/1
  def update
    if @health13.update(health13_params)
      redirect_to @health13, notice: 'Health13 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /health13s/1
  def destroy
    @health13.destroy
    redirect_to health13s_url, notice: 'Health13 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health13
      @health13 = Health13.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def health13_params
      params.require(:health13).permit(:Posts, :No_of_Sanctioned_Posts, :Working, :Percentage_of_Vacant_Post, :Year)
    end
end
