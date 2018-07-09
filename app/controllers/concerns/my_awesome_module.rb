module Concerns
    module MyAwesomeModule
      extend ActiveSupport::Concern
      included do
        # here you can use controller level methods
        # like `before_action` 
      end
  
      
  def test
    rain_fall_type = params[:rain_fall_type]
     views  = params[:views]
     year  = ""
     compare = params[:compare]

    if rain_fall_type || views

        if views == "Map View"
          l =  rain_fall_type.gsub(" ","")
          if year == "2016"
            j = "#{l}_2016"
          elsif year == "2017"
            j = "#{l}_2017"
          else
            puts "no year"
          end  
           
           if rain_fall_type  ==  "All"
           

            if year == "2016"
              j = "Total_2016"
            elsif year == "2017"
              j = "Total_2017"
            else
              puts "no year"
            end  
            b = ProductionProductivity7.map_search(j)
            u = "Total"
            a = ProductionProductivity7.map(b,u,year)
           else
            b = ProductionProductivity7.map_search(j)
            a = ProductionProductivity7.map(b,rain_fall_type,year)
           end
        elsif views == "Table"  
          b = ProductionProductivity7.search(params[:search],compare)

          a = ProductionProductivity7.table(b,rain_fall_type,year)
        else
          @ProductionProductivity7s = ProductionProductivity7.search(params[:search],compare)
          a = ProductionProductivity7.query(@ProductionProductivity7s,params[:year],rain_fall_type,views,compare)
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
    end
  end