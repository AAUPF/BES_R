class Irrigation5sController < ApplicationController
  before_action :set_irrigation5, only: [:show, :edit, :update, :destroy]

  # GET /irrigation5s
  def index
    @irrigation5s = Irrigation5.all
  end

  # GET /irrigation5s/1
  def show
  end

  # GET /irrigation5s/new
  def new
    @irrigation5 = Irrigation5.new
  end

# def test
#   ji = [:Ultimate_Potential, :Created_Potential, :Utilized_Potential]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]



#    ji1 = [:Irrigation_Sources, :Ultimate_Potential, :Created_Potential, :Utilized_Potential]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = Irrigation5.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = Irrigation5.map(b,params[:year],rain_fall_type,views)
#          else
#           b = Irrigation5.map_search(params[:search],compare,year,rain_fall_type)
#           a = Irrigation5.map(b,rain_fall_type,year,ji,unit1)
#          end
#       elsif views == "Table"  
#         b = Irrigation5.search(params[:search],compare,year,rain_fall_type)
#         a = Irrigation5.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @Irrigation5s = Irrigation5.search(params[:search],compare,year,rain_fall_type)
#         a = Irrigation5.query(@Irrigation5s,params[:year],rain_fall_type,views,ji,compare)
#       end
#       respond_to do |format|
#         format.html { render json:a }
#     end

#   else
#     respond_to do |format|
#       format.html { render json: "error"}
#   end
#   end

# end


def test
  ji = [:Ultimate_Potential, :Created_Potential, :Utilised_Potential]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   ji1 = [:Irrigation_Sources, :Ultimate_Potential, :Created_Potential, :Utilized_Potential]
    legend = "Irrigation_Sources"

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Irrigation5.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Irrigation5.map(b,params[:year],rain_fall_type,views)
         else
          b = Irrigation5.map_search(params[:search],compare,year,rain_fall_type)
          a = Irrigation5.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Irrigation5.search(params[:search],compare,year,rain_fall_type,legend)
        a = Irrigation5.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @Irrigation5s = Irrigation5.search(params[:search],compare,year,rain_fall_type,legend)
        a = Irrigation5.query(@Irrigation5s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    Irrigation5.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /irrigation5s/1/edit
  def edit
  end

  # POST /irrigation5s
  def create
    @irrigation5 = Irrigation5.new(irrigation5_params)

    if @irrigation5.save
      redirect_to @irrigation5, notice: 'Irrigation5 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /irrigation5s/1
  def update
    if @irrigation5.update(irrigation5_params)
      redirect_to @irrigation5, notice: 'Irrigation5 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /irrigation5s/1
  def destroy
    @irrigation5.destroy
    redirect_to irrigation5s_url, notice: 'Irrigation5 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_irrigation5
      @irrigation5 = Irrigation5.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def irrigation5_params
      params.require(:irrigation5).permit(:Irrigation_Sources, :Ultimate_Potential, :Created_Potential, :Utilized_Potential)
    end
end
