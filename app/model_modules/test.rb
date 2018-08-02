module Test
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
        where(Year: year).order("#{rain_fall_type} ")
      end
    elsif compare == 'Bihar vs District'
      where('Districts = ? OR Districts = ?', search, 'Bihar').where('year = ?', year).order(:id)
    else
      if rain_fall_type == 'All'
        where('Districts = ? ', search).where('year = ?', year).order(:id)
      else
        where('Districts = ? ', search).where('year = ?', year).order(rain_fall_type)
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

   j = b.each { |item| item[:Productivity] = item[:Productivity]/100}
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
      title = {
        animationEnabled: true,
        exportEnabled: true,
        title: {
          text: rain_fall_type.to_s.tr('_', ' ').to_s
        },
        data: hash_data
      }
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
      title = {
        animationEnabled: true,
        exportEnabled: true,
        title: {
          text: rain_fall_type.to_s.tr('_', ' ').to_s
        },
        data: hash_data
      }
      return title
    end
  end

  def map(b, rain_fall_type, _views, _ji, unit1, ranges)
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
      b = { min: ranges[0][:below_min][:min], max: "#{ranges[0][:below_min][:max]}, #{unit1}" }
    else
      b = { min: ranges[0][:below_min][:min], max: "#{ranges[0][:below_min][:max]}, #{unit1}" }
    end

    c = if min.any?
          { min: ranges[0][:min][:min], max: "#{ranges[0][:min][:max]}, #{unit1}" }
        else
          { min: ranges[0][:min][:min], max: "#{ranges[0][:min][:max]}, #{unit1}" }
        end

    if blow_max.any?
      d = { min: ranges[0][:blow_max][:min], max: "#{ranges[0][:blow_max][:max]}, #{unit1}" }
    else
      d = { min: ranges[0][:blow_max][:min], max: "#{ranges[0][:blow_max][:max]}, #{unit1}" }
    end

    e = if max.any?
          { min: ranges[0][:max][:min], max: "#{ranges[0][:max][:max]}, #{unit1}" }
        else
          { min: ranges[0][:max][:min], max: "#{ranges[0][:max][:max]}, #{unit1}" }
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
    a
  end
end
