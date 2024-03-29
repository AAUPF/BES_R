class DemographicProfile2sController < ApplicationController
  before_action :set_demographic_profile2, only: [:show, :edit, :update, :destroy]

  # GET /demographic_profile2s
  def index
    @demographic_profile2s = DemographicProfile2.all
  end

  # GET /demographic_profile2s/1
  def show
  end

  # GET /demographic_profile2s/new
  def new
    @demographic_profile2 = DemographicProfile2.new
  end

# def test
#   ji = [:Population, :Sex_Ratio_Overall, :Sex_Ratio_Child, :Density, :Urbanisation, :Decadal_Growth, :Percentage_Population]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]
#    search = params[:search]
# ji1 = [:Districts, :Population, :Sex_Ratio_Overall, :Sex_Ratio_Child, :Density, :Urbanisation, :Decadal_Growth, :Year, :Percentage_Population]
# if year == "All"
#   ji1 = [:Districts, :"2001", :"2011"]
# else
#   if rain_fall_type == "Population"
#     ji1 = [:Districts, :Population, :Year]
#   elsif rain_fall_type == "Sex_Ratio_Overall"
#     ji1 = [:Districts, :Sex_Ratio_Overall, :Year]
#   elsif rain_fall_type == "Sex_Ratio_Child"
#     ji1 = [:Districts, :Sex_Ratio_Child, :Year]
#   elsif rain_fall_type == "Density"
#     ji1 = [:Districts, :Density, :Year]
#   elsif rain_fall_type == "Urbanisation"
#     ji1 = [:Districts, :Urbanisation, :Year]
#   elsif rain_fall_type == "Decadal_Growth"
#     ji1 = [:Districts, :Decadal_Growth, :Year]
#   elsif rain_fall_type == "Percentage_Population"
#     ji1 = [:Districts, :Percentage_Population, :Year]
#   else
#     ji1 = [:Districts, :Population, :Sex_Ratio_Overall, :Sex_Ratio_Child, :Density, :Urbanisation, :Decadal_Growth, :Year, :Percentage_Population]
#   end
# end

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = DemographicProfile2.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = DemographicProfile2.map(b,params[:year],rain_fall_type,views)
#          else
#           b = DemographicProfile2.map_search(params[:search],compare,year,rain_fall_type)
#           a = DemographicProfile2.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = DemographicProfile2.search(params[:search],compare,year,rain_fall_type)
#         a = DemographicProfile2.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @DemographicProfile2s = DemographicProfile2.search(params[:search],compare,year,rain_fall_type)
#         a = DemographicProfile2.query(@DemographicProfile2s,params[:year],rain_fall_type,views,ji,compare,search)
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
  ji = [:Population, :Sex_Ratio_Overall, :Sex_Ratio_Child, :Density, :Urbanisation, :Decadal_Growth, :Percentage_Population]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Districts"
   remove = "Bihar"
  #  ji1 = [:Characteristics, :India, :Bihar, :Year]
   if year == "All"
    ji1 = [:Districts, :"2001", :"2011"]
   else
    if rain_fall_type != "All"
      ji1 = [:Districts, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:Districts, :Population, :Sex_Ratio_Overall, :Sex_Ratio_Child, :Density, :Urbanisation, :Decadal_Growth, :Year, :Percentage_Population]
    end
    
   end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = DemographicProfile2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = DemographicProfile2.map(b,params[:year],rain_fall_type,views)
         else
          b = DemographicProfile2.map_search(params[:search],compare,year,rain_fall_type)
          a = DemographicProfile2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = DemographicProfile2.search(params[:search],compare,year,rain_fall_type,legend)
        a = DemographicProfile2.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @DemographicProfile2s = DemographicProfile2.search(params[:search],compare,year,rain_fall_type,legend)
        a = DemographicProfile2.query(@DemographicProfile2s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    DemographicProfile2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /demographic_profile2s/1/edit
  def edit
  end

  # POST /demographic_profile2s
  def create
    @demographic_profile2 = DemographicProfile2.new(demographic_profile2_params)

    if @demographic_profile2.save
      redirect_to @demographic_profile2, notice: 'Demographic profile2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /demographic_profile2s/1
  def update
    if @demographic_profile2.update(demographic_profile2_params)
      redirect_to @demographic_profile2, notice: 'Demographic profile2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /demographic_profile2s/1
  def destroy
    @demographic_profile2.destroy
    redirect_to demographic_profile2s_url, notice: 'Demographic profile2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demographic_profile2
      @demographic_profile2 = DemographicProfile2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def demographic_profile2_params
      params.require(:demographic_profile2).permit(:Districts, :Population, :Sex_Ratio_Overall, :Sex_Ratio_Child, :Density, :Urbanisation, :Decadal_Growth, :Year, :Percentage_Population)
    end
end
