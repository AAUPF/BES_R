class StateDomesticProduct1sController < ApplicationController
  before_action :set_state_domestic_product1, only: [:show, :edit, :update, :destroy]

  # GET /state_domestic_product1s
  def index
    @state_domestic_product1s = StateDomesticProduct1.all


    respond_to do |format|
      format.html { render json:@state_domestic_product1s }
  end
  end

  # GET /state_domestic_product1s/1
  def show
  end

  # GET /state_domestic_product1s/new
  def new
    @state_domestic_product1 = StateDomesticProduct1.new
  end

def test
  ji = [:Sector, :'2015-16', :'2016-17', :'2011-12_to_2015-16', :Reference]
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]
   price = params[:price]


   ji1 = [:Sector, :'2015-16', :'2016-17', :'2011-12_to_2015-16', :Reference]

   jip = [:'2015-16', :'2016-17', :'2011-12_to_2015-16']



   if search == 'Total Primary Sector'
    if rain_fall_type == "Agriculture, Forestry and Fishing"

      if compare == "None"
        # #search = "None"
        rain_fall_type
      elsif compare == "All"
        rain_fall_type = compare
        data = [
          "Crops",
          "Livestock",
          "Forestry and Logging",
          "Fishing and Aquaculture",
        ]
      else
        # #search = "None"
        rain_fall_type = compare
      end

    elsif rain_fall_type == "None"
      rain_fall_type

      data = [
        "Total Primary Sector",
      ]

    else
      data = [
        "Agriculture, Forestry and Fishing",
        "Mining and Quarrying",
      ]
    end

elsif search == 'Total Secondary Sector'


if rain_fall_type == "None"
  rain_fall_type

  data = [
    "Total Secondary Sector",
  ]
  
else
  data = [
    "Manufacturing",
    "Electricity and Utilitiy Services",
    "Construction",
   
  ]
  
end


elsif search == 'Total Tertiary Sector'
if rain_fall_type == "Trade and Hospitality"

  if compare == "None"
    # #search = "None"

    rain_fall_type
  elsif compare == "All"
    rain_fall_type = compare
    data = [
      "Trade and Repair Services",
      "Hotels and Restaurants",
    ]

  else
    #search = "None"
    rain_fall_type = compare
    data = [
      "Trade and Repair Services",
      "Hotels and Restaurants",
    ]

  end

elsif rain_fall_type == "Transport and Communication"

  if compare == "None"
    rain_fall_type
  elsif compare == "All"
    rain_fall_type = compare
    data = [
      "Railways",
      "Road Transport",
      "Water Transport",
      "Air Transport",
      "Services incidental to transport",
      "Storage",
      "Communication and Broadcasting",
    ]

  else
    rain_fall_type = compare
  end

elsif rain_fall_type == "None"
  rain_fall_type

  data = [
    "Total Tertiary Sector",
  ]

else
  data = [
    "Trade and Hospitality",
    "Transport and Communication",
    "Financial Services",
    "Real Estate Services",
    "Public Administration",
    "Other Services",
  ]
end


elsif search == 'All'
if rain_fall_type == "Agriculture, Forestry and Fishing"
  if compare == "None"
    #search = "None"

    rain_fall_type
  elsif compare == "All"
    rain_fall_type = compare
    data = [
      "Crops",
      "Livestock",
      "Forestry and Logging",
      "Fishing and Aquaculture",
    ]

    elsif rain_fall_type == "None"
      rain_fall_type

      data = [
        "Total Tertiary Sector",
        "Total Secondary Sector",
        "Total Primary Sector"
      ]

  else
    #search = "None"
    rain_fall_type = compare
    data = [
      "Agriculture, Forestry and Fishing",
      "Mining and Quarrying",
      "Manufacturing",
      "Electricity and Utilitiy Services",
      "Construction",
      "Trade and Hospitality",
      "Transport and Communication",
      "Financial Services",
      "Real Estate Services",
      "Public Administration",
      "Other Services",
      "Tertiary",
      "Total GSVA at basic prices",
    ]
  end
elsif rain_fall_type == "Trade and Hospitality"

  if compare == "None"
    #search = "None"

    rain_fall_type
  elsif compare == "All"
    rain_fall_type = compare
    data = [
      "Trade and Repair Services",
      "Hotels and Restaurants",
    ]


  else
    #search = "None"
    rain_fall_type = compare
    data = [
      "Trade and Repair Services",
      "Hotels and Restaurants",
    ]

  end

elsif rain_fall_type == "Transport and Communication"

  if compare == "None"
    rain_fall_type
  elsif compare == "All"
    rain_fall_type = compare
    data = [
      "Railways",
      "Road Transport",
      "Water Transport",
      "Air Transport",
      "Services incidental to transport",
      "Storage",
      "Communication and Broadcasting",
    ]

  else
    rain_fall_type = compare
  end


elsif  rain_fall_type == "None"
  rain_fall_type

  data = [
    "Total Tertiary Sector",
    "Total Secondary Sector",
    "Total Primary Sector"
  ]


else
  data = [
    "Agriculture, Forestry and Fishing",
    "Mining and Quarrying",
    "Manufacturing",
    "Electricity and Utilitiy Services",
    "Construction",
    "Trade and Hospitality",
    "Transport and Communication",
    "Financial Services",
    "Real Estate Services",
    "Public Administration",
    "Other Services",
    "Total Gross State Value Added at basic prices",
    "Taxes on Products",
    "Subsidies on products",
    "Gross State Domestic Product",
  ]
end
end

  #  if search == 'Total Primary Sector'
  #   data = [
  #     "Agriculture, Forestry and Fishing",
  #     "Crops",
  #     "Livestock",
  #     "Forestry and Logging",
  #     "Fishing and Aquaculture",
  #     "Mining and Quarrying",
  #     "Total Primary Sector",
  #   ]
  # elsif search == 'Total Secondary Sector'

  #   data = [
  #     "Manufacturing",
  #     "Electricity, gas, water supply and other utility services",
  #     "Construction",
  #     "Total Secondary Sector",
  #   ]
  # elsif search == 'Total Tertiary Sector'

  #   data = [
  #     "Trade, repair, hotels and restaurants",
  #     "Trade and repair services",
  #     "Hotels and restaurants",
  #     "Transport, storage, communication and services related to broadcasting",
  #     "Railways",
  #     "Road transport",
  #     "Water transport",
  #     "Air transport",
  #     "Services incidental to transport",
  #     "Storage",
  #     "Communication and services related to broadcasting",
  #     "Financial services",
  #     "Real estate, ownership of dwelling and professional services",
  #     "Public administration",
  #     "Other services",
  #     "Total Tertiary Sector",
  #   ]
  # elsif search == 'All'
  #   data = [
  #     "Agriculture, Forestry and Fishing",
  #     "Crops",
  #     "Livestock",
  #     "Forestry and Logging",
  #     "Fishing and Aquaculture",
  #     "Mining and Quarrying",
  #     "Total Primary Sector",
  #     "Manufacturing",
  #     "Electricity, gas, water supply and other utility services",
  #     "Construction",
  #     "Total Secondary Sector",
  #     "Trade, repair, hotels and restaurants",
  #     "Trade and repair services",
  #     "Hotels and restaurants",
  #     "Transport, storage, communication and services related to broadcasting",
  #     "Railways",
  #     "Road transport",
  #     "Water transport",
  #     "Air transport",
  #     "Services incidental to transport",
  #     "Storage",
  #     "Communication and services related to broadcasting",
  #     "Financial services",
  #     "Real estate, ownership of dwelling and professional services",
  #     "Public administration",
  #     "Other services",
  #     "Total Tertiary Sector",
  #     "Total Gross State Value Added at basic prices",
  #     "Taxes on Products",
  #     "Subsidies on products",
  #     "Gross State Domestic Product",
  #   ]
  # end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = StateDomesticProduct1.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = StateDomesticProduct1.map(b,params[:year],rain_fall_type,views)
         else
          b = StateDomesticProduct1.map_search(params[:search],compare,year,rain_fall_type)
          a = StateDomesticProduct1.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = StateDomesticProduct1.search(params[:search],compare,year,rain_fall_type,price)
        a = StateDomesticProduct1.table(b,rain_fall_type,year,ji1,compare,search,data)
      else
        @StateDomesticProduct1s = StateDomesticProduct1.search(params[:search],compare,year,rain_fall_type,price)
        a = StateDomesticProduct1.query(@StateDomesticProduct1s,params[:year],rain_fall_type,views,ji,compare,search,data,jip)
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
    StateDomesticProduct1.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /state_domestic_product1s/1/edit
  def edit
  end

  # POST /state_domestic_product1s
  def create
    @state_domestic_product1 = StateDomesticProduct1.new(state_domestic_product1_params)

    if @state_domestic_product1.save
      redirect_to @state_domestic_product1, notice: 'State domestic product1 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /state_domestic_product1s/1
  def update
    if @state_domestic_product1.update(state_domestic_product1_params)
      redirect_to @state_domestic_product1, notice: 'State domestic product1 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /state_domestic_product1s/1
  def destroy
    @state_domestic_product1.destroy
    redirect_to state_domestic_product1s_url, notice: 'State domestic product1 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state_domestic_product1
      @state_domestic_product1 = StateDomesticProduct1.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def state_domestic_product1_params
      params.require(:state_domestic_product1).permit(:Sector, :'2015-16', :'2016-17', :'2011-12_to_2015-16', :Reference)
    end
end
