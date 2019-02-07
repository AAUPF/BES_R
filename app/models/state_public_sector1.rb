class StatePublicSector1 < ApplicationRecord
  def self.import1(file)
    spreadsheet = Roo::Spreadsheet.open(file.path)
           header = spreadsheet.row(1)
           (2..spreadsheet.last_row).each do |i|
             row = Hash[[header, spreadsheet.row(i)].transpose]
             puts row.to_hash
             product = find_by(id: row["id"]) || new
             product.attributes = row.to_hash
             product.save!
           end
  end

  def self.search(search,compare,year,rain_fall_type)
      if year == "All" and rain_fall_type == "All"
       all
      elsif year == "All" and compare == "None"
        # all
        if compare == "None"
          # abort("error")
          if year == "All"
            select(rain_fall_type,"Year_as_on_31st_March")
          else
            select(rain_fall_type). where("Year_as_on_31st_March = ?", year)
          end
        else
          select(rain_fall_type,"Year_as_on_31st_March")
        end
      else
           if compare == "None"
            # abort(compare)
            # abort("errror")
            if rain_fall_type == "All"
              where("Year_as_on_31st_March = ?", year)
            else
              # abort(rain_fall_type)
              select(rain_fall_type,"Year_as_on_31st_March").where("Year_as_on_31st_March = ?", year)
            end
           else
            if year == "All"
              select(rain_fall_type,compare,"Year_as_on_31st_March")
            else
              where("Year_as_on_31st_March = ?", year)
            end
           end
      end
  end

  # Logic to generate table starts
  def self.table (b,rain_fall_type,year,ji,compare)
    dataset = rain_fall_type.gsub("_"," ");
    dataset_compare = compare.gsub("_"," ");
    if rain_fall_type == "All"
      hash_data = ji.map do |el|
          if el.to_s == "Year_as_on_31st_March"
            {title:"Year as on 31st March", field:el,headerFilter:true}
          else
            {title:el.to_s.gsub("_"," "), field:el}
          end
        end
    else

    if compare == "None"
      hash_data = [
        {title:"Year as on 31st March", field:"Year_as_on_31st_March",headerFilter:true},
        {title:dataset, field:rain_fall_type}

    ]
    else
      hash_data = [{title:"Year as on 31st March", field:"Year_as_on_31st_March",headerFilter:true},
        {title:dataset, field:rain_fall_type},
      {title:dataset_compare, field:compare}
    ]
    end
end


 data = {column: hash_data,data: b}
       return data
    end
    # Logic to generate table end



    def self.table_trim (b,rain_fall_type,year,ji,compare)
      dataset = rain_fall_type.gsub("_"," ");
      dataset_compare = compare.gsub("_"," ");
      if rain_fall_type == "All"
        hash_data = ji.map do |el|
            if el.to_s == "Year_as_on_31st_March"
              {title:"Year", field:el,headerFilter:true}
            else
              {title:el.to_s.gsub("_"," ").split.first, field:el}
            end
          end
      else
  
      if compare == "None"
        hash_data = [
          {title:"Year", field:"Year_as_on_31st_March",headerFilter:true},
          {title:dataset.to_s.gsub("_"," ").split.first, field:rain_fall_type}
  
      ]
      else
        hash_data = [{title:"Year", field:"Year_as_on_31st_March",headerFilter:true},
          {title:dataset.to_s.gsub("_"," ").split.first, field:rain_fall_type},
        {title:dataset_compare.to_s.gsub("_"," ").split.first, field:compare}
      ]
      end
  end
  
  
   data = {column: hash_data,data: b}
         return data
      end




  def self.map_search(search,compare,year,rain_fall_type)
    if search == "All"
      if rain_fall_type == "All"
          where("Districts = ? OR Districts = ?", search, "Bihar").where(Year: year).order(:id)
      else
        where(Year: year).order(rain_fall_type)
      end
    else
      # where(Districts: search)
      where(Year: year).order(rain_fall_type)
    end
  end



    def self.query(b,year,rain_fall_type,views,ji,compare)
      #  return b
        # l =  rain_fall_type.gsub(" ","")
        # abort(rain_fall_type)
        d = "Districts"


        if views == "pie"
          
          color = "none"
        else
          color = "#4f81bc"
        end


        if year == "All" && rain_fall_type == "All"

          hash_data =  ji.map do |column_name|

            dataset = column_name.to_s.gsub("_"," ")
            if compare == "none"
            {
              type:views,
              toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
              name:dataset,
              legendText: dataset,
              color: color,
              #name:dataset,
              showInLegend: true,
              dataPoints: b.map do |el|
                { y: el[column_name],z:el[rain_fall_type], label: rain_fall_type }
              end
            }
            else

            {
              type:views,
              toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
              name:dataset,
              legendText: dataset,
              #name:dataset,
              showInLegend: true,
              dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
                   { y: el[column_name],z:el[column_name], label: el["Year_as_on_31st_March"] }
              end
            }
            end
          end
              title = {
                # toolTip: {
                #   shared: true
                # },
                animationEnabled: true,
                exportEnabled: true,
                title:{
                  text: rain_fall_type.gsub("_"," ")
                      },
                data: hash_data
            }

         return title

        elsif year == "All"




          if compare != "None"
          ji1 = [rain_fall_type,compare]
            hash_data = ji1.map do |col|

              dataset = col.to_s.gsub("_"," ")

              {
          
                type:views,
                toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                name:dataset,
                legendText: dataset,
                showInLegend: true,
                dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
                     { y: el[col], label: el["Year_as_on_31st_March"] }
                end
              }
            end

          else

            # dataset = rain_fall_type.gsub("_"," ")

            # hash_data =
            # [{
            #   type:views,
            #   toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
            #   name:dataset,
            #   color: color,
            #   legendText: dataset,
            #   showInLegend: true,
            #   dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
            #        { y: el[rain_fall_type], label: el["Year"] }
            #   end
            # }]

            dataset = rain_fall_type.tr('_', ' ')
                    hash_data =  b.map do |el|
                    {
                        type:views,
                        toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                        name:"#{el["Year_as_on_31st_March"]}",
                        legendText:"#{el["Year_as_on_31st_March"]}",
                        showInLegend: true,
                        dataPoints: [{ y: el[rain_fall_type], label:  dataset }]
                    }

            end

          end
         


       # logic of if starts here
          if compare == "None"
              name =  "#{rain_fall_type.to_s.gsub("_"," ")}"
          else
              name =  "#{rain_fall_type.to_s.gsub("_"," ")} vs. #{compare.to_s.gsub("_"," ")}"
          end

       # logic of if end here

          title = {
                      animationEnabled: true,
                      exportEnabled: true,
                      title:{
                        text: name
                            },
                      data: hash_data
                  }

          return title
        else
        
          if compare

            if rain_fall_type == "All"
              # ji = [rain_fall_type,compare]

              hash_data =  ji.map do |col|
                {
                  type:views,
                  toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                  name:col,
                  legendText: col.to_s.gsub("_"," "),
                  showInLegend: true,
                  dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
                       { y: el[col], label: el["Year_as_on_31st_March"] }
                  end
                }
              end
              title = {
                animationEnabled: true,
                exportEnabled: true,
                title:{
                         text: "#{rain_fall_type.to_s.gsub("_"," ")}"
                      },
                data: hash_data
            }

              return title

            else
              

                if compare == "None"
                      ji1 = [rain_fall_type]
                      hash_data =  ji1.map do |col|
                        {
                          type:views,
                          toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                          name:col,
                          legendText: col.to_s.gsub("_"," "),
                          showInLegend: true,
                          dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
                                { y: el[col], label: el["Year_as_on_31st_March"] }
                          end
                        }
                      end
                      title = {
                        animationEnabled: true,
                        exportEnabled: true,
                        title:{
                          text: name
                              },
                        data: hash_data
                    }

            return title
                else


               ji1 = [rain_fall_type,compare]

               hash_data =  ji1.map do |col|
                 {
                   type:views,
                   toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                   name:col,
                   legendText: col.to_s.gsub("_"," "),
                   showInLegend: true,
                   dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
                        { y: el[col], label: el["Year_as_on_31st_March"] }
                   end
                 }
               end
               title = {
                animationEnabled: true,
                exportEnabled: true,
                title:{
                         text: "#{rain_fall_type.to_s.gsub("_"," ")} vs. #{compare.to_s.gsub("_"," ")}"
                      },
                data: hash_data
            }

                end

              return title
            end


          else

            b.each do |element|
              hash1 = {:y => element[rain_fall_type] ,:label => element["Year"]}
              array.push(hash1)
            end

            return array
          end

        end
      end



# query starts here
def self.query1(b,year,rain_fall_type,views,ji,compare)
  
        
        d = "Districts"


        if views == "pie"
          
          color = "none"
        else
          color = "#4f81bc"
        end


        if year == "All" && rain_fall_type == "All"
          hash_data =  ji.map do |column_name|

            dataset = column_name.to_s.gsub("_"," ")
            if compare == "none"
            {
              type:views,
              legendText: dataset.to_s.gsub("_"," ").split.first,
              color: color,
              showInLegend: true,
              dataPoints: b.map do |el|
                { y: el[column_name],z:el[rain_fall_type], label: rain_fall_type }
              end
            }
            else

            {
              type:views,
              legendText: dataset.to_s.gsub("_"," ").split.first,
              showInLegend: true,
              dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
                   { y: el[column_name],z:el[column_name], label: el["Year"] }
              end
            }
            end
          end
          title = {
            animationEnabled: true,
            exportEnabled: true,
            title:{
              text: "All"
                  },
            data: hash_data
        }
        return title

        elsif year == "All"



          if compare != "None"

          ji1 = [rain_fall_type,compare]
            hash_data = ji1.map do |col|

              dataset = col.to_s.gsub("_"," ")

              {
                type:views,
                legendText: dataset.to_s.gsub("_"," ").split.first,
                showInLegend: true,
                dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
                     { y: el[col], label: el["Year"] }
                end
              }
            end

          else

            dataset = rain_fall_type.gsub("_"," ")

            hash_data =
            [{
              type:views,
              color: color,
              legendText: dataset.to_s.gsub("_"," ").split.first,
              showInLegend: true,
              dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
                   { y: el[rain_fall_type], label: el["Year"] }
              end
            }]
          end

          # logic of if starts here
          if compare == "None"
              name =  "#{rain_fall_type.to_s.gsub("_"," ").split.first}"
            else
              name =  "#{rain_fall_type.to_s.gsub("_"," ").split.first} vs. #{compare.to_s.gsub("_"," ").split.first}"
          end
          # logic of if end here

        title = {
                    animationEnabled: true,
                    exportEnabled: true,
                    title:{
                      text: name
                          },
                    data: hash_data
                }

        return title

          
        else
          array = []

          if compare

            if rain_fall_type == "All"
              # ji = [rain_fall_type,compare]
              hash_data =  ji.map do |col|
                {
                  type:views,
                  legendText: col.to_s.gsub("_"," ").split.first,
                  showInLegend: true,
                  dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
                       { y: el[col], label: el["Year"] }
                  end
                }
              end
              title = {
                animationEnabled: true,
                exportEnabled: true,
                title:{
                         text: "#{rain_fall_type.to_s.gsub("_"," ").split.first}"
                      },
                data: hash_data
            }

              return title

            else
              
                if compare == "None"
                      ji1 = [rain_fall_type]
                      hash_data =  ji1.map do |col|
                        {
                          type:views,
                          legendText: col.to_s.gsub("_"," ").split.first,
                          showInLegend: true,
                          dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
                                { y: el[col], label: el["Year"] }
                          end
                        }
                      end
                      title = {
                        animationEnabled: true,
                        exportEnabled: true,
                        title:{
                          text: name
                              },
                        data: hash_data
                    }
                    return title
                else


               ji1 = [rain_fall_type,compare]

               hash_data =  ji1.map do |col|
                 {
                   type:views,
                   legendText: col.to_s.gsub("_"," ").split.first,
                   showInLegend: true,
                   dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
                        { y: el[col], label: el["Year"] }
                   end
                 }
               end
               title = {
                animationEnabled: true,
                exportEnabled: true,
                title:{
                         text: "#{rain_fall_type.to_s.gsub("_"," ").split.first} vs. #{compare.to_s.gsub("_"," ").split.first}"
                      },
                data: hash_data
            }

                end

              return title
            end


          else

            b.each do |element|
              hash1 = {:y => element[rain_fall_type] ,:label => element["Year"]}
              array.push(hash1)
            end
            return array
          end

        end
      end



def self.search1(search,compare,year,rain_fall_type)

  # Condtion starts here
  if year == "All" && rain_fall_type == "All"
    abort("first")
    all

  elsif  compare == "None"
    abort("secodn")
  else
    abort(compare)
  end
    # Condtion starts end
end

# query starts end


  def self.map(b,rain_fall_type,views,ji)
    array = []
    # a = []
    l =  rain_fall_type.gsub(" ","")

  #  abort(rain_fall_type)
    a = []
    below_min = []
    min = []
    blow_max = []
    max = []
    above_max = []
    extreme = []
    above_extreme = []


    b.map.with_index do |el,i|

        dist = el["Districts"]

      if (0..7) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: "Red" }
        below_min.push(hash1)
      elsif (7..15) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: "Orange" }
        # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
        min.push(hash1)
      elsif (15..21) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: "Dark_Yellow" }
        # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
        blow_max.push(hash1)
      elsif (21..26) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: "Yellow" }
        # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
        max.push(hash1)

      elsif (26..32) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: "Light_Green" }
        # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
        above_max.push(hash1)

      elsif (32..37) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: "Green" }
        # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
        extreme.push(hash1)

      elsif (36..40) === i
        hash1 = { y: el[rain_fall_type], label: dist, color: "Dark_Green" }
        # hash1 = { y: el[rain_fall_type], label: el["Districts"] }
        above_extreme.push(hash1)
      else

        puts "Hello"
      end
      # array.push(a)
    end
    a.push({"below_min": below_min})
    a.push({"min": min})
    a.push({"blow_max": blow_max})
    a.push({"max": max})
    a.push({"above_max": above_max})
    a.push({"extreme": extreme})
    a.push({"above_extreme": above_extreme})
    # array = [{name: "array"}]
    # sleep 1
    return a
  end

  end

