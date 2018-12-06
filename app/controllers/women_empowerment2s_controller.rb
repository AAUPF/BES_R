class WomenEmpowerment2sController < ApplicationController
  before_action :set_women_empowerment2, only: [:show, :edit, :update, :destroy]

  # GET /women_empowerment2s
  def index
    @women_empowerment2s = WomenEmpowerment2.all
  end

  # GET /women_empowerment2s/1
  def show
  end

  # GET /women_empowerment2s/new
  def new
    @women_empowerment2 = WomenEmpowerment2.new
  end

# def test
#   ji = [:Sector, :Total_Budget, :Under_Category_I, :Under_Category_II, :Total, :Year]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = WomenEmpowerment2.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = WomenEmpowerment2.map(b,params[:year],rain_fall_type,views)
#          else
#           b = WomenEmpowerment2.map_search(params[:search],compare,year,rain_fall_type)
#           a = WomenEmpowerment2.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = WomenEmpowerment2.search(params[:search],compare,year,rain_fall_type)
#         a = WomenEmpowerment2.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @WomenEmpowerment2s = WomenEmpowerment2.search(params[:search],compare,year,rain_fall_type)
#         a = WomenEmpowerment2.query(@WomenEmpowerment2s,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [:Total_Budget, :Under_Category_I, :Under_Category_II, :Total]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Sector"
   remove = ""
  #  ji1 = [:Characteristics, :India, :Bihar, :Year]
   if year == "All"
    ji1 = [:Sector,:"2016-17",:"2017-18 (BE)"]
   else
    if rain_fall_type != "All"
      ji1 = [:Sector, "#{rain_fall_type}", :Year]
      
    else
      ji1 =[:Sector, :Total_Budget, :Under_Category_I, :Under_Category_II, :Total, :Year]
    end
    
   end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = WomenEmpowerment2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = WomenEmpowerment2.map(b,params[:year],rain_fall_type,views)
         else
          b = WomenEmpowerment2.map_search(params[:search],compare,year,rain_fall_type)
          a = WomenEmpowerment2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = WomenEmpowerment2.search(params[:search],compare,year,rain_fall_type,legend)
        a = WomenEmpowerment2.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @WomenEmpowerment2s = WomenEmpowerment2.search(params[:search],compare,year,rain_fall_type,legend)
        a = WomenEmpowerment2.query(@WomenEmpowerment2s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    WomenEmpowerment2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /women_empowerment2s/1/edit
  def edit
  end

  # POST /women_empowerment2s
  def create
    @women_empowerment2 = WomenEmpowerment2.new(women_empowerment2_params)

    if @women_empowerment2.save
      redirect_to @women_empowerment2, notice: 'Women empowerment2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /women_empowerment2s/1
  def update
    if @women_empowerment2.update(women_empowerment2_params)
      redirect_to @women_empowerment2, notice: 'Women empowerment2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /women_empowerment2s/1
  def destroy
    @women_empowerment2.destroy
    redirect_to women_empowerment2s_url, notice: 'Women empowerment2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_women_empowerment2
      @women_empowerment2 = WomenEmpowerment2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def women_empowerment2_params
      params.require(:women_empowerment2).permit(:Sector, :Total_Budget, :Under_Category_I, :Under_Category_II, :Total, :Year)
    end
end
