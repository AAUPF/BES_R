module Newenterprisestate


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
    
      def search(search, compare, year, rain_fall_type,legend)
        if search == 'All'
          if rain_fall_type == 'All'
            where(Year: year).order('id ')
          else
            if year == "All"
              all.order(:id)
            else
              where(Year: year).order("#{rain_fall_type} ")
            end
            # where(Year: year).order("#{rain_fall_type} ")
          end
        elsif compare == "Bihar vs State"
          if year == "All"
            # where('State = ? OR State = ?', search, 'Bihar').order(:id)
            where("#{legend} = ? OR #{legend} = ?", search, 'Bihar').order(:id)
            
          else
            # where('State = ? OR State = ?', search, 'Bihar').where('year = ?', year).order(:id)
            where("#{legend} = ? OR #{legend} = ?", search, 'Bihar').where('year = ?', year).order(:id)
          end
          
        else
          if rain_fall_type == 'All'
            where("#{legend} = ? ", search).where('year = ?', year).order(:id)
          else
            if year == "All"
              where("#{legend} = ? ", search).order("id")
            else
              where("#{legend} = ? ", search).where('year = ?', year).order(rain_fall_type)
            end
            
             
          end
        end
      end
    
    
      def table(b, rain_fall_type, _year, ji, compare,legend)
          dataset = rain_fall_type.tr('_', ' ')
      
          if rain_fall_type 
      
            hash_data = ji.map do |el|
              if el.to_s == legend
                { title: legend.tr('_', ' '), field: el, headerFilter: true }
              else
                { title: el.to_s.tr('_', ' '), field: el }
              end
            end
          else
            if compare == 'None'
              hash_data = [
                { title: legend.tr('_', ' '), field: legend, headerFilter: true },
                { title: dataset, field: rain_fall_type }
              ]
            else
    
              hash_data = [
                # {title:compare, field:compare, sorter:"string", },
                { title: legend.tr('_', ' '), field: legend, headerFilter: true },
      
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
              grouped[x["#{legend}"]] ||= {}
              grouped[x["#{legend}"]]["#{legend}"] = x["#{legend}"]
              grouped[x["#{legend}"]][x[:Year]] = x["#{rain_fall_type}"]
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
          # where(State: search)
          where(Year: year).order(rain_fall_type)
        end
      end
    
      def query(b, _year, rain_fall_type, views, ji, compare,search,legend)
        d = legend
        color  = "#4f81bc"
        if rain_fall_type == 'All'
          if views
            hash_data = ji.map do |column_name|
              if compare
                dataset = column_name.to_s.tr('_', ' ')
                {
                  type: views,
                  toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                  name:dataset,
                  legendText: dataset,
                  showInLegend: true,
                  dataPoints: b.map do |el|
                    { y: el[column_name], z: el[column_name], label: el[d] }
                              end
                }
              else
                dataset = column_name.to_s.tr('_', ' ')
                {
                  type: views,
                  toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                  name:dataset,
                  legendText: dataset,
                  showInLegend: true,
                  dataPoints: b.map do |el|
                    { y: el[column_name], z: el[column_name], label: el[d] }
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
                    # axisX: {
                    #   interval:1,
                    #   labelMaxWidth: 180,
                    #   labelAngle: 90,
                    #   labelFontFamily:"verdana0"
                    #   },
              data: hash_data
          }
          end
          return title
        else
          if compare == "None"
              
            if _year == "All"
              grouped_data = b.group_by{ |data| data["#{legend}"]}
              if search == "All"
                h = b.group_by{ |data| data["#{legend}"]}
                hash_data = h.map{ |vegetable, values| 
                  dataset = vegetable.to_s.gsub("_"," ")
                 {
                  type: views,
                  toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                  name:dataset,
                  legendText: dataset,
                  showInLegend: true,
                  dataPoints: values.map { |value|
                  { y: value[rain_fall_type], label: value["Year"] }
                  }
                  }
                  }
              else

                if views != "column" && views!="line" && views!="scatter"
                  dataset = rain_fall_type.tr('_', ' ')
                  hash_data =  b.map do |el|
                    {
                      type:views,
                      toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                      name:"#{el["Year"]}",
                      legendText:"#{el["Year"]}",
                      showInLegend: true,
                      dataPoints: [{ y: el[rain_fall_type], label:  el["#{legend}"] }]
                  }
      
                  end
                else
                  hash_data = grouped_data.map{ |vegetable, values| 
                  dataset = vegetable.to_s.gsub("_"," ")
                  {
                  type: views,
                  color:color,
                  toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                  legendText: dataset,
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

             if views != "column" && views!="line" && views!="scatter"
              
              dataset = rain_fall_type.tr('_', ' ')
              hash_data =  b.map do |el|
                {
                  type:views,
                  toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                  name:"#{el["#{legend}"]}",
                  legendText:"#{el["#{legend}"]}",
                  showInLegend: true,
                  dataPoints: [{ y: el[rain_fall_type], label:  el["Year"] }]
              }
  
              end
          
            else
                dataset = rain_fall_type.tr('_', ' ')
                hash_data =
                [{
                  type: views,
                  color: color,
                  legendText: dataset,
                  showInLegend: true,
                  dataPoints: b.map do |el|
                                { y: el[rain_fall_type], label: el["#{legend}"] }
                              end
                }]
            end

            end
            
          else
              if _year == "All"
                  grouped_data = b.group_by{ |data| data["#{legend}"]}
                  if search == "All"
                    h = b.group_by{ |data| data["#{legend}"]}
                    hash_data = h.map{ |vegetable, values| 
                      dataset = vegetable.to_s.gsub("_"," ")
                     {
                      type: views,
                      toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                      name:dataset,
                      legendText: dataset,
                      showInLegend: true,
                      dataPoints: values.map { |value|
                      { y: value[rain_fall_type], label: value["Year"] }
                      }
                      }
                      }
                  else
                    h = grouped_data
                    hash_data = h.map{ |vegetable, values| 
                      dataset = vegetable.to_s.gsub("_"," ")
                     {
                      type: views,
                      toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                      name:dataset,
                      legendText: dataset,
                      showInLegend: true,
                      dataPoints: values.map { |value|
                      { y: value[rain_fall_type], label: value["Year"] }
                      }
                      }
                      }
                  end
                else
                dataset = rain_fall_type.tr('_', ' ')
                hash_data =  b.map do |el|
                  {
                    type:views,
                    toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                    name:"#{el["#{legend}"]}",
                    legendText:"#{el["#{legend}"]}",
                    showInLegend: true,
                    dataPoints: [{ y: el[rain_fall_type], label:  el["Year"] }]
                }
    
                end

                end
          end

          if compare == "None"
            name =  "#{rain_fall_type.to_s.gsub("_"," ")}"
        else
            name =  "#{search.to_s.gsub("_"," ")} vs. Bihar"
        end

          if views == "stackedBar100" or views == "stackedBar"
            title = {
              animationEnabled: true,
              exportEnabled: true,
              title:{
                text: name
                    },
              data: hash_data
          }
         
          else
              
            title = {
              animationEnabled: true,
              exportEnabled: true,
              title:{
                text: name
                    },
                    # axisX: {
                    #   interval:1,
                    #   labelMaxWidth: 180,
                    #   labelAngle: 90,
                    #   labelFontFamily:"verdana0"
                    #   },
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
          dist = el['State']
    
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
      
              dist = el["State"]
      
            if (0..6) === i
              hash1 = { y: el[rain_fall_type], label: dist, color: "Red" }
              below_min.push(hash1)
            elsif (6..12) === i
              hash1 = { y: el[rain_fall_type], label: dist, color: "Orange" }
              # hash1 = { y: el[rain_fall_type], label: el["State"] }
              min.push(hash1)
            elsif (12..18) === i
              hash1 = { y: el[rain_fall_type], label: dist, color: "Dark_Yellow" }
              # hash1 = { y: el[rain_fall_type], label: el["State"] }
              blow_max.push(hash1)
            elsif (18..24) === i
              hash1 = { y: el[rain_fall_type], label: dist, color: "Yellow" }
              # hash1 = { y: el[rain_fall_type], label: el["State"] }
              max.push(hash1)
      
            elsif (24..30) === i
              hash1 = { y: el[rain_fall_type], label: dist, color: "Light_Green" }
              # hash1 = { y: el[rain_fall_type], label: el["State"] }
              above_max.push(hash1)
      
            elsif (30..36) === i
              hash1 = { y: el[rain_fall_type], label: dist, color: "Green" }
              # hash1 = { y: el[rain_fall_type], label: el["State"] }
              extreme.push(hash1)
      
            elsif (36..40) === i
              hash1 = { y: el[rain_fall_type], label: dist, color: "Dark_Green" }
              # hash1 = { y: el[rain_fall_type], label: el["State"] }
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
    
            dist = el["State"]
    
          if (0..6) === i
            hash1 = { y: el[rain_fall_type], label: dist, color: "Red" }
            below_min.push(hash1)
          elsif (6..12) === i
            hash1 = { y: el[rain_fall_type], label: dist, color: "Orange" }
            # hash1 = { y: el[rain_fall_type], label: el["State"] }
            min.push(hash1)
          elsif (12..18) === i
            hash1 = { y: el[rain_fall_type], label: dist, color: "Dark_Yellow" }
            # hash1 = { y: el[rain_fall_type], label: el["State"] }
            blow_max.push(hash1)
          elsif (18..24) === i
            hash1 = { y: el[rain_fall_type], label: dist, color: "Yellow" }
            # hash1 = { y: el[rain_fall_type], label: el["State"] }
            max.push(hash1)
    
          elsif (24..30) === i
            hash1 = { y: el[rain_fall_type], label: dist, color: "Light_Green" }
            # hash1 = { y: el[rain_fall_type], label: el["State"] }
            above_max.push(hash1)
    
          elsif (30..36) === i
            hash1 = { y: el[rain_fall_type], label: dist, color: "Green" }
            # hash1 = { y: el[rain_fall_type], label: el["State"] }
            extreme.push(hash1)
    
          elsif (36..40) === i
            hash1 = { y: el[rain_fall_type], label: dist, color: "Dark_Green" }
            # hash1 = { y: el[rain_fall_type], label: el["State"] }
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
    
    
end