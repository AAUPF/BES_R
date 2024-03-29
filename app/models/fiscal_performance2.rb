class FiscalPerformance2 < ApplicationRecord
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
        all
      else
        if year == 'All'
          if rain_fall_type == "None"
            where('Sector = ? OR Sector = ? OR Sector = ?', "Primary", 'Secondary', 'Tertiary').order('id')
          else
            where(Sector: rain_fall_type).order('id')
          end
        else
          if rain_fall_type == "All"
            order("#{year} ")
          elsif rain_fall_type == "None"
            where('Sector = ? OR Sector = ? OR Sector = ?', "Primary", 'Secondary', 'Tertiary').order('id')
           else
           
            where(Sector: rain_fall_type).order(:id)
           end
        end
        # where(Year: year).order("#{rain_fall_type} ")
      end
    elsif compare == 'Bihar vs Sector'
      if year == 'All'
        where('Sector = ? OR Sector = ?', search, 'Bihar').order(:id)
      else
        where('Sector = ? OR Sector = ?', search, 'Bihar').where('year = ?', year).order(:id)
      end
    else

      if rain_fall_type == 'All'
        all
      else
        if year == 'All'
          if rain_fall_type == "None"
            where('Sector = ? ', search).order('id')
          else

            where('Sector = ? ', rain_fall_type).order('id')
          end
        else
          if rain_fall_type == "None"

            if search == "All"
              where('Sector = ? ', search).order('id')
            else
              where('Sector = ? ', search).order('id')
            end
          else
            # all
            where('Sector = ? ', rain_fall_type).order('id')
          end
        end
      end
    end
  end

  # Logic to generate table starts
  def self.table(b, rain_fall_type, _year, ji, compare,search,data)
    dataset = rain_fall_type.tr('_', ' ')

    
    if _year == "2011-16"
      years = "CAGR(2011-16)"
    else
      years = _year
    end
    hash_data = if rain_fall_type == 'All'
      if _year == "All"
        ji.map do |el|
          if el.to_s == 'Sector'
            { title: 'Sector', field: el, headerFilter: true }

          elsif el.to_s == '2011-16'
            { title: "CAGR(2011-16)", field: el }
          else
            
            { title: el.to_s.tr('_', ' '), field: el }
            
          end
        end

      else
        [
          { title: 'Sector', field: 'Sector', headerFilter: true },
          { title: years, field: _year }
        ]
      end
         else
       
              if _year == "All"
                hash_data = ji.map do |el|

                  if el.to_s == '2011-16'
                    { title: "CAGR(2011-16)", field: el }
                  else
                    { title: el, field: el}
                  end
                 
                end
              else
                hash_data = if compare == 'None'
                  [
                    { title: 'Sector', field: 'Sector', headerFilter: true },
                    { title: years, field: _year }
                  ]
                else

            

                  [
                    # {title:compare, field:compare, sorter:"string", },
                    { title: 'Sector', field: 'Sector', headerFilter: true },
                    { title: years, field: _year }
                  ]
                end
              end  
      end
    j = if rain_fall_type == 'Productivity'
          b.each { |item| item[:Productivity] = item[:Productivity] / 100 }
        else
          b
        end
        if search == 'C. Vulnerability'
         ji1 = []
           b.each do |el|
                 data.each do |el1|
                  if el.Sector ==el1
                    ji1.push(el)
                  end
                 end
               end
          data = { column: hash_data, data:  ji1 }
        elsif search == 'B. Flexibility'
          ji1 = []
          b.each do |el|
                data.each do |el1|
                 if el.Sector ==el1
                   ji1.push(el)
                 end
                end
              end
         data = { column: hash_data, data:  ji1 }
        elsif search == 'A. Sustainability'
          ji1 = []
          b.each do |el|
                data.each do |el1|
                 if el.Sector ==el1
                   ji1.push(el)
                 end
                end
              end
         data = { column: hash_data, data:  ji1 }
        elsif search == 'All'
          ji1 = []
          b.each do |el|
                data.each do |el1|
                 if el.Sector ==el1
                   ji1.push(el)
                 end
                end
              end

         data = { column: hash_data, data:  ji1 }

        else
          data = { column: hash_data, data: j }
        end  


   
   
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
      # where(Sector: search)
      where(Year: year).order(rain_fall_type)
    end
  end

  def self.query(b, _year, rain_fall_type, views, _ji, compare, search,data,jip)
    d = 'Sector'
    color = '#4f81bc'
        if rain_fall_type == "All"

          if _year == "All"


            # abort("error")
            result = b.select { |hash| hash[:Sector] =~ Regexp.union(data) }

            hash_data = result.reject{|x| x["Sector"]== "Total GSVA at basic prices"}.map do |col|
              {
                type:views,
                toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                name:col[:Sector],
                legendText: col[:Sector],
                showInLegend: true,
                dataPoints: jip.map do |el|
                     { y: col[el], label: el }
                end
              }
            end
            
          else

            result = b.select { |hash| hash[:Sector] =~ Regexp.union(data) }

            hash_data = result.reject{|x| x["Sector"]== "Balance from Current Revenue (Rs. crore)"}.map do |col|
              {
                type:views,
                toolTipContent: "{label}<br/>{name}: <strong>{y}</strong>",
                name:col[:Sector],
                legendText: col[:Sector],
                showInLegend: true,
                dataPoints: [{ y: col[_year], label: col[:Sector]}]
              }
            end
            
          end
 
          
        else

          if _year == "All"

            if views != "column" && views!="line"
              hash_data = []
              b.each do |col|
               jip.each  do |el|
                if el.to_s == "2011-16"
                  years = "CAGR(2011-16)"
                else
                  years = el
                end
                hash_data.push(
                  {
                    type:views,
                    legendText: el,
                    showInLegend: true,
                    dataPoints: [{ y: col[el], label: rain_fall_type }]
                  }
                  
                  
                  )
               end
              end
              else
                u = []
                hash_data = [
                      {
                      type:views,
                      color: color,
                      legendText: rain_fall_type,
                      showInLegend: true,
                      dataPoints: u
                    }
                ]
                b.each do |col|
                 jip.each  do |el|
                  if el.to_s == "2011-16"
                    years = "CAGR(2011-16)"
                  else
                    years = el
                  end
                   u.push({ y: col[el], label: years })
                 end
                end
              end
            
          else


            dataset = rain_fall_type.tr('_', ' ')
            hash_data =
              [{
                type: views,
                color: color,
                legendText: _year,
                showInLegend: true,
                dataPoints: b.map do |el|
                              { y: el[_year], label: el['Sector'] }
                            end
              }]
            
          end
   
          
        end
      title = if (views == 'stackedBar100') || (views == 'stackedBar')
                {
                  animationEnabled: true,
                  exportEnabled: true,
                  title: {
                    text: search.to_s.tr('_', ' ').to_s
                  },
                  data: hash_data
                }

              else
                {
                  animationEnabled: true,
                  exportEnabled: true,
                  title: {
                    text: search.to_s.tr('_', ' ').to_s
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
      dist = el['Sector']

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
      dist = el['Sector']

      if (0..6) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: 'Red' }
        below_min.push(hash1)
      elsif (6..12) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: 'Orange' }
        # hash1 = { y: el[rain_fall_type], label: el["Sector"] }
        min.push(hash1)
      elsif (12..18) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: 'Dark_Yellow' }
        # hash1 = { y: el[rain_fall_type], label: el["Sector"] }
        blow_max.push(hash1)
      elsif (18..24) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: 'Yellow' }
        # hash1 = { y: el[rain_fall_type], label: el["Sector"] }
        max.push(hash1)

      elsif (24..30) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: 'Light_Green' }
        # hash1 = { y: el[rain_fall_type], label: el["Sector"] }
        above_max.push(hash1)

      elsif (30..36) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: 'Green' }
        # hash1 = { y: el[rain_fall_type], label: el["Sector"] }
        extreme.push(hash1)

      elsif (36..40) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: 'Dark_Green' }
        # hash1 = { y: el[rain_fall_type], label: el["Sector"] }
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
      dist = el['Sector']

      if (0..6) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: 'Red' }
        below_min.push(hash1)
      elsif (6..12) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: 'Orange' }
        # hash1 = { y: el[rain_fall_type], label: el["Sector"] }
        min.push(hash1)
      elsif (12..18) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: 'Dark_Yellow' }
        # hash1 = { y: el[rain_fall_type], label: el["Sector"] }
        blow_max.push(hash1)
      elsif (18..24) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: 'Yellow' }
        # hash1 = { y: el[rain_fall_type], label: el["Sector"] }
        max.push(hash1)

      elsif (24..30) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: 'Light_Green' }
        # hash1 = { y: el[rain_fall_type], label: el["Sector"] }
        above_max.push(hash1)

      elsif (30..36) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: 'Green' }
        # hash1 = { y: el[rain_fall_type], label: el["Sector"] }
        extreme.push(hash1)

      elsif (36..40) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: 'Dark_Green' }
        # hash1 = { y: el[rain_fall_type], label: el["Sector"] }
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
