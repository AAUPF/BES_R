class StateDomesticProduct5sController < ApplicationController
  before_action :set_state_domestic_product5, only: [:show, :edit, :update, :destroy]

  # GET /state_domestic_product5s
  def index
    @state_domestic_product5s = StateDomesticProduct5.all
    respond_to do |format|
      format.html { render json:@state_domestic_product5s }
  end
  end

  # GET /state_domestic_product5s/1
  def show
  end

  # GET /state_domestic_product5s/new
  def new
    @state_domestic_product5 = StateDomesticProduct5.new
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
        "Total GSVA at basic prices",
        "Taxes on Products",
        "Subsidies on Products",
        "Gross State Domestic Product",
        "Population (crore)",
        "Per Capita GSDP (Rs.)",
      ]
    end
  
    if rain_fall_type || views
  
        if views == "Map View"
          l =  rain_fall_type.gsub(" ","")           
           if rain_fall_type  ==  "All"
            b = StateDomesticProduct5.map_search("All",compare,year,rain_fall_type)
            u = "Total"
            a = StateDomesticProduct5.map(b,params[:year],rain_fall_type,views)
           else
            b = StateDomesticProduct5.map_search(params[:search],compare,year,rain_fall_type)
            a = StateDomesticProduct5.map(b,rain_fall_type,year,ji)
           end
        elsif views == "Table"  
          b = StateDomesticProduct5.search(params[:search],compare,year,rain_fall_type)
          a = StateDomesticProduct5.table(b,rain_fall_type,year,ji1,compare,search,data)
        else
          @StateDomesticProduct5s = StateDomesticProduct5.search(params[:search],compare,year,rain_fall_type)
          a = StateDomesticProduct5.query(@StateDomesticProduct5s,params[:year],rain_fall_type,views,ji,compare,search,data,jip)
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
    StateDomesticProduct5.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /state_domestic_product5s/1/edit
  def edit
  end

  # POST /state_domestic_product5s
  def create
    @state_domestic_product5 = StateDomesticProduct5.new(state_domestic_product5_params)

    if @state_domestic_product5.save
      redirect_to @state_domestic_product5, notice: 'State domestic product5 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /state_domestic_product5s/1
  def update
    if @state_domestic_product5.update(state_domestic_product5_params)
      redirect_to @state_domestic_product5, notice: 'State domestic product5 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /state_domestic_product5s/1
  def destroy
    @state_domestic_product5.destroy
    redirect_to state_domestic_product5s_url, notice: 'State domestic product5 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state_domestic_product5
      @state_domestic_product5 = StateDomesticProduct5.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def state_domestic_product5_params
      params.require(:state_domestic_product5).permit(:Sector, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17', :'2011-16')
    end
end
