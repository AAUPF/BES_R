module Rfallseason 
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

      if year == "All" and rain_fall_type == "All" 
       all
      
      elsif year == "All" and compare == "None"
        # all
        
        if compare == "None"
          # abort("error")

          
          if year == "All"
             
            select(rain_fall_type,"Year")

          else
           
            select(rain_fall_type). where("Year = ?", year)

          end
          
        else
          
          
          select(rain_fall_type,"Year")
        end
        
        
      else
           if compare == "None"
            # abort(compare)
            # abort("errror")
            
            if rain_fall_type == "All"
              where("Year = ?", year)
            else
              select(rain_fall_type).where("Year = ?", year)
            end
            
             
           else
            
            if year == "All"
              select(rain_fall_type,compare,"Year")
            else
              where("Year = ?", year) 
            end
            
             
           end
      end

  end
  
  
  def map_search(search,compare,year,rain_fall_type)
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
  

  
    def query(b,year,rain_fall_type,views,ji,compare)
      #  return b
        # l =  rain_fall_type.gsub(" ","")
        # abort(rain_fall_type)
        d = "Districts"
       
        if year == "All" && rain_fall_type == "All"
          hash_data =  ji.map do |column_name|
            if compare == "none"
            { 
              type:views,
              legendText: column_name,
              showInLegend: true,
              dataPoints: b.map do |el| 
                { y: el[column_name],z:el[rain_fall_type], label: rain_fall_type }
              end
            }
            else
               
            { 
              type:views,
              legendText: column_name,
              showInLegend: true,
              dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el| 
                   { y: el[column_name],z:el[column_name], label: el["Year"] }
              end
            }
            end
          end
           

        elsif year == "All"


          
          if compare != "None"
            
          ji1 = [rain_fall_type,compare] 
            hash_data = ji1.map do |col|
              { 
                type:views,
                legendText: col,
                showInLegend: true,
                dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el| 
                     { y: el[col], label: el["Year"] }
                end
              }
            end
            
          else
            
            hash_data = 
            [{ 
              type:views,
              legendText: rain_fall_type,
              showInLegend: true,
              dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el| 
                   { y: el[rain_fall_type], label: el["Year"] }
              end
            }]
          end
          
    
          
          return hash_data
        else 
          array = [] 
          
          if compare 
            
            if rain_fall_type == "All"
              # ji = [rain_fall_type,compare] 
              hash_data =  ji.map do |col|
                { 
                  type:views,
                  legendText: col,
                  showInLegend: true,
                  dataPoints: b.reject{|x| x["Districts"]== "Bihar"}.map do |el| 
                       { y: el[col], label: el["Year"] }
                  end
                }
              end

              return hash_data 
              
            else
              b.each do |element|
                hash1 = {:y => element[rain_fall_type] ,:label => rain_fall_type}
                hash2 = {:y => element[compare] ,:label => compare}
                array.push(hash1) 
                array.push(hash2)      
              end 
              return array 
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
def query1(b,year,rain_fall_type,views,ji,compare)
  return b  
end


def search1(search,compare,year,rain_fall_type)

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