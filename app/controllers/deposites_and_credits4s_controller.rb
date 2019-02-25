class DepositesAndCredits4sController < ApplicationController
  before_action :set_deposites_and_credits4, only: [:show, :edit, :update, :destroy]

  # GET /deposites_and_credits4s
  def index
    @deposites_and_credits4s = DepositesAndCredits4.all
  end

  # GET /deposites_and_credits4s/1
  def show
  end

  # GET /deposites_and_credits4s/new
  def new
    @deposites_and_credits4 = DepositesAndCredits4.new
  end

# def test
#   ji = [:State, :As_per_Sanction, :As_per_Utilization, :Year]
#   rain_fall_type = params[:rain_fall_type]
#    views  = params[:views]
#    year  = params[:year]
#    compare = params[:compare]

#   if rain_fall_type || views

#       if views == "Map View"
#         l =  rain_fall_type.gsub(" ","")           
#          if rain_fall_type  ==  "All"
#           b = DepositesAndCredits4.map_search("All",compare,year,rain_fall_type)
#           u = "Total"
#           a = DepositesAndCredits4.map(b,params[:year],rain_fall_type,views)
#          else
#           b = DepositesAndCredits4.map_search(params[:search],compare,year,rain_fall_type)
#           a = DepositesAndCredits4.map(b,rain_fall_type,year,ji)
#          end
#       elsif views == "Table"  
#         b = DepositesAndCredits4.search(params[:search],compare,year,rain_fall_type)
#         a = DepositesAndCredits4.table(b,rain_fall_type,year,ji1,compare)
#       else
#         @DepositesAndCredits4s = DepositesAndCredits4.search(params[:search],compare,year,rain_fall_type)
#         a = DepositesAndCredits4.query(@DepositesAndCredits4s,params[:year],rain_fall_type,views,ji,compare)
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
    ji1 = [:State, :As_per_Sanction, :As_per_Utilization, :Year]
   else
    if rain_fall_type != "All"
      ji1 = [:State, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:State, :As_per_Sanction, :As_per_Utilization, :Total, :Year]
    end
    
   end


  #  if year == "2016" || year == "2017"
  #   ji = [:As_per_Sanction, :As_per_Utilization,]
  #   # ji1 = [:State, :Rural, :Urban, :All, :Year]
  #   if rain_fall_type != "All"
  #     ji1 = [:State, "#{rain_fall_type}", :Year]
      
  #   else
  #     ji1 =[::As_per_Sanction, :As_per_Utilization, :Year]
  #   end
  #  else
  #   ji = [ :As_per_Sanction, :As_per_Utilization,]
  #   ji1 =[:State,:As_per_Sanction, :As_per_Utilization, :Year]

     
  #  end
  ji = [:As_per_Sanction, :As_per_Utilization]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = DepositesAndCredits4.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = DepositesAndCredits4.map(b,params[:year],rain_fall_type,views)
         else
          b = DepositesAndCredits4.map_search(params[:search],compare,year,rain_fall_type)
          a = DepositesAndCredits4.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = DepositesAndCredits4.search(params[:search],compare,year,rain_fall_type,legend)
        a = DepositesAndCredits4.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @Roads4s = DepositesAndCredits4.search(params[:search],compare,year,rain_fall_type,legend)
        a = DepositesAndCredits4.query(@Roads4s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    DepositesAndCredits4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /deposites_and_credits4s/1/edit
  def edit
  end

  # POST /deposites_and_credits4s
  def create
    @deposites_and_credits4 = DepositesAndCredits4.new(deposites_and_credits4_params)

    if @deposites_and_credits4.save
      redirect_to @deposites_and_credits4, notice: 'Deposites and credits4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /deposites_and_credits4s/1
  def update
    if @deposites_and_credits4.update(deposites_and_credits4_params)
      redirect_to @deposites_and_credits4, notice: 'Deposites and credits4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /deposites_and_credits4s/1
  def destroy
    @deposites_and_credits4.destroy
    redirect_to deposites_and_credits4s_url, notice: 'Deposites and credits4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deposites_and_credits4
      @deposites_and_credits4 = DepositesAndCredits4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def deposites_and_credits4_params
      params.require(:deposites_and_credits4).permit(:State, :As_per_Sanction, :As_per_Utilization, :Year)
    end
end
