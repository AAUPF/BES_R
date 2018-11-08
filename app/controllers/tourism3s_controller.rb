class Tourism3sController < ApplicationController
  before_action :set_tourism3, only: [:show, :edit, :update, :destroy]

  # GET /tourism3s
  def index
    @tourism3s = Tourism3.all
    respond_to do |format|
      format.html { render json:@tourism3s }
  end
  end

  # GET /tourism3s/1
  def show
  end

  # GET /tourism3s/new
  def new
    @tourism3 = Tourism3.new
  end
  def test
    ji = [:"2012", :"2013", :"2014", :"2015", :"2016"]
    rain_fall_type = params[:rain_fall_type]
     views  = params[:views]
     year  = params[:year]
     compare = params[:compare]
      data = [
        "Patna",
        "Gaya",
        "Bodh Gaya",
        "Rajgir",
        "Nalanda",
        "Raxual",
        "Munger",
        "Vaishali",
        "Muzaffarpur",
        "Bhagalpur",
        "Sonepur Fair",
        "Pitrapaksha Mela, Gaya",
        "Shrawani Mela Sultanganj (Bhagalpur)",
        "Other",
        "Total",
      ]
  
   search = rain_fall_type
  
   jip = [:"2012", :"2013", :"2014", :"2015", :"2016"]
   ji1 = [:Sector, :"2012", :"2013", :"2014", :"2015", :"2016"]

   legend = "Districts"
    if rain_fall_type || views
  
        if views == "Map View"
          l =  rain_fall_type.gsub(" ","")           
           if rain_fall_type  ==  "All"
            b = Tourism3.map_search("All",compare,year,rain_fall_type)
            u = "Total"
            a = Tourism3.map(b,params[:year],rain_fall_type,views)
           else
            b = Tourism3.map_search(params[:search],compare,year,rain_fall_type)
            a = Tourism3.map(b,rain_fall_type,year,ji)
           end
        elsif views == "Table"  
          b = Tourism3.search(params[:search],compare,year,rain_fall_type)
          a = Tourism3.new_table(b,rain_fall_type,year,ji1,compare, search, data,legend)
        else
          @Tourism3s = Tourism3.search(params[:search],compare,year,rain_fall_type)
          a = Tourism3.query(@Tourism3s,params[:year],rain_fall_type,views,ji,compare, search, data, jip)
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
    Tourism3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /tourism3s/1/edit
  def edit
  end

  # POST /tourism3s
  def create
    @tourism3 = Tourism3.new(tourism3_params)

    if @tourism3.save
      redirect_to @tourism3, notice: 'Tourism3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tourism3s/1
  def update
    if @tourism3.update(tourism3_params)
      redirect_to @tourism3, notice: 'Tourism3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tourism3s/1
  def destroy
    @tourism3.destroy
    redirect_to tourism3s_url, notice: 'Tourism3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tourism3
      @tourism3 = Tourism3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tourism3_params
      params.require(:tourism3).permit(:Sector, :Tourist, :'2012', :'2013', :'2014', :'2015', :'2016', :'2017')
    end
end
