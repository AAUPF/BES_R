class Rainfall < ApplicationRecord

  # extend Code

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
    if search == "All"
      # all.order(:WinterRain)
      # abort(rain_fall_type)
       where(Year: year).order(:WinterRain)
      # all
      # where(Districts: search)
    elsif compare == "Bihar vs District"
      where("Districts = ? OR Districts = ?", search, "Bihar").where("year = ?", year).order(rain_fall_type)
    else
      where("Districts = ? ", search).where("year = ?", year).order(rain_fall_type)
    end
  end


  def self.map_search(search,compare,year,rain_fall_type)
    if search == "All"

      
      if rain_fall_type == "All"
        where(Year: year).order(:id)
      else
        where(Year: year).order(rain_fall_type)
      end
      
      
    else
      # where(Districts: search)
      where(Year: year).order(rain_fall_type)
    end
  end

  def self.table(b,rain_fall_type,year)
    h =   [{c:[{v: 'Mike'} , {v: 20}]},
          {c:[{v: 'Bob'}, {v: 20}]}
    ]
    g = b.map do |g|
            [{
            c: g["id"]
            }]
            
          end
        a = {
          cols: [{id: 'task', label: 'Nilay Name', type: 'string'},
                {id: 'nily', label: 'Start Date', type: 'number'}],
          rows: h
        }
        return g
  end

    def self.query(b,year,rain_fall_type,views,rain_fall_typei)
      #  return b
        # l =  rain_fall_type.gsub(" ","")
        # abort(rain_fall_type)
        d = "Districts"
       
        if rain_fall_type == "All"
          if views == "Trend Line"
            hash_data =  rain_fall_typei.map do |column_name|
              { 
                type:"line",
                legendText: column_name,
                showInLegend: true,
                dataPoints: b.map do |el| 
                  { y: el[column_name], label: el[d] }
                end
              }
            end
          else
            hash_data =  rain_fall_typei.map do |column_name|
              { 
                type:"column",
                legendText: column_name,
                showInLegend: true,
                dataPoints: b.map do |el| 
                  { y: el[column_name], label: el[d] }
                end
              }
            end
          end
            return hash_data 
        else 
          array = []      
          b.each do |element|
            hash1 = {:y => element[rain_fall_type] ,:label => element[d]}
            array.push(hash1)     
          end  
          return array
        end    
      end


      
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
