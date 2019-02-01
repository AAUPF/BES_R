module Newwithoutyear

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

  def search(search,compare,year,rain_fall_type)
    if search == "All"
          if rain_fall_type == "All"
            
            all
          else
            all.order(rain_fall_type)
          end
    elsif compare != "None"
        where("Typeofirrigationpotential = ? OR Typeofirrigationpotential = ?", search, compare).order(:id)
    else
          if rain_fall_type == "All"
            where("Typeofirrigationpotential = ? ", search).order(:id)
         else
            where("Typeofirrigationpotential = ? ", search).order(rain_fall_type)
        end
    end
  end



    # Logic to generate table starts
    def table (b,rain_fall_type,year,ji,compare)
      dataset = rain_fall_type.gsub("_"," ")

      if rain_fall_type == "All"
        hash_data = ji.map do |el|
          if el.to_s == "TypeofIrrigationPotential"
            {title:"TypeofIrrigationPotential", field:el,headerFilter:true}
          else
            {title:el.to_s.gsub("_"," "), field:el}
          end

           end

      else
      if compare == "None"
        hash_data = [
        #   {title:"Year", field:"Year", sorter:"string",  editor:true},
        {title:"TypeofIrrigationPotential", field:"TypeofIrrigationPotential"},
        {title:dataset, field:rain_fall_type}
      ]
      else
        hash_data = [
        # {title:compare, field:compare, sorter:"string", editor:true},
        #   {title:"Year", field:"Year", sorter:"string", editor:true},
        {title:"TypeofIrrigationPotential", field:"TypeofIrrigationPotential"},
        {title:dataset, field:rain_fall_type}
      ]
      end
      end


       data = {column: hash_data,data: b}
             return data
          end
          # Logic to generate table end






  def map_search(search,compare,year,rain_fall_type)
    if search == "All"
      if rain_fall_type == "All"
        all.order(:id)
      else
        all.order(rain_fall_type)
      end


    else
      # where(Districts: search)
      all.order(rain_fall_type)
    end
  end

  

  # def table(b,rain_fall_type,year)
  #   h =   [{c:[{v: 'Mike'} , {v: 20}]},
  #         {c:[{v: 'Bob'}, {v: 20}]}
  #   ]
  #   g = b.map do |g|
  #           [{
  #           c: g["id"]
  #           }]

  #         end
  #       a = {
  #         cols: [{id: 'task', label: 'Nilay Name', type: 'string'},
  #               {id: 'nily', label: 'Start Date', type: 'number'}],
  #         rows: h
  #       }
  #       return g
  # end


  # def hash_data(ji,b)
  #   hash_data =  ji.map do |column_name|
  #     {
  #       type:"line",
  #       legendText: column_name,
  #       showInLegend: true,
  #       dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
  #         { y: el[column_name], label: el[d] }
  #       end
  #     }
  #   end
  #   return hash_data
  # end



  def query(b,year,rain_fall_type,views,ji,compare)
    d = "Typeofirrigationpotential"
    color = "#4f81bc"
      if rain_fall_type == "All"
      if views 
        hash_data =  ji.map do |column_name|
          if compare =="Bihar vs District"

              dataset = column_name.to_s.gsub("_"," ")
          {
            type:views,
            legendText: dataset,
            showInLegend: true,
            dataPoints: b.map do |el|
              { y: el[column_name],z:el[column_name], label: el["TypeofIrrigationPotential"] }
            end
          }
          else
           

            dataset = column_name.to_s.gsub("_"," ")
          {
            type:views,
            legendText: dataset,
            showInLegend: true,
            dataPoints: b.reject{|x| x["TypeofIrrigationPotential"]== "Total"}.map do |el|
              { y: el[column_name],z:el[column_name], label: el["TypeofIrrigationPotential"] }
            end
          }
          end

        end
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
      if compare == "Bihar vs District"
          dataset = rain_fall_type.gsub("_"," ")

        hash_data =
        [{
          type:views,
         color: color,
          legendText: dataset,
          showInLegend: true,
          dataPoints: b.map do |el|
               { y: el[rain_fall_type], label: el["Typeofirrigationpotential"] }
          end
        }]
      else
        dataset = rain_fall_type.gsub("_"," ")
        hash_data =
        [{
          type:views,
         color: color,
          legendText: dataset,
          showInLegend: true,
          dataPoints: b.reject{|x| x["TypeofIrrigationPotential"]== "Total"}.map do |el|
               { y: el[rain_fall_type], label: el["TypeofIrrigationPotential"] }
          end
        }]
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
end




#   def query(b,year,rain_fall_type,views,ji,compare)
#     #  return b
#       # l =  rain_fall_type.gsub(" ","")
#       # abort(rain_fall_type)
#       d = "Districts"


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
#             dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
#                  { y: el[column_name],z:el[column_name], label: el["Districts"] }
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
#               dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
#                    { y: el[col], label: el["Districts"] }
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
#             dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
#                  { y: el[rain_fall_type], label: el["Districts"] }
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
#                 dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
#                      { y: el[col], label: el["Districts"] }
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
#                         dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
#                               { y: el[col], label: el["Districts"] }
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
#                       { y: el[col], label: el["Districts"] }
#                  end
#                }
#              end

#               end

#             return hash_data
#           end


#         else
#         #   b.each do |element|
#         #     hash1 = {:y => element[rain_fall_type] ,:label => element["Districts"]}
#         #     array.push(hash1)
#         #   end
#         ji1 = [rain_fall_type]
#         hash_data =  ji1.map do |col|
#             {
#               type:views,
#               legendText: col,
#               showInLegend: true,
#               dataPoints: b.map do |el|
#                    { y: el[col], label: el["Districts"] }
#               end
#             }
#           end
#           return hash_data
#         end

#       end
#     end



    # def query(b,year,rain_fall_type,views,ji,compare)

    #     # abort(rain_fall_type)
    #     d = "Districts"
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
    #             dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
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
    #             dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
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
    #             dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el|
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
    #         b.reject{|x| x["Districts"]== "Bihar"}.each do |element|
    #           hash1 = {:y => element[rain_fall_type] ,:label => element[d]}
    #           array.push(hash1)
    #         end
    #       end
    #       return array
    #     end
    # end



  def map(b,rain_fall_type,views,ji)
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