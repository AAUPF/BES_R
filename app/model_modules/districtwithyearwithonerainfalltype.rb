module Districtwithyearwithonerainfalltype

    def import1(file)
        spreadsheet = Roo::Spreadsheet.open(file.path)
        header = spreadsheet.row(1)
        (2..spreadsheet.last_row).each do |i|
          row = Hash[[header, spreadsheet.row(i)].transpose]
          puts row.to_hash
          product = find_by(id: row['id']) || new
          product.attributes = row.to_hash
          product.save!
        end
      end
    
      def search(search, compare, year, rain_fall_type)
        if search == 'All'
          if rain_fall_type == 'All'
            where(Year: year).order('id ')
          else
            if year == "All"
              all.order('id ')
            else
              where(Year: year).order("#{rain_fall_type} ")
            end
            
          end
        elsif compare == 'Bihar vs District'
          if year == "All"
            where('Districts = ? OR Districts = ?', search, 'Bihar').order(:id)
          else
            where('Districts = ? OR Districts = ?', search, 'Bihar').where('year = ?', year).order(:id)
          end
         
        else
          if rain_fall_type == 'All'
            where('Districts = ? ', search).where('year = ?', year).order(:id)
          else
            if year == "All"
              where('Districts = ? ', search).order('id ')
            else
              where('Districts = ? ', search).where('year = ?', year).order(rain_fall_type)
            end
            
          end
        end
      end
    
    
      def table(b, rain_fall_type, _year, ji, compare)
        dataset = rain_fall_type.tr('_', ' ')
    
        if rain_fall_type 
    
          hash_data = ji.map do |el|
            if el.to_s == 'Districts'
              { title: 'District', field: el, headerFilter: true }
            else
              { title: el.to_s.tr('_', ' '), field: el }
            end
          end
        else
          if compare == 'None'
            hash_data = [
              { title: 'District', field: 'Districts', headerFilter: true },
              { title: dataset, field: rain_fall_type }
            ]
          else
    
            hash_data = [
              # {title:compare, field:compare, sorter:"string", },
              { title: 'District', field: 'Districts', headerFilter: true },
    
              { title: dataset, field: rain_fall_type }
            ]
          end
        end
    
    
       if rain_fall_type == "Productivity"
        j = b.each { |item| item[:Productivity] = item[:Productivity]/100}
    
       else
         j = b
       end
    
       if _year == "All"
        grouped = {}
          b.each do |x|
            grouped[x[:Districts]] ||= {}
            grouped[x[:Districts]][:Districts] = x[:Districts]
            grouped[x[:Districts]][x[:Year]] = x["#{rain_fall_type}"]
          end
    
        data = { column: hash_data, data: grouped.values }
         
       else
        data = { column: hash_data, data: j }
       end
        
        data
      end
    
      # Logic to generate table end
    
      def map_search(search, _compare, year, rain_fall_type)
        if search == 'All'
          if rain_fall_type == 'All'
            where(Year: year).order(:id)
          else
            where(Year: year).order(rain_fall_type)
          end
    
        else
          # where(Districts: search)
          where(Year: year).order(rain_fall_type)
        end
      end
    
      def query(b, _year, rain_fall_type, views, ji, compare,search)
        d = 'Districts'
        color  = "#4f81bc"
        if rain_fall_type == 'All'
          if views
            hash_data = ji.map do |column_name|
              if compare == 'Bihar vs District'
                dataset = column_name.to_s.tr('_', ' ')
                {
                  type: views,
                  legendText: dataset,
                  showInLegend: true,
                  dataPoints: b.map do |el|
                                if dataset == 'Productivity'
                                  du = el[column_name] / 100
                                  { y: du, z: du, label: el[d] }
                                else
                                  { y: el[column_name], z: el[column_name], label: el[d] }
                                end
                              end
                }
              else
                dataset = column_name.to_s.tr('_', ' ')
                {
                  type: views,
                  legendText: dataset,
                  showInLegend: true,
                  dataPoints: b.reject { |x| x['Districts'] == 'Bihar' }.map do |el|
                                if dataset == 'Productivity'
                                  du = el[column_name] / 100
                                  { y: du, z: du, label: el[d] }
                                else
                                  { y: el[column_name], z: el[column_name], label: el[d] }
                                 end
                              end
                }
              end
            end
          end
          if views == "stackedBar100" or views == "stackedBar"
            title = {
              animationEnabled: true,
              exportEnabled: true,
              title:{
                text: "#{rain_fall_type.to_s.gsub("_"," ")}"
                    },
              data: hash_data
          }
         
          else
            title = {
              animationEnabled: true,
              exportEnabled: true,
              title:{
                text: "#{rain_fall_type.to_s.gsub("_"," ")}"
                    },
                    axisX: {
                      interval:1,
                      labelMaxWidth: 180,
                      labelAngle: 90,
                      labelFontFamily:"verdana0"
                      },
              data: hash_data
          }
          end
          return title
        else
          if compare == 'Bihar vs District'
            grouped_data = b.group_by{ |data| data[:Districts]}
            hash_data  = grouped_data.map{ |vegetable, values| 
              dataset = vegetable.to_s.gsub("_"," ")
              {
                type: views,
                toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                legendText: dataset,
                name:dataset,
                showInLegend: true,
                dataPoints: values.map { |value|
                  { y: value[rain_fall_type], label: value["Year"] }
                }
              }
           }
          else
            if _year == "All"
              grouped_data = b.group_by{ |data| data[:Districts]}
              if search == "All"
                hash_data  = grouped_data.map{ |vegetable, values| 
                  dataset = vegetable.to_s.gsub("_"," ")
                  {
                    type: views,
                    toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                    legendText: dataset,
                    name:dataset,
                    showInLegend: true,
                    dataPoints: values.reject { |x| x['Districts'] == 'Bihar' }.map { |value|
                      { y: value[rain_fall_type], label: value["Year"] }
                    }
                  }
               }
              else
    
    
                if views != "column" && views!="line"
                  hash_data =[]
                  grouped_data.map{ |vegetable, values| 
                   values.map do |value|
                     hash_data.push(
                       {
                         type:views,
                         legendText:"#{value["Year"]}",
                         showInLegend: true,
                         dataPoints: [{ y: value[rain_fall_type], label:  value["Districts"] }]
                     }
                     )
                   end
                   }
                  else
                    hash_data  = grouped_data.map{ |vegetable, values| 
                      dataset = vegetable.to_s.gsub("_"," ")
                      {
                        type: views,
                        toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                        legendText: dataset,
                        color:color,
                        name:dataset,
                        showInLegend: true,
                        dataPoints: values.map { |value|
                          { y: value[rain_fall_type], label: value["Year"] }
                        }
                      }
                   }
                  end 
    
             
              end
              
            else
              if views != "column" && views!="line"
              dataset = rain_fall_type.tr('_', ' ')
              hash_data =  b.map do |el|
                {
                  type:views,
                  toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                  name:"#{el["Districts"]}",
                  legendText:"#{el["Districts"]}",
                  showInLegend: true,
                  dataPoints: [{ y: el[rain_fall_type], label:  el["Year"] }]
              }
    
              end
          
                else
                  dataset = rain_fall_type.tr('_', ' ')
            hash_data =
              [{
                type: views,
                toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                  name:dataset,
                color: color,
                legendText: dataset,
                showInLegend: true,
                dataPoints: b.reject { |x| x['Districts'] == 'Bihar' }.map do |el|
                              if rain_fall_type == 'Productivity'
                                du = el[rain_fall_type] / 100
    
                                { y: du, label: el['Districts'] }
    
                              else
                                { y: el[rain_fall_type], label: el['Districts'] }
                              end
                            end
              }]
                end 
            end
          end
          if views != "column"
            title = {
              animationEnabled: true,
              exportEnabled: true,
              title:{
                text: "#{rain_fall_type.to_s.gsub("_"," ")}"
                    },
              data: hash_data
          }
         
          else
            title = {
              animationEnabled: true,
              exportEnabled: true,
              title:{
                text: "#{rain_fall_type.to_s.gsub("_"," ")}"
                    },
                    axisX: {
                      interval:1,
                      labelMaxWidth: 180,
                      labelAngle: 90,
                      labelFontFamily:"verdana0"
                      },
              data: hash_data
          }
            
          end
          return title
        end
      end
    
      def map1(b, rain_fall_type, _views, _ji, unit1, ranges)
        array = []
        # a = []
        l = rain_fall_type.delete(' ')
    
        #  abort(rain_fall_type)
        a = []
        below_min = []
        min = []
        blow_max = []
        max = []
        above_max = []
        extreme = []
        above_extreme = []
    
        b.map.with_index do |el, _i|
          dist = el['Districts']
    
          colour = "#{rain_fall_type}_Colour"
          if el[colour] == 'Red'
            hash1 = { y: el[rain_fall_type], label: dist, color: 'Red' }
            below_min.push(hash1)
    
          elsif el[colour] == 'Orange'
            hash1 = { y: el[rain_fall_type], label: dist, color: 'Orange' }
            min.push(hash1)
    
          elsif el[colour] == 'Dark_Yellow'
            hash1 = { y: el[rain_fall_type], label: dist, color: 'Dark_Yellow' }
            blow_max.push(hash1)
    
          elsif el[colour] == 'Yellow'
            hash1 = { y: el[rain_fall_type], label: dist, color: 'Yellow' }
            max.push(hash1)
    
          elsif el[colour] == 'Light_Green'
            hash1 = { y: el[rain_fall_type], label: dist, color: 'Light_Green' }
            above_max.push(hash1)
    
          elsif el[colour] == 'Green'
            hash1 = { y: el[rain_fall_type], label: dist, color: 'Green' }
            extreme.push(hash1)
    
          elsif el[colour] == 'Dark_Green'
            hash1 = { y: el[rain_fall_type], label: dist, color: 'Dark_Green' }
            above_extreme.push(hash1)
          end
        end
        a.push("below_min": below_min)
        a.push("min": min)
        a.push("blow_max": blow_max)
        a.push("max": max)
        a.push("above_max": above_max)
        a.push("extreme": extreme)
        a.push("above_extreme": above_extreme)
        # array = [{name: "array"}]
        # sleep 1
        # ranges = [{below_min: {min: 0, max: 50},min: {min: 50, max: 70},blow_max: {min: 70, max: 100},max: {min: 100, max: 150},above_max: {min: 150, max: 190},extreme: {min: 190, max: 200},above_extreme: {min: 2, max: 200}}]
    
        if below_min.any?
          b = { min: ranges[0][:below_min][:min], max: "#{ranges[0][:below_min][:max]}" }
        else
          b = { min: ranges[0][:below_min][:min], max: "#{ranges[0][:below_min][:max]}" }
        end
    
        c = if min.any?
              { min: ranges[0][:min][:min], max: "#{ranges[0][:min][:max]}" }
            else
              { min: ranges[0][:min][:min], max: "#{ranges[0][:min][:max]}" }
            end
    
        if blow_max.any?
          d = { min: ranges[0][:blow_max][:min], max: "#{ranges[0][:blow_max][:max]}" }
        else
          d = { min: ranges[0][:blow_max][:min], max: "#{ranges[0][:blow_max][:max]}" }
        end
    
        e = if max.any?
              { min: ranges[0][:max][:min], max: "#{ranges[0][:max][:max]}" }
            else
              { min: ranges[0][:max][:min], max: "#{ranges[0][:max][:max]}" }
            end
    
        if above_max.any?
    
          f = { min: ranges[0][:above_max][:min], max: "#{ranges[0][:above_max][:max]}" }
    
        else
          f = { min: ranges[0][:above_max][:min], max: "#{ranges[0][:above_max][:max]}" }
    
        end
    
        if extreme.any?
          g = { min: ranges[0][:extreme][:min], max: "#{ranges[0][:extreme][:max]}" }
    
        else
          g = { min: ranges[0][:extreme][:min], max: "#{ranges[0][:extreme][:max]}" }
        end
    
        if above_extreme.any?
          h = { min: ranges[0][:above_extreme][:min], max: "#{ranges[0][:above_extreme][:max]}" }
        else
          h = { min: ranges[0][:above_extreme][:min], max: "#{ranges[0][:above_extreme][:max]}" }
        end
        hu = {
          below_min: b,
          min: c,
          blow_max: d,
          max: e,
          above_max: f,
          extreme: g,
          above_extreme: h
        }
        a.push("data": hu)
        # ys = below_min.map { |e| e[:y] }
        # j =  Range.new *[ys.min, ys.max].map { |e| e.round(-e.round.to_s.length+1) }
        # u = max.first[:y].floor(-max.first[:y].round.to_s.length + 1)
        a
      end
    
    
      def map1(b, rain_fall_type, _views, _ji, unit1, ranges)
          #  abort(rain_fall_type)
          a = []
          below_min = []
          min = []
          blow_max = []
          max = []
          above_max = []
          extreme = []
          above_extreme = []
      
      
          b.map.with_index do |el,i|
      
              dist = el["Districts"]
      
            if (0..6) === i
              hash1 = { y: el[rain_fall_type], label: dist, color: "Red" }
              below_min.push(hash1)
            elsif (6..12) === i
              hash1 = { y: el[rain_fall_type], label: dist, color: "Orange" }
              # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
              min.push(hash1)
            elsif (12..18) === i
              hash1 = { y: el[rain_fall_type], label: dist, color: "Dark_Yellow" }
              # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
              blow_max.push(hash1)
            elsif (18..24) === i
              hash1 = { y: el[rain_fall_type], label: dist, color: "Yellow" }
              # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
              max.push(hash1)
      
            elsif (24..30) === i
              hash1 = { y: el[rain_fall_type], label: dist, color: "Light_Green" }
              # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
              above_max.push(hash1)
      
            elsif (30..36) === i
              hash1 = { y: el[rain_fall_type], label: dist, color: "Green" }
              # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
              extreme.push(hash1)
      
            elsif (36..40) === i
              hash1 = { y: el[rain_fall_type], label: dist, color: "Dark_Green" }
              # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
              above_extreme.push(hash1)
            else
            end
            # array.push(a)
          end
          a.push({"below_min": below_min})
          a.push({"min": min})
          a.push({"blow_max": blow_max})
          a.push({"max": max})
          a.push({"above_max": above_max})
          a.push({"extreme": extreme})
          a.push({"above_extreme": above_extreme})
          # array = [{name: "array"}]
          # sleep 1
      
          unit1 = ""
      
          if below_min.any?
            b = { min: below_min.first[:y], max: "#{below_min.last[:y]}" }
          else
            b = { min: below_min.first[:y], max: "#{below_min.last[:y]}" }
          end
      
          if min.any?
            c = { min: min.first[:y], max: "#{min.last[:y]}" }
          else
            c = { min: min.first[:y], max: "#{min.last[:y]}" }
          end
      
          if blow_max.any?
            d = { min: blow_max.first[:y], max: "#{blow_max.last[:y]}" }
          else
            d = { min: blow_max.first[:y], max: "#{blow_max.last[:y]}" }
          end
      
          if max.any?
            e = { min: max.first[:y], max: "#{max.last[:y]}" }
          else
            e = { min: max.first[:y], max: "#{max.last[:y]}" }
          end
      
          if above_max.any?
      
            f = { min: above_max.first[:y], max: "#{above_max.last[:y]}" }
      
          else
            f = { min: above_max.first[:y], max: "#{above_max.last[:y]}" } 
      
          end
      
          if extreme.any?
            g =  { min: extreme.first[:y], max: "#{extreme.last[:y]}" } 
      
          else
            g = { min: extreme.first[:y], max: "#{extreme.last[:y]}" } 
          end
      
          if above_extreme.any?
            h = { min: above_extreme.first[:y], max: "#{above_extreme.last[:y]}" }
          else
            h = {  }
          end
            hu = {
              below_min: b,
              min: c,
              blow_max: d,
              max: e,
              above_max: f,
              extreme: g,
              above_extreme: h
            }
          a.push("data": hu)
          return a
      end
    
      def map(b, rain_fall_type, _views, _ji)
        a = []
        below_min = []
        min = []
        blow_max = []
        max = []
        above_max = []
        extreme = []
        above_extreme = []
    
    
        b.map.with_index do |el,i|
    
            dist = el["Districts"]
    
          if (0..6) === i
            hash1 = { y: el[rain_fall_type], label: dist, color: "Red" }
            below_min.push(hash1)
          elsif (6..12) === i
            hash1 = { y: el[rain_fall_type], label: dist, color: "Orange" }
            # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
            min.push(hash1)
          elsif (12..18) === i
            hash1 = { y: el[rain_fall_type], label: dist, color: "Dark_Yellow" }
            # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
            blow_max.push(hash1)
          elsif (18..24) === i
            hash1 = { y: el[rain_fall_type], label: dist, color: "Yellow" }
            # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
            max.push(hash1)
    
          elsif (24..30) === i
            hash1 = { y: el[rain_fall_type], label: dist, color: "Light_Green" }
            # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
            above_max.push(hash1)
    
          elsif (30..36) === i
            hash1 = { y: el[rain_fall_type], label: dist, color: "Green" }
            # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
            extreme.push(hash1)
    
          elsif (36..40) === i
            hash1 = { y: el[rain_fall_type], label: dist, color: "Dark_Green" }
            # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
            above_extreme.push(hash1)
          else
          end
          # array.push(a)
        end
        a.push({"below_min": below_min})
        a.push({"min": min})
        a.push({"blow_max": blow_max})
        a.push({"max": max})
        a.push({"above_max": above_max})
        a.push({"extreme": extreme})
        a.push({"above_extreme": above_extreme})
        # array = [{name: "array"}]
        # sleep 1
    
        unit1 = ""
    
        if below_min.any?
          b = { min: below_min.first[:y], max: "#{below_min.last[:y].floor}" }
        else
          b = { min: below_min.first[:y], max: "#{below_min.last[:y].floor}" }
        end
    
        if min.any?
          c = { min: min.first[:y], max: "#{min.last[:y].floor}" }
        else
          c = { min: min.first[:y], max: "#{min.last[:y].floor}" }
        end
    
        if blow_max.any?
          d = { min: blow_max.first[:y], max: "#{blow_max.last[:y].floor}" }
        else
          d = { min: blow_max.first[:y], max: "#{blow_max.last[:y].floor}" }
        end
    
        if max.any?
          e = { min: max.first[:y], max: "#{max.last[:y].floor}" }
        else
          e = { min: max.first[:y], max: "#{max.last[:y].floor}" }
        end
    
        if above_max.any?
    
          f = { min: above_max.first[:y], max: "#{above_max.last[:y].floor}" }
    
        else
          f = { min: above_max.first[:y], max: "#{above_max.last[:y].floor}" } 
    
        end
    
        if extreme.any?
          g =  { min: extreme.first[:y], max: "#{extreme.last[:y].floor}" } 
    
        else
          g = { min: extreme.first[:y], max: "#{extreme.last[:y].floor}" } 
        end
    
        if above_extreme.any?
          h = { min: above_extreme.first[:y], max: "#{above_extreme.last[:y].floor}" }
        else
          h = {  }
        end
          hu = {
            below_min: b,
            min: c,
            blow_max: d,
            max: e,
            above_max: f,
            extreme: g,
            above_extreme: h
          }
        a.push("data": hu)
        return a
    end
    
    
    
    
    def map_ranges_manually(b,year,rain_fall_type,views)
      array = []
      # a = []
      l =  rain_fall_type.gsub(" ","")
    
    #    abort(rain_fall_type)
    
      if rain_fall_type == "All"
          u = 'Per_Capita_GDP'
      else
          u = 'Per_Capita_GDP'
            # abort(u)
      end
    
    #  abort(rain_fall_type)
      a = []
      below_min = []
      min = []
      blow_max = []
      max = []
      above_max = []
      extreme = []
      above_extreme = []
      if year == "2016"
    
       unit =  "mm"
    
        if rain_fall_type == "All"
          hu = {below_min: {min:  "500 #{unit}", max: 800},min: {min: 800, max: 1000}, blow_max:{min: 1000, max: 1200}, max:{min: 1200, max: 1300},above_max:{min: 1300, max: 1600},extreme:{min: 1600, max: 2000},above_extreme:{max: 2000}}
        elsif rain_fall_type == "Winter_Rain"
          hu = {below_min: {min: 0, max: 2.5},min: {min: 2.5, max: 5}, blow_max:{min: 5, max: 10}, max:{min: 10, max: 15},above_max:{min: 15, max: 20},extreme:{min: 20, max: 39},above_extreme:{max: 39}}
        elsif rain_fall_type == "Hot_Weather_Rain"
          hu = {below_min: {min: 0, max: "25 #{unit}"},min: {min: 25, max: 50}, blow_max:{min: 50, max: 80}, max:{min: 80, max: 110},above_max:{min: 110, max: 160},extreme:{min: 160, max: 250},above_extreme:{max: 250}}
    
        elsif rain_fall_type == "South_West_Monsoon"
          hu = {below_min: {min: 500, max: 600},min: {min: 600, max: 700}, blow_max:{min: 700, max: 900}, max:{min: 900, max: 1100},above_max:{min: 1100, max: 1400},extreme:{min: 1400, max: 1800},above_extreme:{max: 1800}}
        elsif rain_fall_type == "North_West_Monsoon"
          hu = {below_min: {min: 0, max: 10},min: {min: 10, max: 20}, blow_max:{min: 20, max: 40}, max:{min: 40, max: 60},above_max:{min: 60, max: 80},extreme:{min: 80, max: 120},above_extreme:{max: 120}}
        else        
        end
    
      elsif year == "2017"
        if rain_fall_type == "All"
          hu = {below_min: {min: 400, max: 600},min: {min: 600, max: 800}, blow_max:{min: 800, max: 1100}, max:{min: 1100, max: 1300},above_max:{min: 1300, max: 1600},extreme:{min: 1600, max: 2000},above_extreme:{max: 2000}}
        elsif rain_fall_type == "Winter_Rain"
          hu = {below_min: {min: 0, max: 0.5},min: {min: 0.5, max: 1}, blow_max:{min: 1, max: 3}, max:{min: 3, max: 5},above_max:{min: 5, max: 7},extreme:{min: 7, max: 9},above_extreme:{max: 9}}
        elsif rain_fall_type == "Hot_Weather_Rain"
          hu = {below_min: {min: 0, max: 25},min: {min: 25, max: 50}, blow_max:{min: 50, max: 80}, max:{min: 80, max: 110},above_max:{min: 110, max: 160},extreme:{min: 160, max: 250},above_extreme:{max: 250}}
    
        elsif rain_fall_type == "South_West_Monsoon"
          hu = {below_min: {min: 500, max: 600},min: {min: 600, max: 700}, blow_max:{min: 700, max: 900}, max:{min: 900, max: 1100},above_max:{min: 1100, max: 1400},extreme:{min: 1400, max: 1800},above_extreme:{max: 1800}}
        elsif rain_fall_type == "North_West_Monsoon"
          hu = {below_min: {min: 0, max: 10},min: {min: 10, max: 20}, blow_max:{min: 20, max: 40}, max:{min: 40, max: 60},above_max:{min: 60, max: 80},extreme:{min: 80, max: 120},above_extreme:{max: 120}}
        else
        end
        
      else
      end
      hu = {below_min: {min: 400, max: 600},min: {min: 600, max: 800}, blow_max:{min: 800, max: 1100}, max:{min: 1100, max: 1300},above_max:{min: 1300, max: 1600},extreme:{min: 1600, max: 2000},above_extreme:{max: 2000}}
    
      b.map.with_index do |el,i|
          dist = el["Districts"]
    
        if el[u] >=  hu[:below_min][:min].to_i and el[u] <= hu[:below_min][:max].to_i
       
        hash1 = { y: el[u], label: dist, color: "Red" }
        below_min.push(hash1)
       elsif el[u] > hu[:min][:min].to_i and el[u] <= hu[:min][:max].to_i
        
         hash1 = { y: el[u], label: dist, color: "Orange" }
          # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
          min.push(hash1)
    
      elsif el[u] > hu[:blow_max][:min].to_i and el[u] <= hu[:blow_max][:max]
       
           hash1 = { y: el[u], label: dist, color: "Dark_Yellow" }
          # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
          blow_max.push(hash1)
    
      elsif el[u] > hu[:max][:min].to_i and el[u] <= hu[:max][:max].to_i
       
           hash1 = { y: el[u], label: dist, color: "Yellow" }
          # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
          max.push(hash1)
    
      elsif el[u] > hu[:above_max][:min].to_i and el[u] <= hu[:above_max][:max].to_i
       
    
           hash1 = { y: el[u], label: dist, color: "Light_Green" }
          # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
          above_max.push(hash1)
    
      elsif el[u] > hu[:extreme][:min].to_i and el[u] <= hu[:extreme][:max].to_i
       
           hash1 = { y: el[u], label: dist, color: "Green" }
          # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
          extreme.push(hash1)
      elsif el[u] > hu[:above_extreme][:min].to_i
       
           hash1 = { y: el[u], label: dist, color: "Dark_Green" }
          # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
          above_extreme.push(hash1)
        end
    
        # array.push(a)
      end
      a.push({"below_min": below_min})
      a.push({"min": min})
      a.push({"blow_max": blow_max})
      a.push({"max": max})
      a.push({"above_max": above_max})
      a.push({"extreme": extreme})
      a.push({"above_extreme": above_extreme})
      # array = [{name: "array"}]
      # sleep 1
      
      a.push({"data": hu})
      return a
    end

end