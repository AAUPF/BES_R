class Transmission2sController < ApplicationController
  before_action :set_transmission2, only: [:show, :edit, :update, :destroy]

  # GET /transmission2s
  def index
    @transmission2s = Transmission2.all
  end

  # GET /transmission2s/1
  def show
  end

  # GET /transmission2s/new
  def new
    @transmission2 = Transmission2.new
  end

# def test
#   ji = [:Year, :Nos_of_New_Grid_Sub_Stations, :New_Transmission_Lines_Circuit_km]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = Transmission2.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = Transmission2.map(b,params[:year],rain_fall_type,views)
#          else
#           b = Transmission2.map_search(params[:search],compare,year,rain_fall_type)
#           a = Transmission2.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = Transmission2.search(params[:search],compare,year,rain_fall_type)
#         a = Transmission2.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @Transmission2s = Transmission2.search(params[:search],compare,year,rain_fall_type)
#         a = Transmission2.query(@Transmission2s,params[:year],rain_fall_type,views,ji,compare)
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
   ji = [:Year, :Nos_of_New_Grid_Sub_Stations, :New_Transmission_Lines_Circuit_km]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Year"

if rain_fall_type != "All"
  ji1 = [:Year, "#{rain_fall_type}"]
else
  ji1 = [:Year, :Nos_of_New_Grid_Sub_Stations, :New_Transmission_Lines_Circuit_km]
end
  if rain_fall_type || views

       b = Transmission2.search(params[:search],compare,year,rain_fall_type,legend)
        a = Transmission2.table(b,rain_fall_type,year,ji1,compare,legend)
     
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
    Transmission2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /transmission2s/1/edit
  def edit
  end

  # POST /transmission2s
  def create
    @transmission2 = Transmission2.new(transmission2_params)

    if @transmission2.save
      redirect_to @transmission2, notice: 'Transmission2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /transmission2s/1
  def update
    if @transmission2.update(transmission2_params)
      redirect_to @transmission2, notice: 'Transmission2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /transmission2s/1
  def destroy
    @transmission2.destroy
    redirect_to transmission2s_url, notice: 'Transmission2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transmission2
      @transmission2 = Transmission2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def transmission2_params
      params.require(:transmission2).permit(:Year, :Nos_of_New_Grid_Sub_Stations, :New_Transmission_Lines_Circuit_km)
    end
end
