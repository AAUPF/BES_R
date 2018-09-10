class SupportInstitutions2sController < ApplicationController
  before_action :set_support_institutions2, only: [:show, :edit, :update, :destroy]

  # GET /support_institutions2s
  def index
    @support_institutions2s = SupportInstitutions2.all
  end

  # GET /support_institutions2s/1
  def show
  end

  # GET /support_institutions2s/new
  def new
    @support_institutions2 = SupportInstitutions2.new
  end

def test
  ji = [:Amount_Allotted_Rs_lakh, :Amount_spent_Rs_lakh, :Number_of_Entrepreneurs_benefited, :Amount_Spent_in_Percentage]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
ji1 = [:Year, :Amount_Allotted_Rs_lakh, :Amount_spent_Rs_lakh, :Number_of_Entrepreneurs_benefited, :Amount_Spent_in_Percentage]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = SupportInstitutions2.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = SupportInstitutions2.map(b,params[:year],rain_fall_type,views)
         else
          b = SupportInstitutions2.map_search(params[:search],compare,year,rain_fall_type)
          a = SupportInstitutions2.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = SupportInstitutions2.search(params[:search],compare,year,rain_fall_type)
        a = SupportInstitutions2.table(b,rain_fall_type,year,ji1,compare)
      else
        @SupportInstitutions2s = SupportInstitutions2.search(params[:search],compare,year,rain_fall_type)
        a = SupportInstitutions2.query(@SupportInstitutions2s,params[:year],rain_fall_type,views,ji,compare)
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
    SupportInstitutions2.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /support_institutions2s/1/edit
  def edit
  end

  # POST /support_institutions2s
  def create
    @support_institutions2 = SupportInstitutions2.new(support_institutions2_params)

    if @support_institutions2.save
      redirect_to @support_institutions2, notice: 'Support institutions2 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /support_institutions2s/1
  def update
    if @support_institutions2.update(support_institutions2_params)
      redirect_to @support_institutions2, notice: 'Support institutions2 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /support_institutions2s/1
  def destroy
    @support_institutions2.destroy
    redirect_to support_institutions2s_url, notice: 'Support institutions2 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_support_institutions2
      @support_institutions2 = SupportInstitutions2.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def support_institutions2_params
      params.require(:support_institutions2).permit(:Year, :Amount_Allotted_Rs_lakh, :Amount_spent_Rs_lakh, :Number_of_Entrepreneurs_benefited, :Amount_Spent_in_Percentage)
    end
end
