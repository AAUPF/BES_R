class SocialWelfare1sController < ApplicationController
  before_action :set_social_welfare1, only: [:show, :edit, :update, :destroy]

  # GET /social_welfare1s
  def index
    @social_welfare1s = SocialWelfare1.all
  end

  # GET /social_welfare1s/1
  def show
  end

  # GET /social_welfare1s/new
  def new
    @social_welfare1 = SocialWelfare1.new
  end

def test
  ji = [:Number_of_Beneficiaries, :Term_Loan, :Bank_Loan, :Margin_Money, :Subsidy]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Scheme"
   ji1 = [:Scheme, :Number_of_Beneficiaries, :Term_Loan, :Bank_Loan, :Margin_Money, :Subsidy, :Total]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = SocialWelfare1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = SocialWelfare1.map(b,params[:year],rain_fall_type,views)
         else
          b = SocialWelfare1.map_search(params[:search],compare,year,rain_fall_type)
          a = SocialWelfare1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = SocialWelfare1.search(params[:search],compare,year,rain_fall_type,legend)
        a = SocialWelfare1.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @SocialWelfare1s = SocialWelfare1.search(params[:search],compare,year,rain_fall_type,legend)
        a = SocialWelfare1.query(@SocialWelfare1s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    SocialWelfare1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /social_welfare1s/1/edit
  def edit
  end

  # POST /social_welfare1s
  def create
    @social_welfare1 = SocialWelfare1.new(social_welfare1_params)

    if @social_welfare1.save
      redirect_to @social_welfare1, notice: 'Social welfare1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /social_welfare1s/1
  def update
    if @social_welfare1.update(social_welfare1_params)
      redirect_to @social_welfare1, notice: 'Social welfare1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /social_welfare1s/1
  def destroy
    @social_welfare1.destroy
    redirect_to social_welfare1s_url, notice: 'Social welfare1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_welfare1
      @social_welfare1 = SocialWelfare1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def social_welfare1_params
      params.require(:social_welfare1).permit(:Scheme, :Number_of_Beneficiaries, :Term_Loan, :Bank_Loan, :Margin_Money, :Subsidy, :Total)
    end
end
