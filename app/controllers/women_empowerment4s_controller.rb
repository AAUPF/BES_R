class WomenEmpowerment4sController < ApplicationController
  before_action :set_women_empowerment4, only: [:show, :edit, :update, :destroy]

  # GET /women_empowerment4s
  def index
    @women_empowerment4s = WomenEmpowerment4.all
  end

  # GET /women_empowerment4s/1
  def show
  end

  # GET /women_empowerment4s/new
  def new
    @women_empowerment4 = WomenEmpowerment4.new
  end

def test
  ji = [:Registered, :Disposed, :Percentage_of_Case_Disposed]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Types_of_Cases"
   remove = "Total"
  #  ji1 = [:Characteristics, :India, :Bihar, :Year]
   if year == "All"
    ji1 = [:Types_of_Cases,:"2015-16",:"2016-17"]
   else
    if rain_fall_type != "All"
      ji1 = [:Types_of_Cases, "#{rain_fall_type}", :Year]
      
    else
      ji1 = [:Types_of_Cases, :Registered, :Disposed, :Percentage_of_Case_Disposed, :Year]
    end
    
   end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = WomenEmpowerment4.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = WomenEmpowerment4.map(b,params[:year],rain_fall_type,views)
         else
          b = WomenEmpowerment4.map_search(params[:search],compare,year,rain_fall_type)
          a = WomenEmpowerment4.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = WomenEmpowerment4.search(params[:search],compare,year,rain_fall_type,legend)
        a = WomenEmpowerment4.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @WomenEmpowerment4s = WomenEmpowerment4.search(params[:search],compare,year,rain_fall_type,legend)
        a = WomenEmpowerment4.query(@WomenEmpowerment4s,params[:year],rain_fall_type,views,ji,compare,search,legend,remove)
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
    WomenEmpowerment4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /women_empowerment4s/1/edit
  def edit
  end

  # POST /women_empowerment4s
  def create
    @women_empowerment4 = WomenEmpowerment4.new(women_empowerment4_params)

    if @women_empowerment4.save
      redirect_to @women_empowerment4, notice: 'Women empowerment4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /women_empowerment4s/1
  def update
    if @women_empowerment4.update(women_empowerment4_params)
      redirect_to @women_empowerment4, notice: 'Women empowerment4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /women_empowerment4s/1
  def destroy
    @women_empowerment4.destroy
    redirect_to women_empowerment4s_url, notice: 'Women empowerment4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_women_empowerment4
      @women_empowerment4 = WomenEmpowerment4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def women_empowerment4_params
      params.require(:women_empowerment4).permit(:Types_of_Cases, :Registered, :Disposed, :Percentage_of_Case_Disposed, :Year)
    end
end
