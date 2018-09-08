class AnnualStateDomesticProduct3sController < ApplicationController
  before_action :set_annual_state_domestic_product3, only: [:show, :edit, :update, :destroy]

  # GET /annual_state_domestic_product3s
  def index
    @annual_state_domestic_product3s = AnnualStateDomesticProduct3.all

    respond_to do |format|
      format.html { render json:@annual_state_domestic_product3s }
  end
  end

  # GET /annual_state_domestic_product3s/1
  def show
  end

  # GET /annual_state_domestic_product3s/new
  def new
    @annual_state_domestic_product3 = AnnualStateDomesticProduct3.new
  end


 
def test
  ji = [:Sector, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']
  rain_fall_type = params[:rain_fall_type]
   views  = params[:views]
   year  = params[:year]
   compare = params[:compare]
   search = params[:search]

   ji1 = [:Sector, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']
   jip = [:'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']

   if search == 'Primary'
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
            "Primary",
          ]

        else
          data = [
            "Agriculture, Forestry and Fishing",
            "Mining and Quarrying",
          ]
        end

  elsif search == 'Secondary'


    if rain_fall_type == "None"
      rain_fall_type
  
      data = [
        "Secondary",
      ]
      
    else
      data = [
        "Manufacturing",
        "Electricity and Utilitiy Services",
        "Construction",
       
      ]
      
    end


  elsif search == 'Tertiary'
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
        "Tertiary",
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
            "Tertiary",
            "Secondary",
            "Primary"
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
        "Tertiary",
        "Secondary",
        "Primary"
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
        "Total GSVA at basic prices",
      ]
    end
  end

  if rain_fall_type || views

      if views == "Map View"
        l =  rain_fall_type.gsub(" ","")           
         if rain_fall_type  ==  "All"
          b = AnnualStateDomesticProduct3.map_search("All",compare,year,rain_fall_type)
          u = "Total"
          a = AnnualStateDomesticProduct3.map(b,params[:year],rain_fall_type,views)
         else
          b = AnnualStateDomesticProduct3.map_search(params[:search],compare,year,rain_fall_type)
          a = AnnualStateDomesticProduct3.map(b,rain_fall_type,year,ji)
         end
      elsif views == "Table"  
        b = AnnualStateDomesticProduct3.search(params[:search],compare,year,rain_fall_type)
        a = AnnualStateDomesticProduct3.table(b,rain_fall_type,year,ji1,compare,search,data)
      else
        @AnnualStateDomesticProduct3s = AnnualStateDomesticProduct3.search(params[:search],compare,year,rain_fall_type)
        a = AnnualStateDomesticProduct3.query(@AnnualStateDomesticProduct3s,params[:year],rain_fall_type,views,ji,compare,search,data,jip)
      end
      respond_to do |format|
        format.html { render json: a }
    end

  else
    respond_to do |format|
      format.html { render json: "error"}
  end
  end

end


  def import
    # Module1.import(params[:file])
    AnnualStateDomesticProduct3.import1(params[:file])
    redirect_to tests_path, notice: "Products imported."
  end

  # GET /annual_state_domestic_product3s/1/edit
  def edit
  end

  # POST /annual_state_domestic_product3s
  def create
    @annual_state_domestic_product3 = AnnualStateDomesticProduct3.new(annual_state_domestic_product3_params)

    if @annual_state_domestic_product3.save
      redirect_to @annual_state_domestic_product3, notice: 'Annual state domestic product3 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /annual_state_domestic_product3s/1
  def update
    if @annual_state_domestic_product3.update(annual_state_domestic_product3_params)
      redirect_to @annual_state_domestic_product3, notice: 'Annual state domestic product3 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /annual_state_domestic_product3s/1
  def destroy
    @annual_state_domestic_product3.destroy
    redirect_to annual_state_domestic_product3s_url, notice: 'Annual state domestic product3 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_annual_state_domestic_product3
      @annual_state_domestic_product3 = AnnualStateDomesticProduct3.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def annual_state_domestic_product3_params
      params.require(:annual_state_domestic_product3).permit(:Sector, :'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17')
    end
end
