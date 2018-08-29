class StateDomesticProduct7sController < ApplicationController
  before_action :set_state_domestic_product7, only: [:show, :edit, :update, :destroy]

  # GET /state_domestic_product7s
  def index
    @state_domestic_product7s = StateDomesticProduct7.all

    respond_to do |format|
      format.html { render json: @state_domestic_product7s }
  end
  end

  # GET /state_domestic_product7s/1
  def show
  end

  # GET /state_domestic_product7s/new
  def new
    @state_domestic_product7 = StateDomesticProduct7.new
  end
  def test
    ji = [:Sector, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17', :'2011-16']
    rain_fall_type = params[:rain_fall_type]
     views  = params[:views]
     year  = params[:year]
     compare = params[:compare]
     search = params[:search]
  
     ji1 = [:Sector, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17', :'2011-16']
     jip = [:'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']

     if search == 'Primary'
      data = [
        "Agriculture, Forestry and Fishing",
        "Crops",
        "Livestock",
        "Forestry and Logging",
        "Fishing and Aquaculture",
        "Mining and Quarrying",
        "Primary",
      ]
    elsif search == 'Secondary'
  
      data = [
        "Manufacturing",
        "Electricity and Utilitiy Services",
        "Construction",
        "Secondary",
      ]
    elsif search == 'Tertiary'
  
      data = [
        "Trade and Hospitality",
        "Trade and Repair Services",
        "Hotels and Restaurants",
        "Transport and Communication",
        "Railways",
        "Road Transport",
        "Water Transport",
        "Air Transport",
        "Services incidental to transport",
        "Storage",
        "Communication and Broadcasting",
        "Financial Services",
        "Real Estate Services",
        "Public Administration",
        "Other Services",
        "Tertiary",
      ]
    elsif search == 'All'
      data = [
        "Agriculture, Forestry and Fishing",
        "Crops",
        "Livestock",
        "Forestry and Logging",
        "Fishing and Aquaculture",
        "Mining and Quarrying",
        "Primary",
        "Manufacturing",
        "Electricity and Utilitiy Services",
        "Construction",
        "Secondary",
        "Trade and Hospitality",
        "Trade and Repair Services",
        "Hotels and Restaurants",
        "Transport and Communication",
        "Railways",
        "Road Transport",
        "Water Transport",
        "Air Transport",
        "Services incidental to transport",
        "Storage",
        "Communication and Broadcasting",
        "Financial Services",
        "Real Estate Services",
        "Public Administration",
        "Other Services",
        "Tertiary",
        "Total NSVA at basic prices",
        "Taxes on Products",
        "Subsidies on Products",
        "Net State Domestic Product",
        "Population (crore)",
        "Per Capita NSDP (Rs.)",
      ]
    end
  
    if rain_fall_type || views
  
        if views == "Map View"
          l =  rain_fall_type.gsub(" ","")           
           if rain_fall_type  ==  "All"
            b = StateDomesticProduct7.map_search("All",compare,year,rain_fall_type)
            u = "Total"
            a = StateDomesticProduct7.map(b,params[:year],rain_fall_type,views)
           else
            b = StateDomesticProduct7.map_search(params[:search],compare,year,rain_fall_type)
            a = StateDomesticProduct7.map(b,rain_fall_type,year,ji)
           end
        elsif views == "Table"  
          b = StateDomesticProduct7.search(params[:search],compare,year,rain_fall_type)
          a = StateDomesticProduct7.table(b,rain_fall_type,year,ji1,compare,search,data)
        else
          @StateDomesticProduct7s = StateDomesticProduct7.search(params[:search],compare,year,rain_fall_type)
          a = StateDomesticProduct7.query(@StateDomesticProduct7s,params[:year],rain_fall_type,views,ji,compare,search,data,jip)
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
    StateDomesticProduct7.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /state_domestic_product7s/1/edit
  def edit
  end

  # POST /state_domestic_product7s
  def create
    @state_domestic_product7 = StateDomesticProduct7.new(state_domestic_product7_params)

    if @state_domestic_product7.save
      redirect_to @state_domestic_product7, notice: 'State domestic product7 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /state_domestic_product7s/1
  def update
    if @state_domestic_product7.update(state_domestic_product7_params)
      redirect_to @state_domestic_product7, notice: 'State domestic product7 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /state_domestic_product7s/1
  def destroy
    @state_domestic_product7.destroy
    redirect_to state_domestic_product7s_url, notice: 'State domestic product7 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state_domestic_product7
      @state_domestic_product7 = StateDomesticProduct7.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def state_domestic_product7_params
      params.require(:state_domestic_product7).permit(:Sector, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17', :'2011-16')
    end
end
