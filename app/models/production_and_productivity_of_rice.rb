class ProductionAndProductivityOfRice < ApplicationRecord
    extend Newdistrict  

#  # include SpecialMethods
#  def import1(file)
#   spreadsheet = Roo::Spreadsheet.open(file.path)
#          header = spreadsheet.row(1)
#          (2..spreadsheet.last_row).each do |i|
#            row = Hash[[header, spreadsheet.row(i)].transpose]
#            puts row.to_hash
#            product = find_by(id: row["id"]) || new
#            product.attributes = row.to_hash
#            product.save!
#      end
# end
# def search(search,compare)
#   if search == "All"
#     all.order(:id)
#   elsif compare == "Bihar vs District"
#     where("Districts = ? OR Districts = ?", search, "Bihar")
#   else
#     where(Districts: search)
#   end
# end

# def map_search(search)
#   if search == "All"
#     all.order(:id)
#   else
#     # where(Districts: search)
#     all.order(search)
#   end
# end
#   # def query(b,year,rain_fall_type,views)
#   #   array = []  
#   #   d = "Districts"  
#   #   b.each do |element|
#   #     if element[d] == "Average "
#   #     elsif element[d] == "StD"
#   #     else
#   #       hash1 = {:y => element[rain_fall_type] ,:label => element[d]}
#   #       array.push(hash1)   
#   #     end 
#   #   end  
#   #   return array    
#   #   end
#     def query(b,year,rain_fall_type,views,compare,ji)
#       #  return b
#         l =  rain_fall_type.gsub(" ","")
#          d = "Districts"
#         # if year == "2016"
#         #   j = "#{l}_2016"
#         #   ji = [:WinterRain_2016, :HotWeatherRain_2016, :SouthWestMonsoonRain_2016, :NorthWestMonsoonRain_2016]
#         #   puts j
#         # elsif year == "2017"
#         #   j = "#{l}_2017"
#         #   ji = [:WinterRain_2017, :HotWeatherRain_2017, :SouthWestMonsoonRain_2017]
#         # else
#         #   puts "no year"
#         # end     
        
#         # ji = [:Area_2015, :Production_2015, :Productivity_2015, :Non_Agriculture_Land_Area,:Area_2016, :Production_2016,:Productivity_2016]
#         if rain_fall_type == "All"

#           if views == "Trend Line"
#             hash_data =  ji.map do |column_name|
#               { 
#                 type:"line",
#                 legendText: column_name,
#                 showInLegend: true,
#                 dataPoints: b.reject{|x| x["Districts"] == "Bihar"}.map do |el| 
#                   { y: el[column_name], label: el[d] }
#                 end
#               }
#             end

#             elsif views == "Bubble"
#               hash_data =  ji.map do |column_name|
#                 { 
#                   type:"scatter",
#                   legendText: column_name,
#                   showInLegend: true,
#                   dataPoints: b.reject{|x| x["Districts"] == "Bihar"}.map do |el| 
#                     { y: el[column_name], label: el[d] }
#                   end
#                 }
#               end
#           else
#             hash_data =  ji.map do |column_name|
#               { 
#                 type:"column",
#                 legendText: column_name,
#                 showInLegend: true,
#                 dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el| 
#                   { y: el[column_name], label: el[d] }
#                 end
#               }
#             end
#           end
#             return hash_data 
#         else 
#           array = []   
          
#           b.each do |element|
#           if compare == "Bihar vs District"
#             hash1 = {:y => element[rain_fall_type] ,:label => element[d]}
#                 array.push(hash1)   
#           else
           
#               if element[d] == "Bihar"
                
#               else
#                 hash1 = {:y => element[rain_fall_type] ,:label => element[d]}
#                 array.push(hash1)    
#               end
#             end 
#           end
          
      
#           return array
#         end    
#       end
# def map(b,j,year)
#   array = []   
#   # a = [] 
#   # l =  rain_fall_type.gsub(" ","")
#   # if year == "2016"
#   #   j = "#{l}_2016" 
#   #   elsif year == "2017"    
#   #     j = "#{l}_2017"  
#   # else

#   #   j = rain_fall_type
#   # end
  
#   a = []
#   below_min = [] 
#   min = []
#   blow_max = []
#   max = []
#   above_max = []
#   extreme = []
#   above_extreme = []
#   b.map.with_index do |el,i| 

#     if el["Districts"] == "W. Champaran"
#       dist = "WChamparan"
#     elsif el["Districts"] == "E. Champaran"
#       dist = "EChamparan"
#     else
#       dist = el["Districts"]
#     end

#     if (0..7) === i
#       hash1 = { y: el[j], label: dist, color: "Red" }
#       below_min.push(hash1)
#     elsif (7..15) === i
#       hash1 = { y: el[j], label: dist, color: "Orange" }
#       # hash1 = { y: el[j], label: el["Districts"] }
#       min.push(hash1)
#     elsif (15..21) === i
#       hash1 = { y: el[j], label: dist, color: "Dark_Yellow" }
#       # hash1 = { y: el[j], label: el["Districts"] }
#       blow_max.push(hash1)
#     elsif (21..26) === i
#       hash1 = { y: el[j], label: dist, color: "Yellow" }
#       # hash1 = { y: el[j], label: el["Districts"] }
#       max.push(hash1)

#     elsif (26..32) === i
#       hash1 = { y: el[j], label: dist, color: "Light_Green" }
#       # hash1 = { y: el[j], label: el["Districts"] }
#       above_max.push(hash1)

#     elsif (32..37) === i
#       hash1 = { y: el[j], label: dist, color: "Green" }
#       # hash1 = { y: el[j], label: el["Districts"] }
#       extreme.push(hash1)

#     elsif (36..40) === i
#       hash1 = { y: el[j], label: dist, color: "Dark_Green" }
#       # hash1 = { y: el[j], label: el["Districts"] }
#       above_extreme.push(hash1)
#     else

#       puts "Hello"
#     end
#     # array.push(a)
#   end
#   a.push({"below_min": below_min})  
#   a.push({"min": min})  
#   a.push({"blow_max": blow_max}) 
#   a.push({"max": max}) 
#   a.push({"above_max": above_max}) 
#   a.push({"extreme": extreme}) 
#   a.push({"above_extreme": above_extreme})
#   # array = [{name: "array"}]
#   # sleep 1
#   return a
# end
# def search1(search,compare)
#  puts search
#   # where(Districts: search)
#   if search == "All"
#     all.order(:Geographical_Area)
#   elsif compare == "Bihar vs District"
#     where("Districts = ? OR Districts = ?", search, "Bihar")
#   else
#     where(Districts: search)
#   end
# end
end
