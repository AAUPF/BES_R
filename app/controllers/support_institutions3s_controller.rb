class SupportInstitutions3sController < ApplicationController
  before_action :set_support_institutions3, only: [:show, :edit, :update, :destroy]

  # GET /support_institutions3s
  def index
    @support_institutions3s = SupportInstitutions3.all
  end

  # GET /support_institutions3s/1
  def show
  end

  # GET /support_institutions3s/new
  def new
    @support_institutions3 = SupportInstitutions3.new
  end

def test
  ji = [:Number_of_Working_Units, :Number_of_Working_Units_under_Construction, :Number_of_Units_which_have_not_started_Construction, :Number_of_Units_Closed_in_Cancellation_Process, :Total_existing_Units]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   legend = "Regional_Office"
   ji1 = [:Regional_Office, :Number_of_Working_Units, :Number_of_Working_Units_under_Construction, :Number_of_Units_which_have_not_started_Construction, :Number_of_Units_Closed_in_Cancellation_Process, :Total_existing_Units]
  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = SupportInstitutions3.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = SupportInstitutions3.map(b,params[:year],rain_fall_type,views)
         else
          b = SupportInstitutions3.map_search(params[:search],compare,year,rain_fall_type)
          a = SupportInstitutions3.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = SupportInstitutions3.search(params[:search],compare,year,rain_fall_type,legend)
        a = SupportInstitutions3.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @SupportInstitutions3s = SupportInstitutions3.search(params[:search],compare,year,rain_fall_type,legend)
        a = SupportInstitutions3.query(@SupportInstitutions3s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    SupportInstitutions3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /support_institutions3s/1/edit
  def edit
  end

  # POST /support_institutions3s
  def create
    @support_institutions3 = SupportInstitutions3.new(support_institutions3_params)

    if @support_institutions3.save
      redirect_to @support_institutions3, notice: 'Support institutions3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /support_institutions3s/1
  def update
    if @support_institutions3.update(support_institutions3_params)
      redirect_to @support_institutions3, notice: 'Support institutions3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /support_institutions3s/1
  def destroy
    @support_institutions3.destroy
    redirect_to support_institutions3s_url, notice: 'Support institutions3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_support_institutions3
      @support_institutions3 = SupportInstitutions3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def support_institutions3_params
      params.require(:support_institutions3).permit(:Regional_Office, :Number_of_Working_Units, :Number_of_Working_Units_under_Construction, :Number_of_Units_which_have_not_started_Construction, :Number_of_Units_Closed_in_Cancellation_Process, :Total_existing_Units)
    end
end
