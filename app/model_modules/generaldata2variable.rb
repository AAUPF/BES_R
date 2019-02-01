module Generaldata2variable
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

  def search(search, compare, year, rain_fall_type, legend)
    if search == 'All'
      if rain_fall_type == 'All'
        if year == 'All'
          where(Indicators: compare).order('id')
        else
          where(Year: year).where(Indicators: compare).order(:id)
          end
      else
        if year == 'All'
          where(Indicators: compare).order('id')
        else
          where(Year: year).where(Indicators: compare).order("#{rain_fall_type} ")
        end
      end
    elsif compare != 'None'

      if year == 'All'
        where("#{legend} = ? OR #{legend} = ?", search, compare).where(Indicators: compare).order(:id)
      else
        where("#{legend} = ? OR #{legend} = ?", search, compare).where(Indicators: compare).where('year = ?', year).order(:id)
      end
    else

      if rain_fall_type == 'All'
        if year == 'All'
          where("#{legend} = ? ", search).where(Indicators: compare).order(:id)
        else
          where("#{legend} = ? ", search).where(Indicators: compare).where('year = ?', year).order(:id)
        end
      else
        if year == 'All'
          where("#{legend} = ? ", search).where(Indicators: compare).order(rain_fall_type)
        else
          where("#{legend} = ? ", search).where(Indicators: compare).where('year = ?', year).order(rain_fall_type)
        end

      end
    end
  end

  def table(b, rain_fall_type, _year, ji, compare, legend)
    dataset = rain_fall_type.tr('_', ' ')
    if rain_fall_type

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

    j = if rain_fall_type == 'Productivity'
          b.each { |item| item[:Productivity] = item[:Productivity] / 100 }

        else
          b
        end

    if _year == 'All'
      grouped = {}

      b.each do |x|
        grouped[x[legend.to_s]] ||= {}
        grouped[x[legend.to_s]][legend.to_s] = x[legend.to_s]
        grouped[x[legend.to_s]][x[:Year]] = x[rain_fall_type.to_s]
      end

      data = { column: hash_data, data: grouped.values }

    else
      data = { column: hash_data, data: j }
    end

    data
    end

  # Logic to generate table end

  def query(b, _year, rain_fall_type, views, ji, compare, search, legend, remove)
    d = legend
    color = '#4f81bc'
    if rain_fall_type == 'All'
      hash_data = Newmodulefunctions.generaldata_rainfall_all(b, views, legend, remove, rain_fall_type, color, search, compare, ji, d)
    else
      if _year == 'All'
        hash_data = Newmodulefunctions.general_data_two_variable_year_all(b, views, legend, remove, rain_fall_type, color, search, compare)
      else
        if search == 'All'
          hash_data =  Newmodulefunctions.search_all(b, views, legend, remove, rain_fall_type, color)
        else
          hash_data =  Newmodulefunctions.search_elese_all(b, views, legend, remove, rain_fall_type, color)
        end
        end
    end
    Newmodulefunctions.title_return_two(views, search, hash_data, compare)
  end
end
