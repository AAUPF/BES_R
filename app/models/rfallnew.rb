module Rfallnew
    # extend Code
  
    def import1(file)
      spreadsheet = Roo::Spreadsheet.open(file.path)
             header = spreadsheet.row(1)
             (2..spreadsheet.last_row).each do |i|
               row = Hash[[header, spreadsheet.row(i)].transpose]
               puts row.to_hash
               product = find_by(id: row["id"]) || new
               product.attributes = row.to_hash
               product.save!
             end
    end
  
  
  
  
    # search query starts here
    def search(search,compare,year,rain_fall_type)
  
      # if block starts here
      if search == "All"
           # if block starts here
            if rain_fall_type == "All"
              where(Year: year).order('id ')
            else
              where(Year: year).order("#{rain_fall_type} ")
            end
             # if block end here
      elsif compare == "Bihar vs District"
          where("Districts = ? OR Districts = ?", search, "Bihar").where("year = ?", year).order(:id)
      else
            # if block starts here
  
            if rain_fall_type == "All"
              where("Districts = ? ", search).where("year = ?", year).order(:id)
            else
              where("Districts = ? ", search).where("year = ?", year).order(rain_fall_type)
            end
              # if block end here
  
      end
      # if block end here
  
  
    end
    # search query end here
  
  
  
      # Logic to generate table starts
      def table (b,rain_fall_type,year,ji,compare)
        if rain_fall_type == "All"
          hash_data = ji.map do |el|
            {title:el, field:el, sorter:"string", editor:true}
             end
        else
            if compare == "None"
              hash_data = [
                {title:"Year", field:"Year", sorter:"string",  editor:true},
                {title:rain_fall_type, field:rain_fall_type, sorter:"string", editor:true},
                {title:"Districts", field:"Districts", sorter:"string", editor:true}
            ]
            else
              hash_data = [
              # {title:compare, field:compare, sorter:"string", editor:true},
                {title:"Year", field:"Year", sorter:"string", editor:true},
                {title:rain_fall_type, field:rain_fall_type, sorter:"string", editor:true},
                {title:"Districts", field:"Districts", sorter:"string", editor:true}
            ]
            end
        end
          data = {column: hash_data,data: b}
          return data
      end
            # Logic to generate table end
  
  
  
  
  
  
    def map_search(search,compare,year,rain_fall_type)
      if search == "All"
        if rain_fall_type == "All"
          where(Year: year).order(:id)
        else
          where(Year: year).order(rain_fall_type)
        end
  
  
      else
        # where(Districts: search)
        where(Year: year).order(rain_fall_type)
      end
    end
  
    
  
  
    def query(b,year,rain_fall_type,views,ji,compare)
      #  return b
        # l =  rain_fall_type.gsub(" ","")
        # abort(rain_fall_type)
        d = "Districts"
  
  
        if views == "pie"
          color = "#4f81bc"
        else
        color = "#4f81bc"
        end
  
  
        if year == "All" && rain_fall_type == "All"
          hash_data =  ji.map do |column_name|
            if compare == "none"
            {
              type:views,
              legendText: column_name,
              color: color,
              showInLegend: true,
              dataPoints: b.map do |el|
                { y: el[column_name],z:el[rain_fall_type], label: rain_fall_type }
              end
            }
            else
  
            {
              type:views,
              legendText: column_name,
              showInLegend: true,
              dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
                   { y: el[column_name],z:el[column_name], label: el["Year"] }
              end
            }
            end
          end
  
  
        elsif year == "All"
  
  
  
          if compare != "None"
  
          ji1 = [rain_fall_type,compare]
            hash_data = ji1.map do |col|
              {
                type:views,
                legendText: col,
                showInLegend: true,
                dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
                     { y: el[col], label: el["Year"] }
                end
              }
            end
  
          else
  
            hash_data =
            [{
              type:views,
              color: color,
              legendText: rain_fall_type,
              showInLegend: true,
              dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
                   { y: el[rain_fall_type], label: el["Year"] }
              end
            }]
          end
  
  
  
          return hash_data
        else
          array = []
  
          if compare
  
            if rain_fall_type == "All"
              # ji = [rain_fall_type,compare]
              hash_data =  ji.map do |col|
                {
                  type:views,
                  legendText: col,
                  showInLegend: true,
                  dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
                       { y: el[col], label: el["Year"] }
                  end
                }
              end
  
              return hash_data
  
            else
              # b.each do |element|
              #   hash1 = {:y => element[rain_fall_type] ,:label => rain_fall_type}
              #   hash2 = {:y => element[compare] ,:label => compare}
              #   array.push(hash1)
              #   array.push(hash2)
              # end
              # return array
                if compare == "None"
                      ji1 = [rain_fall_type]
                      hash_data =  ji1.map do |col|
                        {
                          type:views,
                          legendText: col,
                          showInLegend: true,
                          dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
                                { y: el[col], label: el["Year"] }
                          end
                        }
                      end
                else
  
  
               ji1 = [rain_fall_type,compare]
               hash_data =  ji1.map do |col|
                 {
                   type:views,
                   legendText: col,
                   showInLegend: true,
                   dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
                        { y: el[col], label: el["Year"] }
                   end
                 }
               end
  
                end
  
              return hash_data
            end
  
  
          else
            b.each do |element|
              hash1 = {:y => element[rain_fall_type] ,:label => element["Year"]}
              array.push(hash1)
            end
            return array
          end
  
        end
      end
  
  
  
      # def query(b,year,rain_fall_type,views,ji,compare)
      #     d = "Districts"
      #     if rain_fall_type == "All"
      #       if views == "Trend Line"
      #         hash_data =  ji.map do |column_name|
      #           if compare =="Bihar vs District"
  
      #           {
      #             type:"line",
      #             legendText: column_name,
      #             showInLegend: true,
      #             dataPoints: b.map do |el|
      #               { y: el[column_name],z:el[column_name], label: el[d] }
      #             end
      #           }
      #           else
  
      #           {
      #             type:"line",
      #             legendText: column_name,
      #             showInLegend: true,
      #             dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
      #               { y: el[column_name],z:el[column_name], label: el[d] }
      #             end
      #           }
      #           end
  
      #         end
      #       elsif views == "Bubble"
      #         hash_data =  ji.map do |column_name|
      #           if compare =="Bihar vs District"
  
      #           {
      #             type:"bubble",
      #             legendText: column_name,
      #             showInLegend: true,
      #             dataPoints: b.map do |el|
      #               { y: el[column_name],z:el[column_name], label: el[d] }
      #             end
      #           }
      #           else
  
      #           {
      #             type:"bubble",
      #             legendText: column_name,
      #             showInLegend: true,
      #             dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
      #               { y: el[column_name],z:el[column_name], label: el[d] }
      #             end
      #           }
      #           end
  
      #         end
      #       else
      #         hash_data =  ji.map do |column_name|
      #           if compare =="Bihar vs District"
  
      #           {
      #             type:"column",
      #             legendText: column_name,
      #             showInLegend: true,
      #             dataPoints: b.map do |el|
      #               { y: el[column_name],z:el[column_name], label: el[d] }
      #             end
      #           }
      #           else
  
      #           {
      #             type:"column",
      #             legendText: column_name,
      #             showInLegend: true,
      #             dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
      #               { y: el[column_name],z:el[column_name], label: el[d] }
      #             end
      #           }
      #           end
  
      #         end
      #       end
      #         return hash_data
      #     else
      #       array = []
  
      #       if compare == "Bihar vs District"
      #         b.each do |element|
      #           hash1 = {:y => element[rain_fall_type] ,:label => element[d]}
      #           array.push(hash1)
      #         end
      #       else
      #         b.reject{|x| x["Districts"]== "Bihar"}.each do |element|
      #           hash1 = {:y => element[rain_fall_type] ,:label => element[d]}
      #           array.push(hash1)
      #         end
      #       end
      #       return array
      #     end
      # end
  
  
  
    def map(b,rain_fall_type,views,ji)
      array = []
      # a = []
      l =  rain_fall_type.gsub(" ","")
  
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
  
        if (0..7) === i
          hash1 = { y: el[rain_fall_type], label: dist, color: "Red" }
          below_min.push(hash1)
        elsif (7..15) === i
          hash1 = { y: el[rain_fall_type], label: dist, color: "Orange" }
          # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
          min.push(hash1)
        elsif (15..21) === i
          hash1 = { y: el[rain_fall_type], label: dist, color: "Dark_Yellow" }
          # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
          blow_max.push(hash1)
        elsif (21..26) === i
          hash1 = { y: el[rain_fall_type], label: dist, color: "Yellow" }
          # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
          max.push(hash1)
  
        elsif (26..32) === i
          hash1 = { y: el[rain_fall_type], label: dist, color: "Light_Green" }
          # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
          above_max.push(hash1)
  
        elsif (32..37) === i
          hash1 = { y: el[rain_fall_type], label: dist, color: "Green" }
          # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
          extreme.push(hash1)
  
        elsif (36..40) === i
          hash1 = { y: el[rain_fall_type], label: dist, color: "Dark_Green" }
          # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
          above_extreme.push(hash1)
        else
  
          puts "Hello"
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
      return a
    end
  
  
  
    end
  