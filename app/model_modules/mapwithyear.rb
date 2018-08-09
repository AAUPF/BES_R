module Mapwithyear
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
#     if year == 'All'
#         all.order('id ')
#     else
#   where(Year: year).order('id ')
#     end
    def search(search, compare, year, rain_fall_type)
      if search == 'All'
        if rain_fall_type == 'All'
            
          where(Year: year).order('id ')
            
        else
          where(Year: year).order("#{rain_fall_type} ")
        end
      elsif compare == 'Bihar vs District'
        where('Districts = ? OR Districts = ?', search, 'Bihar').where('year = ?', year).order(:id)
        


      else
        if rain_fall_type == 'All'
            if year == 'All'
                where('Districts = ? ', search).order(:id)
            else
                where('Districts = ? ', search).where('year = ?', year).order(:id)
            end
        else
            if year == 'All'
                where('Districts = ? ', search).order(rain_fall_type)
            else
                where('Districts = ? ', search).where('year = ?', year).order(rain_fall_type)
            end
          
        end
      end
      

    end
  
    # Logic to generate table starts
    def table(b, rain_fall_type, _year, ji, compare)
      dataset = rain_fall_type.tr('_', ' ')
  
      if rain_fall_type == 'All'
  
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
  
      # j = []
      # b.map do |k|
      #   if k.Productivity
      #     u = k.Productivity/100
      #     j.push({id: k.id, Productivity: u ,Districts: k.Districts, Area: k.Area, Production: k.Production, Year: k.Year })
      #   else
      #     j.push(k)
      #   end
      # end
  
  
     if rain_fall_type == "Productivity"
      j = b.each { |item| item[:Productivity] = item[:Productivity]/100}
  
     else
       j = b
     end
      data = { column: hash_data, data: j }
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
  
    def query(b, _year, rain_fall_type, views, ji, compare)
      d = 'Districts'
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
          dataset = rain_fall_type.tr('_', ' ')
          hash_data =
            [{
              type: views,
  
              legendText: dataset,
              showInLegend: true,
              dataPoints: b.map do |el|
                            { y: el[rain_fall_type], label: el['Districts'] }
                          end
            }]
        else
          dataset = rain_fall_type.tr('_', ' ')
          hash_data =
            [{
              type: views,
  
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
  
    def map(b,rain_fall_type,views,ji,unit1)
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
    
        # unit1 = "mm"
    
        if below_min.any?
          b = { min: below_min.first[:y], max: "#{below_min.last[:y]}, #{unit1}" }
        else
          b = { min: below_min.first[:y], max: "#{below_min.last[:y]}, #{unit1}" }
        end
    
        if min.any?
          c = { min: min.first[:y], max: "#{min.last[:y]}, #{unit1}" }
        else
          c = { min: min.first[:y], max: "#{min.last[:y]}, #{unit1}" }
        end
    
        if blow_max.any?
          d = { min: blow_max.first[:y], max: "#{blow_max.last[:y]}, #{unit1}" }
        else
          d = { min: blow_max.first[:y], max: "#{blow_max.last[:y]}, #{unit1}" }
        end
    
        if max.any?
          e = { min: max.first[:y], max: "#{max.last[:y]}, #{unit1}" }
        else
          e = { min: max.first[:y], max: "#{max.last[:y]}, #{unit1}" }
        end
    
        if above_max.any?
    
          f = { min: above_max.first[:y], max: "#{above_max.last[:y]}, #{unit1}" }
    
        else
          f = { min: above_max.first[:y], max: "#{above_max.last[:y]}, #{unit1}" } 
    
        end
    
        if extreme.any?
          g =  { min: extreme.first[:y], max: "#{extreme.last[:y]}, #{unit1}" } 
    
        else
          g = { min: extreme.first[:y], max: "#{extreme.last[:y]}, #{unit1}" } 
        end
    
        if above_extreme.any?
          h = { min: above_extreme.first[:y], max: "#{above_extreme.last[:y]}, #{unit1}" }
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
  