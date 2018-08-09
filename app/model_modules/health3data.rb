module Health3data

    # extend Code

  def import1(file)
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

  def search(search,compare,year,rain_fall_type,month)
   if search == "All" 

    where(Year: year).order(:id)
 
   elsif search

    if month
      if compare != "None"

        where('Region = ? OR Region = ?', search, compare).where(Year: year).order(:id)
      else
         if year == "All"
          where('Region = ? OR Region = ?', search, compare).order(:id)
         else
          where('Region = ? OR Region = ?', search, compare).where(Year: year).order(:id)
         end
       

      end
      # where(Year: year).where(Region: search)
    else

      where(Region: search).where(Year: year)
    end
   
   
   end
  end
    # Logic to generate table starts
    def table (b,rain_fall_type,year,ji1,compare,search,month)
      dataset = rain_fall_type.gsub("_"," ")

      if rain_fall_type == "All"
        hash_data = ji1.map do |el|
            if el.to_s == "Irrigation_Sources"
              {title:"Irrigation Sources", field:el,headerFilter:true}
            else
              {title:el.to_s.gsub("_"," "), field:el ,headerFilter:true}
            end
           end
      else
        if rain_fall_type == "Winter_Rain"
          ji = [:Region,:January, :February]
          hash_data = ji.map do |col|
            {title:col.to_s.gsub("_"," "), field:col ,headerFilter:true}
          end      
        elsif rain_fall_type == "Hot_Weather_Rain"
    
          ji = [:Region,:March, :April, :May]
          hash_data = ji.map do |col|
            {title:col.to_s.gsub("_"," "), field:col ,headerFilter:true}
          end      
    
    
        elsif rain_fall_type == "South_West_Monsoon"
    
          ji = [:Region,:June, :July, :August, :September]
          hash_data = ji.map do |col|
            {title:col.to_s.gsub("_"," "), field:col ,headerFilter:true}
          end   
        elsif rain_fall_type == "North_West_Monsoon"
    
          ji = [:Region,:October, :November, :December]
          hash_data = ji.map do |col|
            {title:col.to_s.gsub("_"," "), field:col ,headerFilter:true}
          end 
        elsif rain_fall_type == "All"
    
          ji = [:January, :February,:March, :April, :May,:June, :July, :August, :September,:October, :November, :December]
          hash_data = ji.map do |col|
            {title:col.to_s.gsub("_"," "), field:col ,headerFilter:true}
          end 
 
        else
         hash_data = [{title:"Region", field:"Region" ,headerFilter:true},
          {title:month.to_s.gsub("_"," "), field:month }
        
        ]
    
        end
      end
       data = {column: hash_data,data: b}
     return data
    end
          # Logic to generate table end


  def map_search(search,compare,year,rain_fall_type,month)
    if search == "All"
      if rain_fall_type == "All"
        where(Year: year).order(:id)
      else
        where(Year: year).order(month)
      end
    else
      # where(Region: search)
      where(Year: year).order(month)
    end
  end


  def query(b,year,rain_fall_type,views,ji,compare,month,search)
    d = "Irrigation_Sources"
    if rain_fall_type == "Winter_Rain"
      ji = [:January, :February]
      hash_data = ji.map do |col|
        {
          type:views,
          legendText: col,
          showInLegend: true,
          dataPoints: b.map do |el|
               { y: el[col], label: el["Region"] }
          end
        }
      end      
    elsif rain_fall_type == "Hot_Weather_Rain"

      ji = [:March, :April, :May]
      hash_data = ji.map do |col|
        {
          type:views,
          legendText: col,
          showInLegend: true,
          dataPoints: b.map do |el|
               { y: el[col], label: el["Region"] }
          end
        }
      end      


    elsif rain_fall_type == "South_West_Monsoon"

      ji = [:June, :July, :August, :September]
      hash_data = ji.map do |col|
        {
          type:views,
          legendText: col,
          showInLegend: true,
          dataPoints: b.map do |el|
               { y: el[col], label: el["Region"] }
          end
        }

      end    
    elsif rain_fall_type == "North_West_Monsoon"

      ji = [:October, :November, :December]
      hash_data = ji.map do |col|
        {
          type:views,
         
          legendText: col,
          showInLegend: true,
          dataPoints: b.map do |el|
               { y: el[col], label: el["Region"] }
          end
        }

      end  
    elsif rain_fall_type == "All"

      ji = [:January, :February,:March, :April, :May,:June, :July, :August, :September,:October, :November, :December]
      hash_data = ji.map do |col|
        {
          type:views,
         
          legendText: col,
          showInLegend: true,
          dataPoints: b.map do |el|
               { y: el[col], label: el["Region"] }
          end
        }

      end  

    elsif rain_fall_type == "None"  && month == "All"
          if year == "All"
            ji = [:January, :February,:March, :April, :May,:June, :July, :August, :September,:October, :November, :December]
            hash_data = ji.map do |col|
              {
                type:views,
               
                legendText: col,
                showInLegend: true,
                dataPoints: b.map do |el|
                     { y: el[col], label: el["Year"] }
                end
              }
      
            end  
          else
            ji = [:January, :February,:March, :April, :May,:June, :July, :August, :September,:October, :November, :December]
            hash_data = ji.map do |col|
              {
                type:views,
               
                legendText: col,
                showInLegend: true,
                dataPoints: b.map do |el|
                     { y: el[col], label: el["Region"] }
                end
              }
      
            end  
          end
   
    else

      if year == "All"
        hash_data =
        [{
          type:views,
          legendText: month,
          showInLegend: true,
          dataPoints: b.reject{|x| x["Year"]== 1947}.map do |el|
               { y: el[month], label: el["Year"] }
          end
        }]
      else
        hash_data =
        [{
          type:views,
          legendText: month,
          showInLegend: true,
          dataPoints: b.map do |el|
               { y: el[month], label: el["Region"] }
          end
        }]
      end

    end
  if views == "stackedBar100" or views == "stackedBar"
    title = {
      animationEnabled: true,
      exportEnabled: true,
      title:{
        text: "#{search.to_s.gsub("_"," ")}"
            },
      data: hash_data
  }
 
  else
    title = {
      animationEnabled: true,
      exportEnabled: true,
      title:{
        text: "#{search.to_s.gsub("_"," ")}"
            },
            axisX: {
              interval:1,
              labelMaxWidth: 180,
              labelAngle: 90,
              labelFontFamily:"verdana0"
              },
      data: hash_data
  }
    
  end
      return title
end




#   def query(b,year,rain_fall_type,views,ji,compare)
#     #  return b
#       # l =  rain_fall_type.gsub(" ","")
#       # abort(rain_fall_type)
#       d = "Region"


#       if views == "pie"
        
#         color = "none"
#       else
#         color = "#4f81bc"
#       end


#       if year == "All" && rain_fall_type == "All"

#         hash_data =  ji.map do |column_name|
#           dataset = column_name.to_s.gsub("_"," ")
#           if compare == "none"
#           {
#             type:views,
#             legendText: dataset,
#             color: color,
#             showInLegend: true,
#             dataPoints: b.map do |el|
#               { y: el[column_name],z:el[rain_fall_type], label: rain_fall_type }
#             end
#           }
#           else

#           {
#             type:views,
#             legendText: dataset,
#             showInLegend: true,
#             dataPoints: b.reject{|x| x["Region"]== "Bihar"}.map do |el|
#                  { y: el[column_name],z:el[column_name], label: el["Region"] }
#             end
#           }
#           end
#         end


#       elsif year == "All"



#         if compare != "None"

#         ji1 = [rain_fall_type,compare]
#           hash_data = ji1.map do |col|

#             dataset = col.to_s.gsub("_"," ")

#             {
#               type:views,
#               legendText: dataset,
#               showInLegend: true,
#               dataPoints: b.reject{|x| x["Region"]== "Bihar"}.map do |el|
#                    { y: el[col], label: el["Region"] }
#               end
#             }
#           end

#         else

#           dataset = rain_fall_type.gsub("_"," ")

#           hash_data =
#           [{
#             type:views,
#             color: color,
#             legendText: dataset,
#             showInLegend: true,
#             dataPoints: b.reject{|x| x["Region"]== "Bihar"}.map do |el|
#                  { y: el[rain_fall_type], label: el["Region"] }
#             end
#           }]
#         end



#         return hash_data
#       else
#         array = []
       

#         if compare

#           if rain_fall_type == "All"
#             # ji = [rain_fall_type,compare]
#             hash_data =  ji.map do |col|
#               {
#                 type:views,
#                 legendText: col,
#                 showInLegend: true,
#                 dataPoints: b.reject{|x| x["Region"]== "Bihar"}.map do |el|
#                      { y: el[col], label: el["Region"] }
#                 end
#               }
#             end

#             return hash_data

#           else
#             # b.each do |element|
#             #   hash1 = {:y => element[rain_fall_type] ,:label => rain_fall_type}
#             #   hash2 = {:y => element[compare] ,:label => compare}
#             #   array.push(hash1)
#             #   array.push(hash2)
#             # end
#             # return array
#               if compare == "None"
#                     ji1 = [rain_fall_type]
#                     hash_data =  ji1.map do |col|
#                       {
#                         type:views,
#                         legendText: col,
#                         showInLegend: true,
#                         dataPoints: b.reject{|x| x["Region"]== "Bihar"}.map do |el|
#                               { y: el[col], label: el["Region"] }
#                         end
#                       }
#                     end
#               else

#              ji1 = [rain_fall_type]
#              hash_data =  ji1.map do |col|
#                {
#                  type:views,
#                  legendText: col,
#                  showInLegend: true,
#                  dataPoints: b.map do |el|
#                       { y: el[col], label: el["Region"] }
#                  end
#                }
#              end

#               end

#             return hash_data
#           end


#         else
#         #   b.each do |element|
#         #     hash1 = {:y => element[rain_fall_type] ,:label => element["Region"]}
#         #     array.push(hash1)
#         #   end
#         ji1 = [rain_fall_type]
#         hash_data =  ji1.map do |col|
#             {
#               type:views,
#               legendText: col,
#               showInLegend: true,
#               dataPoints: b.map do |el|
#                    { y: el[col], label: el["Region"] }
#               end
#             }
#           end
#           return hash_data
#         end

#       end
#     end



    # def query(b,year,rain_fall_type,views,ji,compare)

    #     # abort(rain_fall_type)
    #     d = "Region"
    #     if rain_fall_type == "All"
    #       if views == "Trend Line"
    #         hash_data =  ji.map do |column_name|
    #           if compare =="Bihar vs District"

    #           {
    #             type:"line",
    #             legendText: column_name,
    #             showInLegend: true,
    #             dataPoints: b.map do |el|
    #               { y: el[column_name],z:el[column_name], label: el[d] }
    #             end
    #           }
    #           else

    #           {
    #             type:"line",
    #             legendText: column_name,
    #             showInLegend: true,
    #             dataPoints: b.reject{|x| x["Region"]== "Bihar"}.map do |el|
    #               { y: el[column_name],z:el[column_name], label: el[d] }
    #             end
    #           }
    #           end

    #         end
    #       elsif views == "Bubble"
    #         hash_data =  ji.map do |column_name|
    #           if compare =="Bihar vs District"

    #           {
    #             type:"bubble",
    #             legendText: column_name,
    #             showInLegend: true,
    #             dataPoints: b.map do |el|
    #               { y: el[column_name],z:el[column_name], label: el[d] }
    #             end
    #           }
    #           else

    #           {
    #             type:"bubble",
    #             legendText: column_name,
    #             showInLegend: true,
    #             dataPoints: b.reject{|x| x["Region"]== "Bihar"}.map do |el|
    #               { y: el[column_name],z:el[column_name], label: el[d] }
    #             end
    #           }
    #           end

    #         end
    #       else
    #         hash_data =  ji.map do |column_name|
    #           if compare =="Bihar vs District"

    #           {
    #             type:"column",
    #             legendText: column_name,
    #             showInLegend: true,
    #             dataPoints: b.map do |el|
    #               { y: el[column_name],z:el[column_name], label: el[d] }
    #             end
    #           }
    #           else

    #           {
    #             type:"column",
    #             legendText: column_name,
    #             showInLegend: true,
    #             dataPoints: b.reject{|x| x["Region"]== "Bihar"}.map do |el|
    #               { y: el[column_name],z:el[column_name], label: el[d] }
    #             end
    #           }
    #           end

    #         end
    #       end
    #         return hash_data
    #     else
    #       array = []

    #       if compare == "Bihar vs District"
    #         b.each do |element|
    #           hash1 = {:y => element[rain_fall_type] ,:label => element[d]}
    #           array.push(hash1)
    #         end
    #       else
    #         b.reject{|x| x["Region"]== "Bihar"}.each do |element|
    #           hash1 = {:y => element[rain_fall_type] ,:label => element[d]}
    #           array.push(hash1)
    #         end
    #       end
    #       return array
    #     end
    # end



  def map(b,rain_fall_type,views,ji,month)
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

        dist = el["Region"]

      if (0..6) === i
        hash1 = { y: el[month], label: dist, color: "Red" }
        below_min.push(hash1)
      elsif (6..12) === i
        hash1 = { y: el[month], label: dist, color: "Orange" }
        # hash1 = { y: el[rain_fall_type], label: el["Region"] }
        min.push(hash1)
      elsif (12..18) === i
        hash1 = { y: el[month], label: dist, color: "Dark_Yellow" }
        # hash1 = { y: el[rain_fall_type], label: el["Region"] }
        blow_max.push(hash1)
      elsif (18..24) === i
        hash1 = { y: el[month], label: dist, color: "Yellow" }
        # hash1 = { y: el[rain_fall_type], label: el["Region"] }
        max.push(hash1)

      elsif (24..30) === i
        hash1 = { y: el[month], label: dist, color: "Light_Green" }
        # hash1 = { y: el[rain_fall_type], label: el["Region"] }
        above_max.push(hash1)

      elsif (30..36) === i
        hash1 = { y: el[month], label: dist, color: "Green" }
        # hash1 = { y: el[rain_fall_type], label: el["Region"] }
        extreme.push(hash1)

      elsif (36..40) === i
        hash1 = { y: el[month], label: dist, color: "Dark_Green" }
        # hash1 = { y: el[rain_fall_type], label: el["Region"] }
        above_extreme.push(hash1)
      else
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

    unit1 = "mm"

    if below_min.any?
      b = { min: below_min.first[:y], max: "#{below_min.last[:y]}, #{unit1}" }
    else
      b = { min: below_min.first[:y], max: "#{below_min.last[:y]}, #{unit1}" }
    end

    if min.any?
      c = { min: min.first[:y], max: "#{min.last[:y]}, #{unit1}" }
    else
      c = { min: min.first[:y], max: "#{min.last[:y]}, #{unit1}" }
    end

    if blow_max.any?
      d = { min: blow_max.first[:y], max: "#{blow_max.last[:y]}, #{unit1}" }
    else
      d = { min: blow_max.first[:y], max: "#{blow_max.last[:y]}, #{unit1}" }
    end

    if max.any?
      e = { min: max.first[:y], max: "#{max.last[:y]}, #{unit1}" }
    else
      e = { min: max.first[:y], max: "#{max.last[:y]}, #{unit1}" }
    end

    if above_max.any?

      f = { min: above_max.first[:y], max: "#{above_max.last[:y]}, #{unit1}" }

    else
      f = { min: above_max.first[:y], max: "#{above_max.last[:y]}, #{unit1}" } 

    end

    if extreme.any?
      g =  { min: extreme.first[:y], max: "#{extreme.last[:y]}, #{unit1}" } 

    else
      g = { min: extreme.first[:y], max: "#{extreme.last[:y]}, #{unit1}" } 
    end

    if above_extreme.any?
      h = { min: above_extreme.first[:y], max: "#{above_extreme.last[:y]}, #{unit1}" }
    else
      h = {  }
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
    return a
  end
  
end