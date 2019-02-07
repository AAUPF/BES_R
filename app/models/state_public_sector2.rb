class StatePublicSector2 < ApplicationRecord
  include Newmodulefunctions
        def self.import1(file)
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
      
        def self.search(search,compare,year,rain_fall_type)
          
          if search == "All" and rain_fall_type == "All"
            all
          elsif search == "All" and compare == "None"
              if compare == "None"
                  if search == "All"
                    select(rain_fall_type,"Type_of_Company_or_corporation")
                  else
                    select(rain_fall_type). where("Type_of_Company_or_corporation = ?", search)
                  end
              else
                  select(rain_fall_type,"Type_of_Company_or_corporation")
              end
          else
               if compare == "None"
                  if rain_fall_type == "All"
                    where("Type_of_Company_or_corporation = ?", search)
                  else
                  select(rain_fall_type,"Type_of_Company_or_corporation").where("Type_of_Company_or_corporation = ?", search)
                  end

               else

                if search == "All"
                  select(rain_fall_type,compare,"Type_of_Company_or_corporation")
                else
                  where("Type_of_Company_or_corporation = ?", search)
                end

               end
          end
      end
      
        # Logic to generate table starts
        
      def self.table (b,rain_fall_type,year,ji,compare)
          dataset = rain_fall_type.gsub("_"," ");
          dataset_compare = compare.gsub("_"," ");
          if rain_fall_type == "All"
            hash_data = ji.map do |el|
                if el.to_s == "Type_of_Company_or_corporation"
                  
                  {title:"Type of Company/Corporation", field:el,headerFilter:true}
                else
                  {title:el.to_s.gsub("_"," "), field:el}
                end
              end
          else
      
          if compare == "None"
            hash_data = [
              {title:"Type of Company/Corporation", field:"Type_of_Company_or_corporation",headerFilter:true},
              {title:dataset, field:rain_fall_type}
      
          ]
          else
            hash_data = [{title:"Type of Company/Corporation", field:"Type_of_Company_or_corporation",headerFilter:true},
              {title:dataset, field:rain_fall_type},
            {title:dataset_compare, field:compare}
          ]
          end
      end
          data = {column: hash_data,data: b}
          return data
    end

        # Logic to generate table end
      
        def self.map_search(search, _compare, _year, rain_fall_type)
          if search == 'All'
            if rain_fall_type == 'All'
              order(:id)
            else
              order(rain_fall_type)
            end
      
          else
            # where(Type_of_Company_or_corporation: search)
            order(rain_fall_type)
          end
        end
      
      def self.query(b,year,rain_fall_type,views,ji,compare,search)

          
            d = "Districts"
  
            if views == "pie"
              
              color = "none"
            else
              color = "#4f81bc"
            end
            if search == "All" && rain_fall_type == "All"

              title = Newmodulefunctions.search_all_rainfalltype_all(color,rain_fall_type,b,ji,compare,views)
    
            elsif search == "All"
              testvariable = "Type_of_Company_or_corporation"
              if compare != "None"
              ji1 = [rain_fall_type,compare]
                hash_data = ji1.map do |col|
    
                  dataset = col.to_s.gsub("_"," ")
    
                  {
              
                    type:views,
                    toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                    name:dataset,
                    legendText: dataset,
                    showInLegend: true,
                    dataPoints: b.reject{|x| x[testvariable]== "Total"}.map do |el|
                         { y: el[col], label: el[testvariable] }
                    end
                  }
                end
    
              else

               
    
                dataset = rain_fall_type.tr('_', ' ')
                        hash_data =  b.reject{|x| x["Type_of_Company_or_corporation"]== "Total"}.map do |el|
                        {
                            type:views,
                            toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                            name:"#{el[testvariable]}",
                            legendText:"#{el[testvariable]}",
                            showInLegend: true,
                            dataPoints: [{ y: el[rain_fall_type], label:  dataset }]
                        }
                end
              end
            # logic of if starts here
              if compare == "None"
                  name =  "#{rain_fall_type.to_s.gsub("_"," ")}"
              else
                  name =  "#{rain_fall_type.to_s.gsub("_"," ")} vs. #{compare.to_s.gsub("_"," ")}"
              end
    
           # logic of if end here
    
              title = {
                          animationEnabled: true,
                          exportEnabled: true,
                          title:{
                            text: name
                                },
                          data: hash_data
                      }
    
              return title
            else

              if compare
    
                if rain_fall_type == "All"
                  # ji = [rain_fall_type,compare]
    
                  hash_data =  ji.map do |col|
                    {
                      type:views,
                      toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                      name:col.to_s.gsub("_"," "),
                      legendText: col.to_s.gsub("_"," "),
                      showInLegend: true,
                      dataPoints: b.map do |el|
                           { y: el[col], label: el["Type_of_Company_or_corporation"] }
                      end
                    }
                  end
                  title = {
                    animationEnabled: true,
                    exportEnabled: true,
                    title:{
                             text: "#{rain_fall_type.to_s.gsub("_"," ")}"
                          },
                    data: hash_data
                }
    
                  return title
                else

                
                    if compare == "None"
                          ji1 = [rain_fall_type]
                          hash_data =  ji1.map do |col|
                            {
                              type:views,
                              toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                              name:col.to_s.gsub("_"," "),
                              legendText: col.to_s.gsub("_"," "),
                              showInLegend: true,
                              dataPoints: b.map do |el|
                                    { y: el[col], label: el["Type_of_Company_or_corporation"] }
                              end
                            }
                          end
                          title = {
                            animationEnabled: true,
                            exportEnabled: true,
                            title:{
                              text: name
                                  },
                            data: hash_data
                        }
    
                return title
                    else
    
    
                   ji1 = [rain_fall_type,compare]
    
                   hash_data =  ji1.map do |col|
                     {
                       type:views,
                       toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                       name:col.to_s.gsub("_"," "),
                       legendText: col.to_s.gsub("_"," "),
                       showInLegend: true,
                       dataPoints: b.map do |el|
                            { y: el[col], label: el["Type_of_Company_or_corporation"] }
                       end
                     }
                   end
                   title = {
                    animationEnabled: true,
                    exportEnabled: true,
                    title:{
                             text: "#{rain_fall_type.to_s.gsub("_"," ")} vs. #{compare.to_s.gsub("_"," ")}"
                          },
                    data: hash_data
                }
    
                    end
    
                  return title
                end
    
    
              else
    
                b.each do |element|
                  hash1 = {:y => element[rain_fall_type] ,:label => element["Type_of_Company_or_corporation"]}
                  array.push(hash1)
                end
    
                return array
              end
    
            end
          end
      
        def self.map1(b, rain_fall_type, _views, _ji, unit1,ranges)
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
            dist = el['Type_of_Company_or_corporation']
      
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
          array3 = [below_min, min, blow_max, max, above_max, extreme, above_extreme]
      
          if below_min.any?
            b = { min: ranges[0][:below_min][:min], max: "#{ranges[0][:below_min][:max]}, #{unit1}" }
          else
            b = { min: ranges[0][:below_min][:min], max: "#{ranges[0][:below_min][:max]}, #{unit1}" }
          end
      
          if min.any?
            c = { min: ranges[0][:min][:min], max: "#{ranges[0][:min][:max]}, #{unit1}" }
          else
            c = { min: ranges[0][:min][:min], max: "#{ranges[0][:min][:max]}, #{unit1}" }
          end
      
          if blow_max.any?
            d = { min: ranges[0][:blow_max][:min], max: "#{ranges[0][:blow_max][:max]}, #{unit1}" }
          else
            d = { min: ranges[0][:blow_max][:min], max: "#{ranges[0][:blow_max][:max]}, #{unit1}" }
          end
      
          if max.any?
            e = { min: ranges[0][:max][:min], max: "#{ranges[0][:max][:max]}, #{unit1}" } 
          else
            e = { min: ranges[0][:max][:min], max: "#{ranges[0][:max][:max]}, #{unit1}" } 
          end
      
          if above_max.any?
      
            f = { min: ranges[0][:above_max][:min], max: "#{ranges[0][:above_max][:max]}, #{unit1}" } 
      
          else
            f = { min: ranges[0][:above_max][:min], max: "#{ranges[0][:above_max][:max]}, #{unit1}" } 
      
          end
      
          if extreme.any?
            g = { min: ranges[0][:extreme][:min], max: "#{ranges[0][:extreme][:max]}, #{unit1}" } 
      
          else
            g = { min: ranges[0][:extreme][:min], max: "#{ranges[0][:extreme][:max]}, #{unit1}" } 
          end
      
          if above_extreme.any?
            h = { min: ranges[0][:above_extreme][:min], max: "#{ranges[0][:above_extreme][:max]}, #{unit1}" }
          else
            h = { min: ranges[0][:above_extreme][:min], max: "#{ranges[0][:above_extreme][:max]}, #{unit1}" }
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
          #   ys = below_min.map { |e| e[:y] }
          # j =  Range.new *[ys.min, ys.max].map { |e| e.round(-e.round.to_s.length+1) }
      
          # u = max.first[:y].floor(-max.first[:y].round.to_s.length + 1)
      
          
      
         return a
        end
      
      
      
      
        def self.map(b, rain_fall_type, _views, _ji)
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
      
              dist = el["Type_of_Company_or_corporation"]
      
            if (0..6) === i
              hash1 = { y: el[rain_fall_type], label: dist, color: "Red" }
              below_min.push(hash1)
            elsif (6..12) === i
              hash1 = { y: el[rain_fall_type], label: dist, color: "Orange" }
              # hash1 = { y: el[rain_fall_type], label: el["Type_of_Company_or_corporation"] }
              min.push(hash1)
            elsif (12..18) === i
              hash1 = { y: el[rain_fall_type], label: dist, color: "Dark_Yellow" }
              # hash1 = { y: el[rain_fall_type], label: el["Type_of_Company_or_corporation"] }
              blow_max.push(hash1)
            elsif (18..24) === i
              hash1 = { y: el[rain_fall_type], label: dist, color: "Yellow" }
              # hash1 = { y: el[rain_fall_type], label: el["Type_of_Company_or_corporation"] }
              max.push(hash1)
      
            elsif (24..30) === i
              hash1 = { y: el[rain_fall_type], label: dist, color: "Light_Green" }
              # hash1 = { y: el[rain_fall_type], label: el["Type_of_Company_or_corporation"] }
              above_max.push(hash1)
      
            elsif (30..36) === i
              hash1 = { y: el[rain_fall_type], label: dist, color: "Green" }
              # hash1 = { y: el[rain_fall_type], label: el["Type_of_Company_or_corporation"] }
              extreme.push(hash1)
      
            elsif (36..40) === i
              hash1 = { y: el[rain_fall_type], label: dist, color: "Dark_Green" }
              # hash1 = { y: el[rain_fall_type], label: el["Type_of_Company_or_corporation"] }
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
      