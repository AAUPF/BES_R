module Doctordata
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
  
    def search(search,compare,year,rain_fall_type)
      if search == "All"
            if rain_fall_type == "All"
              where(Year: year).order('id ')
            else
              where(Year: year).order("#{rain_fall_type} ")
            end
      elsif compare == "Bihar vs District"
          where("Name_of_the_Post = ? OR Name_of_the_Post = ?", search, "Bihar").where("year = ?", year).order(:id)
      else
            if rain_fall_type == "All"
              where("Name_of_the_Post = ? ", search).where("year = ?", year).order(:id)
           else
              where("Name_of_the_Post = ? ", search).where("year = ?", year).order(rain_fall_type)
          end
      end
    end
  
  
  
      # Logic to generate table starts
      def table (b,rain_fall_type,year,ji,compare)
        dataset = rain_fall_type.gsub("_"," ")
  
        if rain_fall_type == "All"
  
          hash_data = ji.map do |el|
            if el.to_s == "Name_of_the_Post"
              {title:"Post", field:el,headerFilter:true}
            else
              {title:el.to_s.gsub("_"," "), field:el}
            end
  
             end
        else
        if compare == "None"
          hash_data = [
            {title:"Post", field:"Name_of_the_Post",headerFilter:true },
            {title:dataset, field:rain_fall_type }
        ]
        else
          hash_data = [
          # {title:compare, field:compare, sorter:"string", },
          {title:"Post", field:"Name_of_the_Post",headerFilter:true},
  
            {title:dataset, field:rain_fall_type}
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
        # where(Name_of_the_Post: search)
        where(Year: year).order(rain_fall_type)
      end
    end
  
  
    def query(b,year,rain_fall_type,views,ji,compare)
      d = "Name_of_the_Post"
      if rain_fall_type == "All"
        if views 
          hash_data =  ji.map do |column_name|
            if compare =="Bihar vs District"
                dataset = column_name.to_s.gsub("_"," ")
            {
              type:views,
              legendText: dataset,
              showInLegend: true,
              dataPoints: b.map do |el|
                { y: el[column_name],z:el[column_name], label: el[d] }
              end
            }
            else
              dataset = column_name.to_s.gsub("_"," ")
            {
              type:views,
              legendText: dataset,
              showInLegend: true,
              dataPoints: b.reject{|x| x["Name_of_the_Post"]== "Bihar"}.map do |el|
                { y: el[column_name],z:el[column_name], label: el[d] }
              end
            }
            end
  
          end
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
        if compare == "Bihar vs District"
            dataset = rain_fall_type.gsub("_"," ")
  
          hash_data =
          [{
            type:views,
           
            legendText: dataset,
            showInLegend: true,
            dataPoints: b.map do |el|
                 { y: el[rain_fall_type], label: el["Name_of_the_Post"] }
            end
          }]
        else
            dataset = rain_fall_type.gsub("_"," ")
          hash_data =
          [{
            type:views,
           
            legendText: dataset,
            showInLegend: true,
            dataPoints: b.reject{|x| x["Name_of_the_Post"]== "Bihar"}.map do |el|
                 { y: el[rain_fall_type], label: el["Name_of_the_Post"] }
            end
          }]
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
      end
  end
  
  
  
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
  
          dist = el["Name_of_the_Post"]
  
        if (0..7) === i
          hash1 = { y: el[rain_fall_type], label: dist, color: "Red" }
          below_min.push(hash1)
        elsif (7..15) === i
          hash1 = { y: el[rain_fall_type], label: dist, color: "Orange" }
          # hash1 = { y: el[rain_fall_type], label: el["Name_of_the_Post"] }
          min.push(hash1)
        elsif (15..21) === i
          hash1 = { y: el[rain_fall_type], label: dist, color: "Dark_Yellow" }
          # hash1 = { y: el[rain_fall_type], label: el["Name_of_the_Post"] }
          blow_max.push(hash1)
        elsif (21..26) === i
          hash1 = { y: el[rain_fall_type], label: dist, color: "Yellow" }
          # hash1 = { y: el[rain_fall_type], label: el["Name_of_the_Post"] }
          max.push(hash1)
  
        elsif (26..32) === i
          hash1 = { y: el[rain_fall_type], label: dist, color: "Light_Green" }
          # hash1 = { y: el[rain_fall_type], label: el["Name_of_the_Post"] }
          above_max.push(hash1)
  
        elsif (32..37) === i
          hash1 = { y: el[rain_fall_type], label: dist, color: "Green" }
          # hash1 = { y: el[rain_fall_type], label: el["Name_of_the_Post"] }
          extreme.push(hash1)
  
        elsif (36..40) === i
          hash1 = { y: el[rain_fall_type], label: dist, color: "Dark_Green" }
          # hash1 = { y: el[rain_fall_type], label: el["Name_of_the_Post"] }
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