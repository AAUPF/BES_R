include Newmodulefunctions
module Statefinanceyearsector
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
            where('Sector = ? OR Sector = ? OR Sector = ?', "Primary", 'Secondary', 'Tertiary').order('id')
          else
            # all
             where(Sector: rain_fall_type).order('id')
          end
        else
          if rain_fall_type == "All"
            order("#{year} ")

          elsif rain_fall_type == "None"
            where('Sector = ? OR Sector = ? OR Sector = ?', "Primary", 'Secondary', 'Tertiary').order('id')
           else
            where(Sector: rain_fall_type).order("#{year} ")
           end
        end
        # where(Year: year).order("#{rain_fall_type} ")
      end
    elsif compare != "None"
      if year == 'All'
        where('Sector = ? OR Sector = ?', rain_fall_type, compare).order(:id)
      else
        where('Sector = ? OR Sector = ?', rain_fall_type, compare).order(:id)
      end
    else
      if rain_fall_type == 'All'
        all.order('id')
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

  # def search(search, compare, year, rain_fall_type)
  #   @search = search
  #   @compare = compare
  #   @year = year
  #   @rain_fall_type = rain_fall_type
  #   @query = all
  #   @query = @query.where(Sector: sectors_to_use) if sectors_to_use
  #   @query = @query.order(order_to_use) if order_to_use
  #   @query
  # end

  # def sectors_to_use
  #   return [@rain_fall_type, @compare] if @search != 'All' && @compare != 'None'
  #   unless @rain_fall_type == 'All'
  #     if @rain_fall_type == 'None'
  #       @search == 'All' ? %w[Primary Secondary Tertiary] : [@search]
  #     else
  #       [@rain_fall_type]
  #     end
  #   end
  # end

  # def order_to_use
  #   return nil if (@search == 'All') && (@rain_fall_type == 'All')
  #   return @year if (@search == 'All') && @year != 'All'
  #   :id
  # end

  # Logic to generate table starts
  def table(b, rain_fall_type, _year, ji, compare, search, data)
    dataset = rain_fall_type.tr('_', ' ')

    years = if _year == '2011-16'
              'CAGR(2011-16)'
            else
              _year
            end
    hash_data = if rain_fall_type == 'All'
                  if _year == 'All'
                    ji.map do |el|
                      if el.to_s == 'Sector'
                        { title: 'Sector', field: el, headerFilter: true }

                      elsif el.to_s == '2011-16'
                        { title: 'CAGR(2011-16)', field: el }
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

                  if _year == 'All'
                    hash_data = ji.map do |el|
                      if el.to_s == '2011-16'
                        { title: 'CAGR(2011-16)', field: el }
                      else
                        { title: el, field: el }
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
          ji1.push(el) if el.Sector == el1
        end
      end
      data = { column: hash_data, data: ji1 }
    elsif search == 'B. Flexibility'
      ji1 = []
      b.each do |el|
        data.each do |el1|
          ji1.push(el) if el.Sector == el1
        end
      end
      data = { column: hash_data, data: ji1 }
    elsif search == 'A. Sustainability'
      ji1 = []
      b.each do |el|
        data.each do |el1|
          ji1.push(el) if el.Sector == el1
        end
      end
      data = { column: hash_data, data: ji1 }
    elsif search == 'All'
      ji1 = []
      b.each do |el|
        data.each do |el1|
          ji1.push(el) if el.Sector == el1
        end
      end

      data = { column: hash_data, data: ji1 }

    else

      ji1 = []
      b.each do |el|
        data.each do |el1|
          ji1.push(el) if el.Sector == el1
        end
      end
      data = { column: hash_data, data: ji1 }
    end
  end



  def new_table(b, rain_fall_type, _year, ji, compare, search, data,legend)
    dataset = rain_fall_type.tr('_', ' ')

    years = if _year == '2011-16'
              'CAGR(2011-16)'
            else
              _year
            end
    hash_data = if rain_fall_type == 'All'
                  if _year == 'All'
                    ji.map do |el|
                      if el.to_s == 'Sector'
                        { title: legend, field: el, headerFilter: true }

                      elsif el.to_s == '2011-16'
                        { title: 'CAGR(2011-16)', field: el }
                      else

                        { title: el.to_s.tr('_', ' '), field: el }

                      end
                    end

                  else
                    [
                      { title: legend, field: 'Sector', headerFilter: true },
                      { title: years, field: _year }
                    ]
                  end
                else

                  if _year == 'All'
                    hash_data = ji.map do |el|
                      if el.to_s == '2011-16'
                        { title: 'CAGR(2011-16)', field: el }
                      else
                        { title: el, field: el }
                  end
                    end
                  else
                    hash_data = if compare == 'None'
                                  [
                                    { title: legend, field: 'Sector', headerFilter: true },
                                    { title: years, field: _year }
                                  ]
                                else

                                  [
                                    # {title:compare, field:compare, sorter:"string", },
                                    { title: legend, field: 'Sector', headerFilter: true },
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
          ji1.push(el) if el.Sector == el1
        end
      end
      data = { column: hash_data, data: ji1 }
    elsif search == 'B. Flexibility'
      ji1 = []
      b.each do |el|
        data.each do |el1|
          ji1.push(el) if el.Sector == el1
        end
      end
      data = { column: hash_data, data: ji1 }
    elsif search == 'A. Sustainability'
      ji1 = []
      b.each do |el|
        data.each do |el1|
          ji1.push(el) if el.Sector == el1
        end
      end
      data = { column: hash_data, data: ji1 }
    elsif search == 'All'
      ji1 = []
      b.each do |el|
        data.each do |el1|
          ji1.push(el) if el.Sector == el1
        end
      end

      data = { column: hash_data, data: ji1 }

    else

      ji1 = []
      b.each do |el|
        data.each do |el1|
          ji1.push(el) if el.Sector == el1
        end
      end
      data = { column: hash_data, data: ji1 }
    end
  end

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
    Newmodulefunctions.title_return(views, search, hash_data, compare,_year,rain_fall_type)
  end
end
