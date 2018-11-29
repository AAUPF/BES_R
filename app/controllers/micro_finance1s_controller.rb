class MicroFinance1sController < ApplicationController
  before_action :set_micro_finance1, only: [:show, :edit, :update, :destroy]

  # GET /micro_finance1s
  def index
    @micro_finance1s = MicroFinance1.all
  end

  # GET /micro_finance1s/1
  def show
  end

  # GET /micro_finance1s/new
  def new
    @micro_finance1 = MicroFinance1.new
  end

def test
  ji = [:Number_of_SHGs_with_Bank_Linkage, :Savings_of_SHGs_with_Banks, :Bank_loans_disbursed_during_the_year]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
ji1 = [:Districts, :Number_of_SHGs_with_Bank_Linkage, :Savings_of_SHGs_with_Banks, :Bank_loans_disbursed_during_the_year]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = MicroFinance1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = MicroFinance1.map(b,params[:year],rain_fall_type,views)
         else
          b = MicroFinance1.map_search(params[:search],compare,year,rain_fall_type)
          a = MicroFinance1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = MicroFinance1.search(params[:search],compare,year,rain_fall_type)
        a = MicroFinance1.table(b,rain_fall_type,year,ji1,compare)
      else
        @MicroFinance1s = MicroFinance1.search(params[:search],compare,year,rain_fall_type)
        a = MicroFinance1.query(@MicroFinance1s,params[:year],rain_fall_type,views,ji,compare,search)
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
    MicroFinance1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /micro_finance1s/1/edit
  def edit
  end

  # POST /micro_finance1s
  def create
    @micro_finance1 = MicroFinance1.new(micro_finance1_params)

    if @micro_finance1.save
      redirect_to @micro_finance1, notice: 'Micro finance1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /micro_finance1s/1
  def update
    if @micro_finance1.update(micro_finance1_params)
      redirect_to @micro_finance1, notice: 'Micro finance1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /micro_finance1s/1
  def destroy
    @micro_finance1.destroy
    redirect_to micro_finance1s_url, notice: 'Micro finance1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_micro_finance1
      @micro_finance1 = MicroFinance1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def micro_finance1_params
      params.require(:micro_finance1).permit(:State, :Number_of_SHGs_with_Bank_Linkage, :Savings_of_SHGs_with_Banks, :Bank_loans_disbursed_during_the_year)
    end
end
