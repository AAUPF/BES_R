class Ict2sController < ApplicationController
  before_action :set_ict2, only: [:show, :edit, :update, :destroy]

  # GET /ict2s
  def index
    @ict2s = Ict2.all
  end

  # GET /ict2s/1
  def show
  end

  # GET /ict2s/new
  def new
    @ict2 = Ict2.new
  end

# def test
#   ji = [:State, :Rural, :Urban, :All, :Year]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = Ict2.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = Ict2.map(b,params[:year],rain_fall_type,views)
#          else
#           b = Ict2.map_search(params[:search],compare,year,rain_fall_type)
#           a = Ict2.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = Ict2.search(params[:search],compare,year,rain_fall_type)
#         a = Ict2.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @Ict2s = Ict2.search(params[:search],compare,year,rain_fall_type)
#         a = Ict2.query(@Ict2s,params[:year],rain_fall_type,views,ji,compare)
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
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "State"
   remove = ""
   if year == "All"
    ji1 = [:State,:"2005",:"2010",:"2015"]
   else
    if rain_fall_type != "All"
      ji1 = [:State, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:State, :Rural, :Urban, :All, :Year]
    end
    
   end


   if year == "2016" || year == "2017"
    ji = [ :Rural, :Urban, :All]
    ji1 = [:State, :Rural, :Urban, :All, :Year]
   else
    ji = [:All]
    ji1 = [:State,:All, :Year]

     
   end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Ict2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Ict2.map(b,params[:year],rain_fall_type,views)
         else
          b = Ict2.map_search(params[:search],compare,year,rain_fall_type)
          a = Ict2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Ict2.search(params[:search],compare,year,rain_fall_type,legend)
        a = Ict2.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @Roads4s = Ict2.search(params[:search],compare,year,rain_fall_type,legend)
        a = Ict2.query(@Roads4s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    Ict2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /ict2s/1/edit
  def edit
  end

  # POST /ict2s
  def create
    @ict2 = Ict2.new(ict2_params)

    if @ict2.save
      redirect_to @ict2, notice: 'Ict2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /ict2s/1
  def update
    if @ict2.update(ict2_params)
      redirect_to @ict2, notice: 'Ict2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /ict2s/1
  def destroy
    @ict2.destroy
    redirect_to ict2s_url, notice: 'Ict2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ict2
      @ict2 = Ict2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ict2_params
      params.require(:ict2).permit(:State, :Rural, :Urban, :All, :Year)
    end
end
