class Ict3sController < ApplicationController
  before_action :set_ict3, only: [:show, :edit, :update, :destroy]

  # GET /ict3s
  def index
    @ict3s = Ict3.all
  end

  # GET /ict3s/1
  def show
  end

  # GET /ict3s/new
  def new
    @ict3 = Ict3.new
  end

def test
  ji = [:Total, :Coverage_in_percentage]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   ji1 = [:Item, :Total, :Coverage_in_percentage]

legend = "Item"

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Ict3.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Ict3.map(b,params[:year],rain_fall_type,views)
         else
          b = Ict3.map_search(params[:search],compare,year,rain_fall_type)
          a = Ict3.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Ict3.search(params[:search],compare,year,rain_fall_type,legend)
        a = Ict3.table(b,rain_fall_type,year,ji1,compare,legend)
      else
        @Ict3s = Ict3.search(params[:search],compare,year,rain_fall_type,legend)
        a = Ict3.query(@Ict3s,params[:year],rain_fall_type,views,ji,compare,search,legend)
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
    Ict3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /ict3s/1/edit
  def edit
  end

  # POST /ict3s
  def create
    @ict3 = Ict3.new(ict3_params)

    if @ict3.save
      redirect_to @ict3, notice: 'Ict3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /ict3s/1
  def update
    if @ict3.update(ict3_params)
      redirect_to @ict3, notice: 'Ict3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /ict3s/1
  def destroy
    @ict3.destroy
    redirect_to ict3s_url, notice: 'Ict3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ict3
      @ict3 = Ict3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ict3_params
      params.require(:ict3).permit(:Item, :Total, :Coverage_in_percentage)
    end
end
