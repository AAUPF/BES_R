class SocialWelfare2sController < ApplicationController
  before_action :set_social_welfare2, only: [:show, :edit, :update, :destroy]

  # GET /social_welfare2s
  def index
    @social_welfare2s = SocialWelfare2.all
  end

  # GET /social_welfare2s/1
  def show
  end

  # GET /social_welfare2s/new
  def new
    @social_welfare2 = SocialWelfare2.new
  end

def test
  ji = [:Total_Outlay, :Total_Approved_Amount, :Total_Expenditure, :Utilisation_percentage]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Year"
   ji1 = [:Year, :Total_Outlay, :Total_Approved_Amount, :Total_Expenditure, :Utilisation_percentage]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = SocialWelfare2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = SocialWelfare2.map(b,params[:year],rain_fall_type,views)
         else
          b = SocialWelfare2.map_search(params[:search],compare,year,rain_fall_type)
          a = SocialWelfare2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = SocialWelfare2.search(params[:search],compare,year,rain_fall_type,legend)
        a = SocialWelfare2.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @SocialWelfare2s = SocialWelfare2.search(params[:search],compare,year,rain_fall_type,legend)
        a = SocialWelfare2.query(@SocialWelfare2s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    SocialWelfare2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /social_welfare2s/1/edit
  def edit
  end

  # POST /social_welfare2s
  def create
    @social_welfare2 = SocialWelfare2.new(social_welfare2_params)

    if @social_welfare2.save
      redirect_to @social_welfare2, notice: 'Social welfare2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /social_welfare2s/1
  def update
    if @social_welfare2.update(social_welfare2_params)
      redirect_to @social_welfare2, notice: 'Social welfare2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /social_welfare2s/1
  def destroy
    @social_welfare2.destroy
    redirect_to social_welfare2s_url, notice: 'Social welfare2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_welfare2
      @social_welfare2 = SocialWelfare2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def social_welfare2_params
      params.require(:social_welfare2).permit(:Year, :Total_Outlay, :Total_Approved_Amount, :Total_Expenditure, :Utilisation_percentage)
    end
end
