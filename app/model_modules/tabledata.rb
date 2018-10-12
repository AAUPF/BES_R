module Tabledata

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
    
      def search(search, compare, _year,rain_fall_type, legend)
        if search == 'All'
          if rain_fall_type == 'All'
            all.order('id ')
          else
            order("#{rain_fall_type} ")
          end
        elsif compare == 'Bihar vs District'
        #   where('Agency = ? OR Agency = ?', search, 'Bihar').order(:id)
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
      def table(b, rain_fall_type, _year, ji, compare,legend)
        dataset = rain_fall_type.tr('_', ' ')
    
        if rain_fall_type == "#{rain_fall_type}"
    
          hash_data = ji.map do |el|
            # if el.to_s == legend
            #   { title: legend.tr('_', ' '), field: el, headerFilter: true }
            # else
            #   { title: el.to_s.tr('_', ' '), field: el }
            # end
            { title: legend.tr('_', ' '), field: el, headerFilter: true }
            { title: el.to_s.tr('_', ' '), field: el, headerFilter: true }
          end
        else
          if compare == 'None'
            hash_data = [
              { title: legend.tr('_', ' '), field: legend, headerFilter: true },
              { title: dataset, field: rain_fall_type, headerFilter: true }
            ]
          else
            hash_data = [
              # {title:compare, field:compare, sorter:"string", },
              { title: legend.tr('_', ' '), field: legend, headerFilter: true },
    
              { title: dataset, field: rain_fall_type, headerFilter: true }
            ]
          end
        end
    
        data = { column: hash_data, data: b }
        data
      end

end