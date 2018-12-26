class TaxDepartment7 < ApplicationRecord

  include     Newmodulefunctions

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
        where(Year: year).where('Indicator = ?', compare).order('id ')
      else
        if year == "All"
          where('Indicator = ?', compare).order("#{rain_fall_type} ")
        else
          where(Year: year).where('Indicator = ?', compare).order("#{rain_fall_type} ")
        end
        
      end
    elsif compare == 'Bihar vs District'
      if year == "All"
        where('Districts = ? OR Districts = ?', search, 'Bihar').where('Indicator = ?', compare).order(:id)
      else
        where('Districts = ? OR Districts = ?', search, 'Bihar').where('year = ?', year).where('Indicator = ?', compare).order(:id)
      end
     
    else
      if rain_fall_type == 'All'
        where('Districts = ? ', search).where('year = ?', year).where('Indicator = ?', compare).order(:id)
      else
        if year == "All"
          where('Districts = ? ', search).where('Indicator = ?', compare).order(rain_fall_type)
        else
          where('Districts = ? ', search).where('year = ?', year).where('Indicator = ?', compare).order(rain_fall_type)
        end
        
      end
    end
  end

  # Logic to generate table starts
  def self.table(b, rain_fall_type, _year, ji, compare)
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


   if rain_fall_type == "Productivity"
    j = b.each { |item| item[:Productivity] = item[:Productivity]/100}

   else
     j = b
   end
    data = { column: hash_data, data: j }
    data
  end

  # Logic to generate table end


  def self.query(b, _year, rain_fall_type, views, ji, compare)
    d = 'Districts'
    color  = "#4f81bc"
    if rain_fall_type == 'All'
      if views
        hash_data = ji.map do |column_name|
          if compare == 'Bihar vs District'
            dataset = column_name.to_s.tr('_', ' ')
            {
              type: views,
              toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
              name:dataset,
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
      if views == "stackedBar100" or views == "stackedBar"
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
                  # interval:1,
                  # labelMaxWidth: 180,
                  # labelAngle: 90,
                  # labelFontFamily:"verdana0"
                  },
          data: hash_data
      }
      end
      return title
    else
      if compare == 'Bihar vs District'
        dataset = rain_fall_type.tr('_', ' ')
        hash_data =
          [{
            type: views,
            color: color,
            toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
            name:dataset,
            legendText: dataset,
            showInLegend: true,
            dataPoints: b.map do |el|
                          { y: el[rain_fall_type], label: el['Districts'] }
                        end
          }]
      else
        if _year == "All"
          grouped_data = b.group_by{ |data| data[:Districts]}
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
          dataset = rain_fall_type.tr('_', ' ')
        hash_data =
          [{
            type: views,
            color: color,
            toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
            name:dataset,
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



        
      end
      if views == "stackedBar100" or views == "stackedBar"
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
                  # interval:1,
                  # labelMaxWidth: 180,
                  # labelAngle: 90,
                  # labelFontFamily:"verdana0"
                  },
          data: hash_data
      }
        
      end
      return title
    end
  end






  
 
      end
