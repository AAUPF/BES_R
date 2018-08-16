class Irrigation4sController < ApplicationController
  before_action :set_irrigation4, only: [:show, :edit, :update, :destroy]

  # GET /irrigation4s
  def index
    @irrigation4s = Irrigation4.all
  end

  # GET /irrigation4s/1
  def show
  end

  # GET /irrigation4s/new
  def new
    @irrigation4 = Irrigation4.new
  end

def test
  ji = [:Management_of_irrigation_System_Transferred, :Societies_ready_for_transfer_of_system, :Applied_for_Registration, :Under_the_process_of_motivation]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   ji1 = [:Status, :Management_of_irrigation_System_Transferred, :Societies_ready_for_transfer_of_system, :Applied_for_Registration, :Under_the_process_of_motivation, :Total]


  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Irrigation4.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Irrigation4.map(b,params[:year],rain_fall_type,views)
         else
          b = Irrigation4.map_search(params[:search],compare,year,rain_fall_type)
          a = Irrigation4.map(b,rain_fall_type,year,ji,unit1)
         end
      elsif views == "Table"  
        b = Irrigation4.search(params[:search],compare,year,rain_fall_type)
        a = Irrigation4.table(b,rain_fall_type,year,ji1,compare)
      else
        @Irrigation4s = Irrigation4.search(params[:search],compare,year,rain_fall_type)
         a = Irrigation4.query(@Irrigation4s,params[:year],rain_fall_type,views,ji,compare)
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
    Irrigation4.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /irrigation4s/1/edit
  def edit
  end

  # POST /irrigation4s
  def create
    @irrigation4 = Irrigation4.new(irrigation4_params)

    if @irrigation4.save
      redirect_to @irrigation4, notice: 'Irrigation4 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /irrigation4s/1
  def update
    if @irrigation4.update(irrigation4_params)
      redirect_to @irrigation4, notice: 'Irrigation4 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /irrigation4s/1
  def destroy
    @irrigation4.destroy
    redirect_to irrigation4s_url, notice: 'Irrigation4 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_irrigation4
      @irrigation4 = Irrigation4.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def irrigation4_params
      params.require(:irrigation4).permit(:Status, :Management_of_irrigation_System_Transferred, :Societies_ready_for_transfer_of_system, :Applied_for_Registration, :Under_the_process_of_motivation, :Total)
    end
end
