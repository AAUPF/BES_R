class WomenEmpowerment3sController < ApplicationController
  before_action :set_women_empowerment3, only: [:show, :edit, :update, :destroy]

  # GET /women_empowerment3s
  def index
    @women_empowerment3s = WomenEmpowerment3.all
  end

  # GET /women_empowerment3s/1
  def show
  end

  # GET /women_empowerment3s/new
  def new
    @women_empowerment3 = WomenEmpowerment3.new
  end

def test
  ji = [:Lakshmibai_Social_Security_Pension_Scheme, :Nari_Shakti_Yojana, :Mukhyamantri_Kanya_Vivah_Yojana, :Mukhyamantri_Kanya_Suraksha_Yojana]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Year"
   ji1 = [:Year, :Lakshmibai_Social_Security_Pension_Scheme, :Nari_Shakti_Yojana, :Mukhyamantri_Kanya_Vivah_Yojana, :Mukhyamantri_Kanya_Suraksha_Yojana, :Total]

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = WomenEmpowerment3.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = WomenEmpowerment3.map(b,params[:year],rain_fall_type,views)
         else
          b = WomenEmpowerment3.map_search(params[:search],compare,year,rain_fall_type)
          a = WomenEmpowerment3.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = WomenEmpowerment3.search(params[:search],compare,year,rain_fall_type,legend)
        a = WomenEmpowerment3.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @WomenEmpowerment3s = WomenEmpowerment3.search(params[:search],compare,year,rain_fall_type,legend)
        a = WomenEmpowerment3.query(@WomenEmpowerment3s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    WomenEmpowerment3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /women_empowerment3s/1/edit
  def edit
  end

  # POST /women_empowerment3s
  def create
    @women_empowerment3 = WomenEmpowerment3.new(women_empowerment3_params)

    if @women_empowerment3.save
      redirect_to @women_empowerment3, notice: 'Women empowerment3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /women_empowerment3s/1
  def update
    if @women_empowerment3.update(women_empowerment3_params)
      redirect_to @women_empowerment3, notice: 'Women empowerment3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /women_empowerment3s/1
  def destroy
    @women_empowerment3.destroy
    redirect_to women_empowerment3s_url, notice: 'Women empowerment3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_women_empowerment3
      @women_empowerment3 = WomenEmpowerment3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def women_empowerment3_params
      params.require(:women_empowerment3).permit(:Year, :Lakshmibai_Social_Security_Pension_Scheme, :Nari_Shakti_Yojana, :Mukhyamantri_Kanya_Vivah_Yojana, :Mukhyamantri_Kanya_Suraksha_Yojana, :Total)
    end
end
