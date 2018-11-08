include Newmodulefunctions

module Statefinancetwovariable
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
        all
      else
        if year == 'All'
          if rain_fall_type == "None"
            where('Sector = ? OR Sector = ? OR Sector = ?', "Primary", 'Secondary', 'Tertiary').where(Indicator: search).order('id')
          else
            all
            # where(Sector: rain_fall_type).where(Indicator: search).order('id')
          end
        else
          if rain_fall_type == "All"
            order("#{year} ")
          elsif rain_fall_type == "None"
            where('Sector = ? OR Sector = ? OR Sector = ?', "Primary", 'Secondary', 'Tertiary').where(Indicator: search).order('id')
           else
            where(Sector: rain_fall_type).where(Indicator: search).order("#{year} ")
           end
        end
        # where(Year: year).order("#{rain_fall_type} ")
      end
    elsif compare == 'Bihar vs Sector'
      if year == 'All'
        where('Sector = ? OR Sector = ?', search, 'Bihar').where(Indicator: search).order(:id)
      else
        where('Sector = ? OR Sector = ?', search, 'Bihar').where('year = ?', year).where(Indicator: search).order(:id)
      end
    elsif compare != "None"
      if year == 'All'
        where('Sector = ? OR Sector = ?', rain_fall_type, compare).where(Indicator: search).order(:id)
      else
        where('Sector = ? OR Sector = ?', rain_fall_type, compare).where(Indicator: search).order(:id)
      end
    else
      if rain_fall_type == 'All'
        where(Indicator: search).order('id')
      else
        if year == 'All'

          if rain_fall_type == "None"
            where('Sector = ? ', search).where(Indicator: search).order('id')
          else

            where('Sector = ? ', rain_fall_type).where(Indicator: search).order('id')
          end
        else
          if rain_fall_type == "None"
            if search == "All"
              where('Sector = ? ', search).where(Indicator: search).order('id')
            else
              where('Sector = ? ', search).where(Indicator: search).order('id')
            end
          else
            # all
            where('Sector = ? ', rain_fall_type).where(Indicator: search).order('id')
          end
        end
      end
    end
  end





        # Logic to generate table starts
        def new_table(b, rain_fall_type, _year, ji, compare,search,data,legend)
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
            { title: legend, field: el, headerFilter: true }

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

                  if el.to_s == 'Sector'
                    { title: legend, field: el }
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


        def query(b, _year, rain_fall_type, views, _ji, compare, search, data, jip)
          d = 'Sector'
          color = '#4f81bc'
          if rain_fall_type == 'All'
            hash_data = if _year == 'All'
                          Newmodulefunctions.year_all(b, data, views, _year, jip)
                        else
                          Newmodulefunctions.eov_year(b,data,views,_year,color,search)
                        end
          else
            if _year == 'All'
              if compare != 'None'
                hash_data =  Newmodulefunctions.year_to_stack_compare_all(b, rain_fall_type, _year, views, color, jip)
              else
                hash_data = Newmodulefunctions.year_to_stack(b, rain_fall_type, _year, views, color, jip)
               end
            else

              hash_data = Newmodulefunctions.no_year(b, rain_fall_type, _year, color, views, compare)
            end
          end
          Newmodulefunctions.title_return(views, search, hash_data, compare)
        end

end