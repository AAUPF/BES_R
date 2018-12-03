class SocialWelfaresController < ApplicationController
  before_action :set_social_welfare, only: [:show, :edit, :update, :destroy]

  # GET /social_welfares
  def index
    @social_welfares = SocialWelfare.all
  end

  # GET /social_welfares/1
  def show
  end

  # GET /social_welfares/new
  def new
    @social_welfare = SocialWelfare.new
  end

# def test
#   ji = [:Sector, :Budget, :Actual_Expenditure, :Utilisation_Percentage, :Year]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = SocialWelfare.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = SocialWelfare.map(b,params[:year],rain_fall_type,views)
#          else
#           b = SocialWelfare.map_search(params[:search],compare,year,rain_fall_type)
#           a = SocialWelfare.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = SocialWelfare.search(params[:search],compare,year,rain_fall_type)
#         a = SocialWelfare.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @SocialWelfares = SocialWelfare.search(params[:search],compare,year,rain_fall_type)
#         a = SocialWelfare.query(@SocialWelfares,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [:Budget, :Actual_Expenditure, :Utilisation_Percentage]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Sector"
   remove = ""
  #  ji1 = [:Characteristics, :India, :Bihar, :Year]
   if year == "All"
    ji1 = [:Sector,:"2015-16",:"2016-17"]
   else
    if rain_fall_type != "All"
      ji1 = [:Sector, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:Sector, :Budget, :Actual_Expenditure, :Utilisation_Percentage, :Year]
    end
    
   end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = SocialWelfare.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = SocialWelfare.map(b,params[:year],rain_fall_type,views)
         else
          b = SocialWelfare.map_search(params[:search],compare,year,rain_fall_type)
          a = SocialWelfare.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = SocialWelfare.search(params[:search],compare,year,rain_fall_type,legend)
        a = SocialWelfare.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @SocialWelfares = SocialWelfare.search(params[:search],compare,year,rain_fall_type,legend)
        a = SocialWelfare.query(@SocialWelfares,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    SocialWelfare.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /social_welfares/1/edit
  def edit
  end

  # POST /social_welfares
  def create
    @social_welfare = SocialWelfare.new(social_welfare_params)

    if @social_welfare.save
      redirect_to @social_welfare, notice: 'Social welfare was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /social_welfares/1
  def update
    if @social_welfare.update(social_welfare_params)
      redirect_to @social_welfare, notice: 'Social welfare was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /social_welfares/1
  def destroy
    @social_welfare.destroy
    redirect_to social_welfares_url, notice: 'Social welfare was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_welfare
      @social_welfare = SocialWelfare.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def social_welfare_params
      params.require(:social_welfare).permit(:Sector, :Budget, :Actual_Expenditure, :Utilisation_Percentage, :Year)
    end
end
