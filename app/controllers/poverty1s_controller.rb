class Poverty1sController < ApplicationController
  before_action :set_poverty1, only: [:show, :edit, :update, :destroy]

  # GET /poverty1s
  def index
    @poverty1s = Poverty1.all

    respond_to do |format|
      format.html { render json: @poverty1s }
  end
  end

  # GET /poverty1s/1
  def show
  end

  # GET /poverty1s/new
  def new
    @poverty1 = Poverty1.new
  end

# def test
#   ji = [:Indicator, :Sector, :'1993-94', :'1999-00', :'2004-05', :'2011-12', :Reduction_in_Poverty_between_2004_05_and_2011_12, :Poverty_Line_2004_05, :Poverty_Line_2011_12]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = Poverty1.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = Poverty1.map(b,params[:year],rain_fall_type,views)
#          else
#           b = Poverty1.map_search(params[:search],compare,year,rain_fall_type)
#           a = Poverty1.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = Poverty1.search(params[:search],compare,year,rain_fall_type)
#         a = Poverty1.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @Poverty1s = Poverty1.search(params[:search],compare,year,rain_fall_type)
#         a = Poverty1.query(@Poverty1s,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [:Indicator, :Sector, :'1993-94', :'1999-00', :'2004-05', :'2011-12', :Reduction_in_Poverty_between_2004_05_and_2011_12, :Poverty_Line_2004_05, :Poverty_Line_2011_12]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   jip = [:'1993-94', :'1999-00', :'2004-05', :'2011-12', :Reduction_in_Poverty_between_2004_05_and_2011_12, :Poverty_Line_2004_05, :Poverty_Line_2011_12]


   data = [
    "Rural",
    "Urban",
    "Total"
  ]
  legend = "Area"

search = rain_fall_type

   ji1 = [:Indicator, :Sector, :'1993-94', :'1999-00', :'2004-05', :'2011-12', :Reduction_in_Poverty_between_2004_05_and_2011_12, :Poverty_Line_2004_05, :Poverty_Line_2011_12]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Poverty1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Poverty1.map(b,params[:year],rain_fall_type,views)
         else
          b = Poverty1.map_search(params[:search],compare,year,rain_fall_type)
          a = Poverty1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Poverty1.search(params[:search],compare,year,rain_fall_type)
        a = Poverty1.new_table(b,rain_fall_type,year,ji1,compare, search, data,legend)
      else
        @Poverty1s = Poverty1.search(params[:search],compare,year,rain_fall_type)
        a = Poverty1.query(@Poverty1s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    Poverty1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /poverty1s/1/edit
  def edit
  end

  # POST /poverty1s
  def create
    @poverty1 = Poverty1.new(poverty1_params)

    if @poverty1.save
      redirect_to @poverty1, notice: 'Poverty1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /poverty1s/1
  def update
    if @poverty1.update(poverty1_params)
      redirect_to @poverty1, notice: 'Poverty1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /poverty1s/1
  def destroy
    @poverty1.destroy
    redirect_to poverty1s_url, notice: 'Poverty1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poverty1
      @poverty1 = Poverty1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def poverty1_params
      params.require(:poverty1).permit(:Indicator, :Sector, :'1993-94', :'1999-00', :'2004-05', :'2011-12', :Reduction_in_Poverty_between_2004_05_and_2011_12, :Poverty_Line_2004_05, :Poverty_Line_2011_12)
    end
end
