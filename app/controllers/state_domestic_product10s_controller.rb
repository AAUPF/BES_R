class StateDomesticProduct10sController < ApplicationController
  before_action :set_state_domestic_product10, only: [:show, :edit, :update, :destroy]

  # GET /state_domestic_product10s
  def index
    @state_domestic_product10s = StateDomesticProduct10.all
  end

  # GET /state_domestic_product10s/1
  def show
  end

  # GET /state_domestic_product10s/new
  def new
    @state_domestic_product10 = StateDomesticProduct10.new
  end

def test

  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]

   fuel = params[:fuel]



   if rain_fall_type == "Number"
    ji = [:Petrol, :Diesel, :LPG]
     if year == "All"
      ji1 = [:Districts, "2015-16", "2016-17", "Avg of 2015-17"]
     else
      ji1 = [:Districts, :Petrol, :Diesel, :LPG, :Year]
     end
   
   else
    ji = [ :Percentage_Share_of_Petrol, :Percentage_Share_of_Diesel, :Percentage_Share_of_LPG,:Share_of_Population]
    if year == "All"
      ji1 = [:Districts, "2015-16", "2016-17", "Avg of 2015-17"]
     else
      ji1 = [:Districts, :Percentage_Share_of_Petrol, :Percentage_Share_of_Diesel, :Percentage_Share_of_LPG,:Share_of_Population , :Year]
     end
   end

  if rain_fall_type || views

     rain_fall_type = fuel

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = StateDomesticProduct10.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = StateDomesticProduct10.map(b,params[:year],rain_fall_type,views)
         else
          b = StateDomesticProduct10.map_search(params[:search],compare,year,rain_fall_type)
          a = StateDomesticProduct10.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = StateDomesticProduct10.search(params[:search],compare,year,rain_fall_type,fuel)
        a = StateDomesticProduct10.table(b,rain_fall_type,year,ji1,compare,fuel)
      else
        @StateDomesticProduct10s = StateDomesticProduct10.search(params[:search],compare,year,rain_fall_type,fuel)
        a = StateDomesticProduct10.query(@StateDomesticProduct10s,params[:year],rain_fall_type,views,ji,compare,fuel,search)
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
    StateDomesticProduct10.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /state_domestic_product10s/1/edit
  def edit
  end

  # POST /state_domestic_product10s
  def create
    @state_domestic_product10 = StateDomesticProduct10.new(state_domestic_product10_params)

    if @state_domestic_product10.save
      redirect_to @state_domestic_product10, notice: 'State domestic product10 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /state_domestic_product10s/1
  def update
    if @state_domestic_product10.update(state_domestic_product10_params)
      redirect_to @state_domestic_product10, notice: 'State domestic product10 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /state_domestic_product10s/1
  def destroy
    @state_domestic_product10.destroy
    redirect_to state_domestic_product10s_url, notice: 'State domestic product10 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state_domestic_product10
      @state_domestic_product10 = StateDomesticProduct10.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def state_domestic_product10_params
      params.require(:state_domestic_product10).permit(:Districts, :Share_of_Population, :Petrol, :Diesel, :LPG, :Year, :Percentage_Share_of_Petrol, :Percentage_Share_of_Diesel, :Percentage_Share_of_LPG)
    end
end
