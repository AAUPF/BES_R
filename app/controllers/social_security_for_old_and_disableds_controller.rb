class SocialSecurityForOldAndDisabledsController < ApplicationController
  before_action :set_social_security_for_old_and_disabled, only: [:show, :edit, :update, :destroy]

  # GET /social_security_for_old_and_disableds
  def index
    @social_security_for_old_and_disableds = SocialSecurityForOldAndDisabled.all
  end

  # GET /social_security_for_old_and_disableds/1
  def show
  end

  # GET /social_security_for_old_and_disableds/new
  def new
    @social_security_for_old_and_disabled = SocialSecurityForOldAndDisabled.new
  end

# def test
#   ji = [:Name_of_the_Scheme, :Budget_Outlay, :Expenditure, :Physical_Achievement, :Year]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = SocialSecurityForOldAndDisabled.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = SocialSecurityForOldAndDisabled.map(b,params[:year],rain_fall_type,views)
#          else
#           b = SocialSecurityForOldAndDisabled.map_search(params[:search],compare,year,rain_fall_type)
#           a = SocialSecurityForOldAndDisabled.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = SocialSecurityForOldAndDisabled.search(params[:search],compare,year,rain_fall_type)
#         a = SocialSecurityForOldAndDisabled.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @SocialSecurityForOldAndDisableds = SocialSecurityForOldAndDisabled.search(params[:search],compare,year,rain_fall_type)
#         a = SocialSecurityForOldAndDisabled.query(@SocialSecurityForOldAndDisableds,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [:Budget_Outlay, :Expenditure, :Physical_Achievement]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Name_of_the_Scheme"
   remove = ""
  #  ji1 = [:Characteristics, :India, :Bihar, :Year]
   if year == "All"
    ji1 = [:Sector,:"2015-16",:"2016-17"]
   else
    if rain_fall_type != "All"
      ji1 = [:Sector, "#{rain_fall_type}", :Year]
      
    else
      ji1 =[:Name_of_the_Scheme, :Budget_Outlay, :Expenditure, :Physical_Achievement, :Year]
    end
    
   end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = SocialSecurityForOldAndDisabled.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = SocialSecurityForOldAndDisabled.map(b,params[:year],rain_fall_type,views)
         else
          b = SocialSecurityForOldAndDisabled.map_search(params[:search],compare,year,rain_fall_type)
          a = SocialSecurityForOldAndDisabled.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = SocialSecurityForOldAndDisabled.search(params[:search],compare,year,rain_fall_type,legend)
        a = SocialSecurityForOldAndDisabled.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @SocialSecurityForOldAndDisableds = SocialSecurityForOldAndDisabled.search(params[:search],compare,year,rain_fall_type,legend)
        a = SocialSecurityForOldAndDisabled.query(@SocialSecurityForOldAndDisableds,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    SocialSecurityForOldAndDisabled.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /social_security_for_old_and_disableds/1/edit
  def edit
  end

  # POST /social_security_for_old_and_disableds
  def create
    @social_security_for_old_and_disabled = SocialSecurityForOldAndDisabled.new(social_security_for_old_and_disabled_params)

    if @social_security_for_old_and_disabled.save
      redirect_to @social_security_for_old_and_disabled, notice: 'Social security for old and disabled was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /social_security_for_old_and_disableds/1
  def update
    if @social_security_for_old_and_disabled.update(social_security_for_old_and_disabled_params)
      redirect_to @social_security_for_old_and_disabled, notice: 'Social security for old and disabled was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /social_security_for_old_and_disableds/1
  def destroy
    @social_security_for_old_and_disabled.destroy
    redirect_to social_security_for_old_and_disableds_url, notice: 'Social security for old and disabled was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_security_for_old_and_disabled
      @social_security_for_old_and_disabled = SocialSecurityForOldAndDisabled.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def social_security_for_old_and_disabled_params
      params.require(:social_security_for_old_and_disabled).permit(:Name_of_the_Scheme, :Budget_Outlay, :Expenditure, :Physical_Achievement, :Year)
    end
end
