module Statefinanceyear

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
      def table(b, rain_fall_type, _year, ji, compare,search,data)
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
    
    
      def query(b, _year, rain_fall_type, views, _ji, compare, search,data,jip)
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
    
end