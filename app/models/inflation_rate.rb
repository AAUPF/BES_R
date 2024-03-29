# frozen_string_literal: true

class InflationRate < ApplicationRecord
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

  def self.search(search, compare, year, rain_fall_type)
    if search == 'All'
      if rain_fall_type == 'All'
        where(Sector: year).order('id ')
      else
        if year == 'All'
         all.order('id')
        else
          where(Sector: year).order("#{rain_fall_type} ")
        end
        # where(Year: year).order("#{rain_fall_type} ")
      end
    elsif compare != 'None'
      if year == 'All'
        where('State = ? OR State = ?', search, compare).order(:id)
      else
        where('State = ? OR State = ?', search, compare).where(Sector: year).order(:id)
      end
    else
      if rain_fall_type == 'All'
        # where('State = ? ', search).where(Sector: year).order(:id)
        if year == 'All'
          where('State = ? ', search).order('id')
        else
          # select("#{rain_fall_type}, #{year}, State").where('State = ? ', search).order(rain_fall_type)

          where('State = ? ', search).where(Sector: year).order('id')
        end
      else
        if year == 'All'
          where('State = ? ', search).order('id')
        else
          # select("#{rain_fall_type}, #{year}, State").where('State = ? ', search).order(rain_fall_type)
          where('State = ? ', search).where(Sector: year).order('id')
        end
      end
    end
  end

  def self.table(b, rain_fall_type, _year, ji, compare,search)
    dataset = rain_fall_type.tr('_', ' ')

    hash_data = if rain_fall_type == "All"

                  ji.map do |el|
                    if el.to_s == 'State'
                      { title: 'State', field: el, headerFilter: true }
                    else
                      { title: el.to_s.tr('_', ' '), field: el }
                    end
                  end
                else
                  hash_data = if compare == 'None'
                                [
                                  { title: 'State', field: 'State', headerFilter: true },
                                  { title: dataset, field: rain_fall_type },
                                  { title: 'Sector', field: 'Sector' }
                                ]
                              else

                                [
                                  # {title:compare, field:compare, sorter:"string", },
                                  { title: 'State', field: 'State', headerFilter: true },

                                  { title: dataset, field: rain_fall_type },
                                  { title: 'Sector', field: 'Sector' }
                                ]
                              end
                end

    j = if rain_fall_type == 'Productivity'
          b.each { |item| item[:Productivity] = item[:Productivity] / 100 }

        else
          b
        end

    if _year == 'All'
      grouped = {}
      b.each do |x|
        grouped[x[:State]] ||= {}
        grouped[x[:State]][:State] = x[:State]
        grouped[x[:State]][x[:Year]] = x[:Per_Capita_Income]
      end
      data = { column: hash_data, data: j }

    else
      data = { column: hash_data, data: j }
    end

    data
      end

  # Logic to generate table end

  def self.map_search(search, _compare, year, rain_fall_type)
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

  def self.query(b, _year, rain_fall_type, views, ji, compare, search)
    d = 'State'
    color = '#4f81bc'
    if rain_fall_type == 'All'
      if views

            if _year == "All"

              if compare != "None"

                grouped_data = b.group_by { |data| data[:State] }
                hash_data = grouped_data.map do |vegetable, values|
                  dataset = vegetable.to_s.tr('_', ' ')
                  {
                    type: views,
                    legendText: dataset,
                    showInLegend: true,
                    dataPoints: values.map do |value|
                                  { y: value, label: value['Year'] }
                                end
                  }
                end
              else


              hash_data = ji.map do |column_name|
                dataset = column_name.to_s.tr('_', ' ')
                {
                  type: views,
                  legendText: dataset,
                  toolTipContent: '{label}<br/>{name}, <strong>{y}</strong>',
                  name:search,
                  showInLegend: true,
                  dataPoints: b.map do |el|
                                { y: el[column_name], z: el[column_name], label: el["Sector"] }
                              end
                }
             
            
          end

                
              end

              
              
            else

              hash_data = ji.map do |column_name|
                if compare == 'Bihar vs State'
                  dataset = column_name.to_s.tr('_', ' ')
                  {
                    type: views,
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
                    toolTipContent: '{label}<br/>{name}, <strong>{y}</strong>',
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
      end
      title = if (views == 'stackedBar100') || (views == 'stackedBar')
                {
                  animationEnabled: true,
                  exportEnabled: true,
                  title: {
                    text: _year.to_s.tr('_', ' ').to_s
                  },
                  data: hash_data
                }

              else
                {
                  animationEnabled: true,
                  exportEnabled: true,
                  title: {
                    text: _year.to_s.tr('_', ' ').to_s
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

      if compare == 'Bihar vs State'
        if _year == 'All'
          grouped_data = b.group_by { |data| data[:State] }
          hash_data = grouped_data.map do |vegetable, values|
            dataset = vegetable.to_s.tr('_', ' ')
            {
              type: views,
              legendText: dataset,
              showInLegend: true,
              dataPoints: values.map do |value|
                            { y: value[rain_fall_type], label: value['Year'] }
                          end
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
                            { y: el[rain_fall_type], label: el['State'] }
                          end
            }]
        end

      else

        if _year == 'All'


          grouped_data = b.group_by { |data| data[:State] }
          if search == 'All'
            hash_data = grouped_data.map do |vegetable, values|
              dataset = vegetable.to_s.tr('_', ' ')
              {
                type: views,
                toolTipContent: '{label}<br/>{name}, <strong>{y}</strong>',
                legendText: dataset,
                name: dataset,
                showInLegend: true,
                dataPoints: values.map do |value|
                              { y: value[rain_fall_type], label: value['Year'] }
                            end
              }
            end
          else



            if views != "column" && views!="line"
              dataset = rain_fall_type.tr('_', ' ')
              hash_data =  b.map do |el|
                {
                  type:views,
                  toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                  name:dataset,
                  legendText:"#{el["Sector"]}",
                  showInLegend: true,
                  dataPoints: [{ y: el[rain_fall_type], label:  search }]
              }
  
              end
          
                else
                    hash_data  = grouped_data.map{ |vegetable, values| 
              dataset = vegetable.to_s.gsub("_"," ")
              {
                type: views,
                toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                legendText: dataset,
                name:dataset,
                showInLegend: true,
                dataPoints: values.map { |value|
                  { y: value[rain_fall_type], label: value["Sector"] }
                }
              }
           }
                end

            # hash_data = grouped_data.map do |vegetable, values|
            #   dataset = rain_fall_type.to_s.tr('_', ' ')
            #   {
            #     type: views,
            #     toolTipContent: '{label}<br/>{name}, <strong>{y}</strong>',
            #     legendText: vegetable,
            #     name: vegetable,
            #     showInLegend: true,
            #     dataPoints: values.map do |value|
            #                   { y: value[rain_fall_type], label: value['Sector'] }
            #                 end
            #   }
            # end
          end
        else

          if views != "column" && views!="line"

            dataset = rain_fall_type.tr('_', ' ')
            hash_data =  b.reject { |x| x['Districts'] == 'Bihar' }.map do |el|
              {
                type:views,
                toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                name:"#{el["State"]}",
                legendText:"#{el["State"]}",
                showInLegend: true,
                dataPoints: [{ y: el[rain_fall_type], label:  dataset }]
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
                    dataPoints: b.map do |el|
                                  { y: el[rain_fall_type], label: el['State'] }
                                end
                  }]
              end


      
        end

      end
      title = if (views == 'stackedBar100') || (views == 'stackedBar')
                {
                  animationEnabled: true,
                  exportEnabled: true,
                  title: {
                    text: _year.to_s.tr('_', ' ').to_s
                  },
                  data: hash_data
                }

              else
                {
                  animationEnabled: true,
                  exportEnabled: true,
                  title: {
                    text: _year.to_s.tr('_', ' ').to_s
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

  def self.map1(b, rain_fall_type, _views, _ji, _unit1, ranges)
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

    b = if below_min.any?
          { min: ranges[0][:below_min][:min], max: (ranges[0][:below_min][:max]).to_s }
        else
          { min: ranges[0][:below_min][:min], max: (ranges[0][:below_min][:max]).to_s }
        end

    c = if min.any?
          { min: ranges[0][:min][:min], max: (ranges[0][:min][:max]).to_s }
        else
          { min: ranges[0][:min][:min], max: (ranges[0][:min][:max]).to_s }
        end

    d = if blow_max.any?
          { min: ranges[0][:blow_max][:min], max: (ranges[0][:blow_max][:max]).to_s }
        else
          { min: ranges[0][:blow_max][:min], max: (ranges[0][:blow_max][:max]).to_s }
        end

    e = if max.any?
          { min: ranges[0][:max][:min], max: (ranges[0][:max][:max]).to_s }
        else
          { min: ranges[0][:max][:min], max: (ranges[0][:max][:max]).to_s }
        end

    f = if above_max.any?

          { min: ranges[0][:above_max][:min], max: (ranges[0][:above_max][:max]).to_s }

        else
          { min: ranges[0][:above_max][:min], max: (ranges[0][:above_max][:max]).to_s }

        end

    g = if extreme.any?
          { min: ranges[0][:extreme][:min], max: (ranges[0][:extreme][:max]).to_s }

        else
          { min: ranges[0][:extreme][:min], max: (ranges[0][:extreme][:max]).to_s }
        end

    if above_extreme.any?
      h = { min: ranges[0][:above_extreme][:min], max: (ranges[0][:above_extreme][:max]).to_s }
    else
      h = { min: ranges[0][:above_extreme][:min], max: (ranges[0][:above_extreme][:max]).to_s }
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

  def self.map1(b, rain_fall_type, _views, _ji, _unit1, _ranges)
    #  abort(rain_fall_type)
    a = []
    below_min = []
    min = []
    blow_max = []
    max = []
    above_max = []
    extreme = []
    above_extreme = []

    b.map.with_index do |el, i|
      dist = el['State']

      if (0..6) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: 'Red' }
        below_min.push(hash1)
      elsif (6..12) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: 'Orange' }
        # hash1 = { y: el[rain_fall_type], label: el["State"] }
        min.push(hash1)
      elsif (12..18) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: 'Dark_Yellow' }
        # hash1 = { y: el[rain_fall_type], label: el["State"] }
        blow_max.push(hash1)
      elsif (18..24) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: 'Yellow' }
        # hash1 = { y: el[rain_fall_type], label: el["State"] }
        max.push(hash1)

      elsif (24..30) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: 'Light_Green' }
        # hash1 = { y: el[rain_fall_type], label: el["State"] }
        above_max.push(hash1)

      elsif (30..36) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: 'Green' }
        # hash1 = { y: el[rain_fall_type], label: el["State"] }
        extreme.push(hash1)

      elsif (36..40) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: 'Dark_Green' }
        # hash1 = { y: el[rain_fall_type], label: el["State"] }
        above_extreme.push(hash1)
      end
      # array.push(a)
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

    unit1 = ''

    b = if below_min.any?
          { min: below_min.first[:y], max: below_min.last[:y].to_s }
        else
          { min: below_min.first[:y], max: below_min.last[:y].to_s }
        end

    c = if min.any?
          { min: min.first[:y], max: min.last[:y].to_s }
        else
          { min: min.first[:y], max: min.last[:y].to_s }
        end

    d = if blow_max.any?
          { min: blow_max.first[:y], max: blow_max.last[:y].to_s }
        else
          { min: blow_max.first[:y], max: blow_max.last[:y].to_s }
        end

    e = if max.any?
          { min: max.first[:y], max: max.last[:y].to_s }
        else
          { min: max.first[:y], max: max.last[:y].to_s }
        end

    f = if above_max.any?

          { min: above_max.first[:y], max: above_max.last[:y].to_s }

        else
          { min: above_max.first[:y], max: above_max.last[:y].to_s }

        end

    g = if extreme.any?
          { min: extreme.first[:y], max: extreme.last[:y].to_s }

        else
          { min: extreme.first[:y], max: extreme.last[:y].to_s }
        end

    h = if above_extreme.any?
          { min: above_extreme.first[:y], max: above_extreme.last[:y].to_s }
        else
          {}
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
    a
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

    b.map.with_index do |el, i|
      dist = el['State']

      if (0..6) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: 'Red' }
        below_min.push(hash1)
      elsif (6..12) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: 'Orange' }
        # hash1 = { y: el[rain_fall_type], label: el["State"] }
        min.push(hash1)
      elsif (12..18) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: 'Dark_Yellow' }
        # hash1 = { y: el[rain_fall_type], label: el["State"] }
        blow_max.push(hash1)
      elsif (18..24) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: 'Yellow' }
        # hash1 = { y: el[rain_fall_type], label: el["State"] }
        max.push(hash1)

      elsif (24..30) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: 'Light_Green' }
        # hash1 = { y: el[rain_fall_type], label: el["State"] }
        above_max.push(hash1)

      elsif (30..36) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: 'Green' }
        # hash1 = { y: el[rain_fall_type], label: el["State"] }
        extreme.push(hash1)

      elsif (36..40) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: 'Dark_Green' }
        # hash1 = { y: el[rain_fall_type], label: el["State"] }
        above_extreme.push(hash1)
      end
      # array.push(a)
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

    unit1 = ''

    b = if below_min.any?
          { min: below_min.first[:y], max: below_min.last[:y].to_s }
        else
          { min: below_min.first[:y], max: below_min.last[:y].to_s }
        end

    c = if min.any?
          { min: min.first[:y], max: min.last[:y].to_s }
        else
          { min: min.first[:y], max: min.last[:y].to_s }
        end

    d = if blow_max.any?
          { min: blow_max.first[:y], max: blow_max.last[:y].to_s }
        else
          { min: blow_max.first[:y], max: blow_max.last[:y].to_s }
        end

    e = if max.any?
          { min: max.first[:y], max: max.last[:y].to_s }
        else
          { min: max.first[:y], max: max.last[:y].to_s }
        end

    f = if above_max.any?

          { min: above_max.first[:y], max: above_max.last[:y].to_s }

        else
          { min: above_max.first[:y], max: above_max.last[:y].to_s }

        end

    g = if extreme.any?
          { min: extreme.first[:y], max: extreme.last[:y].to_s }

        else
          { min: extreme.first[:y], max: extreme.last[:y].to_s }
        end

    h = if above_extreme.any?
          { min: above_extreme.first[:y], max: above_extreme.last[:y].to_s }
        else
          {}
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
    a
end
  end
