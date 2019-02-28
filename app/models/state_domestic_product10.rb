class StateDomesticProduct10 < ApplicationRecord
  def self.import1(file)
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

  def self.search(search, compare, year, rain_fall_type,fuel)
    # if search == "All"
    #   if fuel == "All"
    #     where(Year: year).order('id ')
    #   else
    #     where(Year: year).order("#{fuel} ")
    #   end
    # elsif compare == "Share_of_Population"
    #   where("Districts = ? OR Districts = ?", search, "Share_of_Population").where("year = ?", year).order(:id)
    # else
    #   if rain_fall_type == "All"
    #     where("Districts = ? ", search).where("year = ?", year).order(:id)
    #   else
    #     where("Districts = ? ", search).where("year = ?", year).order(fuel)
    #   end
    # end



    if search == 'All'
      if rain_fall_type == 'All'
          if year == "All"

              all.order("id")
            else
              where(Year: year).order("id")
            end
      else
          if year == "All"
              all.order(:id)
          else
              where(Year: year).order(rain_fall_type)
          end
      end
    elsif compare == "Share_of_Population"
      if year == "All"
          where("Districts = ? OR Districts = ?", search, "Share_of_Population").order(:id)
      else
        where("Districts = ? OR Districts = ?", search, "Share_of_Population").where("year = ?", year)
      end
    else
      if rain_fall_type == 'All'
          if year == "All"
              where('Districts = ? ', search).order(:id)
          else
              where('Districts = ? ', search).where('year = ?', year).order(:id)
          end
      else
          if year == "All"
              where('Districts = ? ', search).order(:id)
          else
              where('Districts = ? ', search).where('year = ?', year).order(rain_fall_type)
          end
        
      end
    end
  end

  # Logic to generate table starts


  def self.table(b, rain_fall_type, _year, ji, compare,legend)
    dataset = rain_fall_type.tr('_', ' ')
    if rain_fall_type 

      hash_data = ji.map do |el|
        if el.to_s == "Districts"
          { title: "Districts", field: el, headerFilter: true }
        else
          { title: el.to_s.tr('_', ' '), field: el }
        end
      end
    else
      if compare == 'None'
        hash_data = [
          { title: "Districts", field: "Districts", headerFilter: true },
          { title: dataset, field: rain_fall_type }
        ]
      else

        hash_data = [
          # {title:compare, field:compare, sorter:"string", },
          { title: "Districts", field: "Districts", headerFilter: true },

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
            grouped[x["Districts"]] ||= {}
            grouped[x["Districts"]]["Districts"] = x["Districts"]
            grouped[x["Districts"]][x[:Year]] = x["#{rain_fall_type}"]
          end
    data = { column: hash_data, data: grouped.values }
   else
    data = { column: hash_data, data: j }
   end
    
    data
  end

  # Logic to generate table end


  def self.map_search(search, compare, year, rain_fall_type)
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



  def self.query(b, _year, rain_fall_type, views, ji, compare,fuel,search)
    d = 'Districts'
    color  = "#4f81bc"
    rain_fall_type = fuel
    if rain_fall_type == 'All'
      if views
          if _year == "All"
            hash_data = ji.map do |column_name|
              dataset = column_name.to_s.tr('_', ' ')
              {
                type: views,
                toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                name:dataset,
                legendText: dataset,
                showInLegend: true,
                dataPoints: b.reject { |x| x['Districts'] == 'Bihar' }.map do |el|
                              if dataset == 'Productivity'
                                du = el[column_name] / 100
                                { y: du, z: du, label: el[d] }
                              else
                                { y: el[column_name], z: el[column_name], label: el["Year"] }
                              end
                            end
              }
          end
            
          else
            hash_data = ji.map do |column_name|
              dataset = column_name.to_s.tr('_', ' ')
              {
                type: views,
                toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                name:dataset,
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
      if _year == "All"
        dub = "#{search.to_s.gsub("_"," ")}"
        
      else
        dub = "#{rain_fall_type.to_s.gsub("_"," ")}"
      end
      if views == "stackedBar100" or views == "stackedBar"
        title = {
          animationEnabled: true,
          exportEnabled: true,
          title:{
            text: dub
                },
          data: hash_data
      }
     
      else
        title = {
          animationEnabled: true,
          exportEnabled: true,
          title:{
            text: dub
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

      if compare == 'Share_of_Population'
        dataset = rain_fall_type.tr('_', ' ')
        hash_data =
          [{
            type: views,
            toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
            name:dataset,
            color: color,
            legendText: dataset,
            showInLegend: true,
            dataPoints: b.flat_map do |el|
                          [{ y: el[rain_fall_type], label: el['Districts'] },
                          { y: el[compare], label: compare }]
                        end
          }]
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
                    hash_data  = grouped_data.map{ |vegetable, values| 
              dataset = vegetable.to_s.gsub("_"," ")
              {
                type: views,
                toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                legendText: dataset,
                color: color,
                name:dataset,
                showInLegend: true,
                dataPoints: values.reject { |x| x['Districts'] == 'Bihar' }.map { |value|
                  { y: value[rain_fall_type], label: value["Year"] }
                }
              }
           }
                end

          #   hash_data  = grouped_data.map{ |vegetable, values| 
          #     dataset = vegetable.to_s.gsub("_"," ")
          #     {
          #       type: views,
          #       toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
          #       legendText: dataset,
          #       color: color,
          #       name:dataset,
          #       showInLegend: true,
          #       dataPoints: values.reject { |x| x['Districts'] == 'Bihar' }.map { |value|
          #         { y: value[rain_fall_type], label: value["Year"] }
          #       }
          #     }
          #  }
           end
        else


          if views != "column" && views!="line"
            dataset = rain_fall_type.tr('_', ' ')
            hash_data =  b.reject { |x| x['Districts'] == 'Bihar' }.map do |el|
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
        #   dataset = rain_fall_type.tr('_', ' ')
        # hash_data =
        #   [{
        #     type: views,
        #     toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
        #     name:dataset,
        #     color: color,
        #     legendText: dataset,
        #     showInLegend: true,
        #     dataPoints: b.reject { |x| x['Districts'] == 'Bihar' }.map do |el|
        #                   if rain_fall_type == 'Productivity'
        #                     du = el[rain_fall_type] / 100

        #                     { y: du, label: el['Districts'] }

        #                   else
        #                     { y: el[rain_fall_type], label: el['Districts'] }
        #                   end
        #                 end
        #   }]
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


end
