class Health7sController < ApplicationController
  before_action :set_health7, only: [:show, :edit, :update, :destroy]

  # GET /health7s
  def index
    @health7s = Health7.all
  end

  # GET /health7s/1
  def show
  end

  # GET /health7s/new
  def new
    @health7 = Health7.new
  end

def test
  ji = [:Regular_Total_Sanctioned_Posts, :Regular_Working, :Contractual_Sanctioned_Posts, :Contractual_Working]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Name_of_the_Post"
   remove = ""
  #  ji1 = [:Characteristics, :India, :Bihar, :Year]
   if year == "All"
    ji1 = [:Name_of_the_Post, :"2015", :"2016", :"2017"]
   else
    if rain_fall_type != "All"
      ji1 = [:Name_of_the_Post, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:Name_of_the_Post, :Regular_Total_Sanctioned_Posts, :Regular_Working, :Contractual_Sanctioned_Posts, :Contractual_Working, :Year]
    end
    
   end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Health7.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Health7.map(b,params[:year],rain_fall_type,views)
         else
          b = Health7.map_search(params[:search],compare,year,rain_fall_type)
          a = Health7.map(b,rain_fall_type,year,ji,unit1)
         end
      elsif views == "Table"  
        b = Health7.search(params[:search],compare,year,rain_fall_type,legend)
        a = Health7.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @Health7s = Health7.search(params[:search],compare,year,rain_fall_type,legend)
        a = Health7.query(@Health7s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    Health7.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /health7s/1/edit
  def edit
  end

  # POST /health7s
  def create
    @health7 = Health7.new(health7_params)

    if @health7.save
      redirect_to @health7, notice: 'Health7 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /health7s/1
  def update
    if @health7.update(health7_params)
      redirect_to @health7, notice: 'Health7 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /health7s/1
  def destroy
    @health7.destroy
    redirect_to health7s_url, notice: 'Health7 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health7
      @health7 = Health7.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def health7_params
      params.require(:health7).permit(:Name_of_the_Post, :Regular_Total_Sanctioned_Posts, :Regular_Working, :Contractual_Sanctioned_Posts, :Contractual_Working, :Year)
    end
end
