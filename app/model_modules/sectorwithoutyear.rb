module Sectorwithoutyear
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

  def search(search, compare, _year, rain_fall_type, legend)
    if search == 'All'
      if rain_fall_type == 'All'
        order('id ')
      else
        order("#{rain_fall_type} ")
      end
    elsif compare != 'None'
      where("#{legend} = ? OR #{legend} = ?", search, compare).order(:id)
    else
      if rain_fall_type == 'All'
        where("#{legend} = ? ", search).order(:id)
      else
        where("#{legend} = ? ", search).order(rain_fall_type)
      end
    end
  end

  # Logic to generate table starts
  def table(b, rain_fall_type, _year, ji, compare, legend)
    dataset = rain_fall_type.tr('_', ' ')

    if rain_fall_type == 'All'

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

    data = { column: hash_data, data: b }
    data
  end

  # Logic to generate table end

  def map_search(search, _compare, _year, rain_fall_type)
    if search == 'All'
      if rain_fall_type == 'All'
        order(:id)
      else
        order(rain_fall_type)
      end

    else
      # where(Districts: search)
      order(rain_fall_type)
    end
  end

  def query(b, _year, rain_fall_type, views, ji, compare, search, legend)
    d = legend
    color = '#4f81bc'
    if rain_fall_type == 'All'
      if views
        hash_data = ji.map do |column_name|
          if compare == 'District vs Total'
            dataset = column_name.to_s.tr('_', ' ')
            {
              type: views,
              toolTipContent: '{label}<br/>{name}, <strong>{y}</strong>',
              name: dataset,
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
              name: dataset,
              legendText: dataset,
              showInLegend: true,
              dataPoints: b.reject { |x| x["#{legend} "] == 'Total' }.map do |el|
                            { y: el[column_name], z: el[column_name], label: el[d] }
                          end
            }
          end
        end
      end

    else
      if compare != 'None'
        if views == 'line' || views == 'scatter' || views == 'column'
          dataset = rain_fall_type.tr('_', ' ')
          hash_data =
            [{
              type: views,
              toolTipContent: '{label}<br/>{name}, <strong>{y}</strong>',
              name: dataset,
              color: color,
              legendText: dataset,
              showInLegend: true,
              dataPoints: b.map do |el|
                            { y: el[rain_fall_type], label: el[legend.to_s] }
                          end
            }]
        else
          dataset = rain_fall_type.tr('_', ' ')
          hash_data = b.map do |el|
            {
              type: views,
              toolTipContent: '{label}<br/>{name}, <strong>{y}</strong>',
              name: (el[legend.to_s]).to_s,
              legendText: (el[legend.to_s]).to_s,
              showInLegend: true,
              dataPoints: [{ y: el[rain_fall_type], label: dataset }]
            }
          end
        end

      else
        if search == 'All'
          if views == 'line' || views == 'scatter' || views == 'column'
            dataset = rain_fall_type.tr('_', ' ')
            hash_data =
              [{
                type: views,
                toolTipContent: '{label}<br/>{name}, <strong>{y}</strong>',
                name: dataset,
                color: color,
                legendText: dataset,
                showInLegend: true,
                dataPoints: b.reject { |x| x[legend.to_s] == 'Total' }.map do |el|
                              { y: el[rain_fall_type], label: el[legend.to_s] }
                            end
              }]
          else
            dataset = rain_fall_type.tr('_', ' ')
            hash_data = b.reject { |x| x[legend.to_s] == 'Total' }.map do |el|
              {
                type: views,
                toolTipContent: '{label}<br/>{name}, <strong>{y}</strong>',
                name: (el[legend.to_s]).to_s,
                legendText: (el[legend.to_s]).to_s,
                showInLegend: true,
                dataPoints: [{ y: el[rain_fall_type], label: dataset }]
              }
            end
          end
        else
          dataset = rain_fall_type.tr('_', ' ')
          hash_data =
            [{
              type: views,
              toolTipContent: '{label}<br/>{name}, <strong>{y}</strong>',
              name: dataset,
              color: color,
              legendText: dataset,
              showInLegend: true,
              dataPoints: b.reject { |x| x[legend.to_s] == 'Total' }.map do |el|
                            { y: el[rain_fall_type], label: el[legend.to_s] }
                          end
            }]
        end
      end
    end
    Newmodulefunctions.title_return(views, search, hash_data, compare)

  end
    end
