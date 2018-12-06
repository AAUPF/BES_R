class SocialWelfare3sController < ApplicationController
  before_action :set_social_welfare3, only: [:show, :edit, :update, :destroy]

  # GET /social_welfare3s
  def index
    @social_welfare3s = SocialWelfare3.all
  end

  # GET /social_welfare3s/1
  def show
  end

  # GET /social_welfare3s/new
  def new
    @social_welfare3 = SocialWelfare3.new
  end

def test
  ji = [:Number_of_Beneficiaries, :Fund_Allocation]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search  = params[:search]
  legend = "Indicator"
  ji1 = [:Year, :Number_of_Beneficiaries, :Fund_Allocation, :Indicator]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = SocialWelfare3.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = SocialWelfare3.map(b,params[:year],rain_fall_type,views)
         else
          b = SocialWelfare3.map_search(params[:search],compare,year,rain_fall_type)
          a = SocialWelfare3.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = SocialWelfare3.search(params[:search],compare,year,rain_fall_type,legend)
        a = SocialWelfare3.table(b,rain_fall_type,year,ji1,compare)
      else
        @SocialWelfare3s = SocialWelfare3.search(params[:search],compare,year,rain_fall_type,legend)
        a = SocialWelfare3.query(@SocialWelfare3s,params[:year],rain_fall_type,views,ji,compare)
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
    SocialWelfare3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /social_welfare3s/1/edit
  def edit
  end

  # POST /social_welfare3s
  def create
    @social_welfare3 = SocialWelfare3.new(social_welfare3_params)

    if @social_welfare3.save
      redirect_to @social_welfare3, notice: 'Social welfare3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /social_welfare3s/1
  def update
    if @social_welfare3.update(social_welfare3_params)
      redirect_to @social_welfare3, notice: 'Social welfare3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /social_welfare3s/1
  def destroy
    @social_welfare3.destroy
    redirect_to social_welfare3s_url, notice: 'Social welfare3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_welfare3
      @social_welfare3 = SocialWelfare3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def social_welfare3_params
      params.require(:social_welfare3).permit(:Year, :Number_of_Beneficiaries, :Fund_Allocation, :Indicator)
    end
end
