module Rainfallnewmap
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
        where("Districts = ? OR Districts = ?", search, "Bihar").where("year = ?", year).order(:id)
    else
          if rain_fall_type == "All"
            where("Districts = ? ", search).where("year = ?", year).order(:id)
         else
            where("Districts = ? ", search).where("year = ?", year).order(rain_fall_type)
          end
    end
  end



    # Logic to generate table starts
    def table (b,rain_fall_type,year,ji,compare)
      dataset = rain_fall_type.gsub("_"," ")

      if rain_fall_type == "All"
        
        hash_data = ji.map do |el|
          if el.to_s == "Districts"
            {title:"District", field:el,headerFilter:true}
          else
            {title:el.to_s.gsub("_"," "), field:el}
          end
         
           end
      else
      if compare == "None"
        hash_data = [
          {title:"District", field:"Districts" },
          {title:dataset, field:rain_fall_type },
      ]
      else
        hash_data = [
        # {title:compare, field:compare, sorter:"string", },
        {title:"District", field:"Districts"},
          {title:dataset, field:rain_fall_type},
          
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
        where(Year: year).order("Total")
      else
        where(Year: year).order(rain_fall_type)
      end
    else
      # where(Districts: search)
      where(Year: year).order(rain_fall_type)
    end
  end


    def query(b,year,rain_fall_type,views,ji,compare)
        d = "Districts"
        color = "#4f81bc"
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
                dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
                  { y: el[column_name],z:el[column_name], label: el[d] }
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
          if compare == "Bihar vs District"
              dataset = rain_fall_type.gsub("_"," ")

            hash_data =
            [{
              type:views,
             color: color,
              legendText: dataset,
              showInLegend: true,
              dataPoints: b.map do |el|
                   { y: el[rain_fall_type], label: el["Districts"] }
              end
            }]
          else
              dataset = rain_fall_type.gsub("_"," ")
            hash_data =
            [{
              type:views,
              color: color,
              legendText: dataset,
              showInLegend: true,
              dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
                   { y: el[rain_fall_type], label: el["Districts"] }
              end
            }]
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
        end
    end



  def map(b,year,rain_fall_type,views)
    array = []
    # a = []
    l =  rain_fall_type.gsub(" ","")

  #    abort(rain_fall_type)

    if rain_fall_type == "All"
        u = "Total"
    else
        u = rain_fall_type
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
