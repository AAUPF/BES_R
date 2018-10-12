class NonAgroBasedIndustries5sController < ApplicationController
  before_action :set_non_agro_based_industries5, only: [:show, :edit, :update, :destroy]

  # GET /non_agro_based_industries5s
  def index
    @non_agro_based_industries5s = NonAgroBasedIndustries5.all
  end

  # GET /non_agro_based_industries5s/1
  def show
  end

  # GET /non_agro_based_industries5s/new
  def new
    @non_agro_based_industries5 = NonAgroBasedIndustries5.new
  end

# def test
#   ji = [:Agencies, :Indicators, :KVIC, :KVI_Board, :DIC, :Total, :Year, :KVIC_Percentage, :KVI_Board_Percentage, :DIC_Percentage, :Total_Percentage]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = NonAgroBasedIndustries5.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = NonAgroBasedIndustries5.map(b,params[:year],rain_fall_type,views)
#          else
#           b = NonAgroBasedIndustries5.map_search(params[:search],compare,year,rain_fall_type)
#           a = NonAgroBasedIndustries5.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = NonAgroBasedIndustries5.search(params[:search],compare,year,rain_fall_type)
#         a = NonAgroBasedIndustries5.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @NonAgroBasedIndustries5s = NonAgroBasedIndustries5.search(params[:search],compare,year,rain_fall_type)
#         a = NonAgroBasedIndustries5.query(@NonAgroBasedIndustries5s,params[:year],rain_fall_type,views,ji,compare)
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
  ji = [:KVIC, :KVI_Board, :DIC, :Total]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Agencies"
   remove = ""
  #  ji1 = [:Characteristics, :India, :Bihar, :Year]
   if year == "All"
    ji1 = [:Agencies,:"2014-15",:"2015-16",:"2016-17"]
   else
    if rain_fall_type != "All"
      ji1 = [:Agencies, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:Agencies, :KVIC, :KVI_Board, :DIC, :Total, :Year]
    end
    
   end
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = NonAgroBasedIndustries5.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = NonAgroBasedIndustries5.map(b,params[:year],rain_fall_type,views)
         else
          b = NonAgroBasedIndustries5.map_search(params[:search],compare,year,rain_fall_type)
          a = NonAgroBasedIndustries5.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = NonAgroBasedIndustries5.search(params[:search],compare,year,rain_fall_type,legend)
        a = NonAgroBasedIndustries5.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @NonAgroBasedIndustries5s = NonAgroBasedIndustries5.search(params[:search],compare,year,rain_fall_type,legend)
        a = NonAgroBasedIndustries5.query(@NonAgroBasedIndustries5s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    NonAgroBasedIndustries5.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /non_agro_based_industries5s/1/edit
  def edit
  end

  # POST /non_agro_based_industries5s
  def create
    @non_agro_based_industries5 = NonAgroBasedIndustries5.new(non_agro_based_industries5_params)

    if @non_agro_based_industries5.save
      redirect_to @non_agro_based_industries5, notice: 'Non agro based industries5 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /non_agro_based_industries5s/1
  def update
    if @non_agro_based_industries5.update(non_agro_based_industries5_params)
      redirect_to @non_agro_based_industries5, notice: 'Non agro based industries5 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /non_agro_based_industries5s/1
  def destroy
    @non_agro_based_industries5.destroy
    redirect_to non_agro_based_industries5s_url, notice: 'Non agro based industries5 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_non_agro_based_industries5
      @non_agro_based_industries5 = NonAgroBasedIndustries5.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def non_agro_based_industries5_params
      params.require(:non_agro_based_industries5).permit(:Agencies, :Indicators, :KVIC, :KVI_Board, :DIC, :Total, :Year, :KVIC_Percentage, :KVI_Board_Percentage, :DIC_Percentage, :Total_Percentage)
    end
end
