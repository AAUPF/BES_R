class SectoralShare6sController < ApplicationController
  before_action :set_sectoral_share6, only: [:show, :edit, :update, :destroy]

  # GET /sectoral_share6s
  def index
    @sectoral_share6s = SectoralShare6.all
  end

  # GET /sectoral_share6s/1
  def show
  end

  # GET /sectoral_share6s/new
  def new
    @sectoral_share6 = SectoralShare6.new
  end

def test
  ji = [:No_of_PACS, :Deposits_Rs_crore, :Borrowings_Rs_crore, :Loans_and_Advances_Outstanding_for_Agriculture_Rs_crore, :Loans_and_Advances_Outstanding_for_Non_Agriculture_Rs_crore, :No_of_Societies_in_Profit, :Amount_of_Societies_in_Profit_Rs_lakh, :No_of_Societies_in_Loss, :Amount_of_Societies_in_Loss_Rs_lakh]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   ji1 = [:Districts, :No_of_PACS, :Deposits_Rs_crore, :Borrowings_Rs_crore, :Loans_and_Advances_Outstanding_for_Agriculture_Rs_crore, :Loans_and_Advances_Outstanding_for_Non_Agriculture_Rs_crore, :No_of_Societies_in_Profit, :Amount_of_Societies_in_Profit_Rs_lakh, :No_of_Societies_in_Loss, :Amount_of_Societies_in_Loss_Rs_lakh]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = SectoralShare6.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = SectoralShare6.map(b,params[:year],rain_fall_type,views)
         else
          b = SectoralShare6.map_search(params[:search],compare,year,rain_fall_type)
          a = SectoralShare6.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = SectoralShare6.search(params[:search],compare,year,rain_fall_type)
        a = SectoralShare6.table(b,rain_fall_type,year,ji1,compare)
      else
        @SectoralShare6s = SectoralShare6.search(params[:search],compare,year,rain_fall_type)
        a = SectoralShare6.query(@SectoralShare6s,params[:year],rain_fall_type,views,ji,compare,search)
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
    SectoralShare6.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /sectoral_share6s/1/edit
  def edit
  end

  # POST /sectoral_share6s
  def create
    @sectoral_share6 = SectoralShare6.new(sectoral_share6_params)

    if @sectoral_share6.save
      redirect_to @sectoral_share6, notice: 'Sectoral share6 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sectoral_share6s/1
  def update
    if @sectoral_share6.update(sectoral_share6_params)
      redirect_to @sectoral_share6, notice: 'Sectoral share6 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sectoral_share6s/1
  def destroy
    @sectoral_share6.destroy
    redirect_to sectoral_share6s_url, notice: 'Sectoral share6 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sectoral_share6
      @sectoral_share6 = SectoralShare6.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sectoral_share6_params
      params.require(:sectoral_share6).permit(:State, :No_of_PACS, :Deposits_Rs_crore, :Borrowings_Rs_crore, :Loans_and_Advances_Outstanding_for_Agriculture_Rs_crore, :Loans_and_Advances_Outstanding_for_Non_Agriculture_Rs_crore, :No_of_Societies_in_Profit, :Amount_of_Societies_in_Profit_Rs_lakh, :No_of_Societies_in_Loss, :Amount_of_Societies_in_Loss_Rs_lakh)
    end
end
