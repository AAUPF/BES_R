class MininngsController < ApplicationController
  before_action :set_mininng, only: [:show, :edit, :update, :destroy]

  # GET /mininngs
  def index
    @mininngs = Mininng.all
    respond_to do |format|
      format.html { render json:@mininngs }
  end
  end

  # GET /mininngs/1
  def show
  end

  # GET /mininngs/new
  def new
    @mininng = Mininng.new
  end

def test
  ji = [:Sector, :'2014-15', :'2015-16', :'2016-17']
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]

   data = [
    "1.  Major Minerals",
    "2.  Minor Minerals",
    "(i)    bricks",
    "(ii)   sand",
    "(iii)  stone + crusher",
    "(iv)  morum",
    "(v)   soil",
    "(vi)  Works Deptt.",
    "(vii) Transit Pass",
    "(viii) Others",
    "3.  Arrears",
    "Total",
   ]


   search = rain_fall_type

   jip = [:'2014-15', :'2015-16', :'2016-17']
   ji1 = [:Sector, :'2014-15', :'2015-16', :'2016-17']

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = Mininng.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = Mininng.map(b,params[:year],rain_fall_type,views)
         else
          b = Mininng.map_search(params[:search],compare,year,rain_fall_type)
          a = Mininng.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = Mininng.search(params[:search],compare,year,rain_fall_type)
        a = Mininng.table(b, rain_fall_type, year, ji1, compare, search, data)
      else
        @Mininngs = Mininng.search(params[:search],compare,year,rain_fall_type)
        a = Mininng.query(@Mininngs, params[:year], rain_fall_type, views, ji, compare, search, data, jip)
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
    Mininng.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /mininngs/1/edit
  def edit
  end

  # POST /mininngs
  def create
    @mininng = Mininng.new(mininng_params)

    if @mininng.save
      redirect_to @mininng, notice: 'Mininng was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /mininngs/1
  def update
    if @mininng.update(mininng_params)
      redirect_to @mininng, notice: 'Mininng was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /mininngs/1
  def destroy
    @mininng.destroy
    redirect_to mininngs_url, notice: 'Mininng was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mininng
      @mininng = Mininng.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mininng_params
      params.require(:mininng).permit(:Sector, :'2014-15', :'2015-16', :'2016-17')
    end
end
