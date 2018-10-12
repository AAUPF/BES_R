module Newmodulefunctions
  def self.eov_year(b,data,views,_year,color,search)

    result = b.select { |hash| hash[:Sector] =~ Regexp.union(data) }
    if views != "column"
    hash_data = result.reject{|x| x["Sector"]== "Total GSVA at basic prices"}.map do |col|
      {
        type:views,
        legendText: col[:Sector],
        showInLegend: true,
        dataPoints: [{ y: col[_year], label: _year }]
      }
    end
      
    else


          hash_data = [{
      type: views,
      color: color,
      legendText: search,
      showInLegend: true,
      dataPoints: result.map do |hash|
                    { y: hash[_year], label: hash[:Sector] }
                  end
    }]
      
    end

  end
    def self.single_year(b,data,views,_year)
        result = b.select { |hash| hash[:Sector] =~ Regexp.union(data) }
    
        hash_data = result.reject{|x| x["Sector"]== "Balance from Current Revenue (Rs. crore)"}.map do |col|
          {
            type:views,
            toolTipContent: "{label}<br/>{name}: <strong>{y}</strong>",
            name:col[:Sector],
            legendText: _year,
            showInLegend: true,
            dataPoints: [{ y: col[_year], label: col[:Sector]}]
          }
        end
        return hash_data

      end


      def self.year_all(b,data,views,_year,jip)

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

        return hash_data
end



def self.no_year(b,rain_fall_type,_year,color,views,compare)



  if compare != "None"

    if views !="column" && views!="line"

      dataset = rain_fall_type.tr('_', ' ')
        hash_data = b.map do |el|

          {
            type: views,
            legendText: _year,
            showInLegend: true,
            dataPoints: [{ y: el[_year], label: el['Sector'] }]
          }

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

    return hash_data
end



def self.no_year_two_variable(b,rain_fall_type,_year,color,views,compare)



  if compare != "None"

    if views !="column" && views!="line"

      dataset = rain_fall_type.tr('_', ' ')
        hash_data = b.map do |el|

          {
            type: views,
            legendText: _year,
            showInLegend: true,
            dataPoints: [{ y: el[_year], label: el['Variable2'] }]
          }

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
                        { y: el[_year], label: el['Variable2'] }
                      end
        }]

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

    return hash_data
end


def self.year_to_stack(b,rain_fall_type,_year,views,color,jip)
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

      return hash_data
    
  end

def self.title_return(views,search,hash_data,compare)

  if compare != "None"
    newname = "#{search} vs #{compare}"
  else
    newname = search
  end


    title = if (views == 'stackedBar100') || (views == 'stackedBar')
      {
        animationEnabled: true,
        exportEnabled: true,
        title: {
          text: newname.to_s.tr('_', ' ').to_s
        },
        data: hash_data
      }

    else
      {
        animationEnabled: true,
        exportEnabled: true,
        title: {
          text: newname.to_s.tr('_', ' ').to_s
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




  def self.title_return_two(views,search,hash_data,compare)

    if compare != "None"
      newname = "#{compare}"
    else
      newname = search
     
  
    end
  
  
      title = if (views == 'stackedBar100') || (views == 'stackedBar')
        {
          animationEnabled: true,
          exportEnabled: true,
          title: {
            text: newname.to_s.tr('_', ' ').to_s
          },
          data: hash_data
        }
  
      else
        {
          animationEnabled: true,
          exportEnabled: true,
          title: {
            text: newname.to_s.tr('_', ' ').to_s
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

  def self.title_return_three(views,search,hash_data,compare,rain_fall_type)

    if search == "All" && rain_fall_type == "None"
      new_type = "Primary vs Secondary vs Tertiary"

    else

      if rain_fall_type == "None" or rain_fall_type == "All"
        new_type = search

      else
        

        new_type = rain_fall_type

      end

    end  
      title = if (views == 'stackedBar100') || (views == 'stackedBar')
        {
          animationEnabled: true,
          exportEnabled: true,
          title: {
            text: new_type.to_s.tr('_', ' ').to_s
          },
          data: hash_data
        }
  
      else
        {
          animationEnabled: true,
          exportEnabled: true,
          title: {
            text: new_type.to_s.tr('_', ' ').to_s
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
  def self.year_to_stack_compare_all(b,rain_fall_type,_year,views,color,jip)

    if views != "column" && views!="line"
      hash_data =  jip.map do |col|
        {
          type:views,
          legendText: col,
          showInLegend: true,
          dataPoints: b.map  do |el|
            {y: el[col], label: el[:Sector]}
          end
        }
      end
      else
        hash_data =  b.map do |col|
          {
            type:views,
            legendText: col[:Sector],
            showInLegend: true,
            dataPoints: jip.map  do |el|
              {y: col[el], label: el}
            end
          }
        end
      end

      return hash_data
    
  end

  def eov(b,rain_fall_type,data,jip,views) 
    color = "Blue"

    result = b.select { |hash| hash[:Sector] =~ Regexp.union(data) }
    # jip = [:'2011-12', :'2012-13', :'2013-14', :'2014-15', :'2015-16', :'2016-17']
        if rain_fall_type == "None"
          # result = b.select { |hash| hash[:Sector] =~ Regexp.union(data) }
          if views != "column" && views!= "line"
            hash_data = []
           result.reject{|x| x["Sector"]== "Total GSVA at basic prices"}.map do |col|
           jip.map do |el|
           hash_data.push(
            {
              type:views,
              toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
              name:"#{el["Districts"]}",
              legendText:"#{el["Districts"]}",
              showInLegend: true,
              dataPoints: [{ y: col[el], label:  el }]
          }  
           )
            end
           
          end
            
          else
             hash_data = result.reject{|x| x["Sector"]== "Total GSVA at basic prices"}.map do |col|
            {
              type:views,
              legendText: col[:Sector],
              color: color,
              showInLegend: true,
              dataPoints: jip.map do |el|

                if el.to_s == "2011-16"
                  years = "CAGR(2011-16)"
                else
                  years = el
                end
                  { y: col[el], label: years }
              end
            }
          end
            
          end
    
          
        else

          hash_data = result.reject{|x| x["Sector"]== "Total GSVA at basic prices"}.map do |col|
            {
              type:views,
              legendText: col[:Sector],
              showInLegend: true,
              dataPoints: jip.map do |el|

                if el.to_s == "2011-16"
                  years = "CAGR(2011-16)"
                else
                  years = el
                end
                  { y: col[el], label: years }
              end
            }
          end
          
        end

  end


  def self.eov_new(b,views, data,jip)
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
  end


  def self.eov_unknown(rain_fall_type,b,_year,views,color)
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

  def self.controller_code(rain_fall_type,search)

    if search == "Total Receipts Revenue Account"

      if rain_fall_type == "All"
        data = [
          "Tax Revenue",
          "Non Tax Revenue",
          "Grants in Aid and Contributions",
        ]
      else
        rain_fall_type
        data = [
          "Total Receipts Revenue Account"
        ]    
      end
  
    elsif search == "Total Exp. Revenue Account"
  
      if rain_fall_type == "All"
        data = [
          "General Services, of which",
          "Social Services",
          "Economic Services",
          "Grants-in-aid",
        ]
      else
        rain_fall_type
        data = [
          "Total Exp. Revenue Account"
        ]    
      end
  
    elsif search == "Revenue Deficit"
  
      if rain_fall_type == "All"
        data = [
          "General Services, of which",
          "Social Services",
          "Economic Services",
          "Grants-in-aid",
        ]
      else
        rain_fall_type
        data = [
          "Revenue Deficit"
        ]    
      end
  
    elsif search == "Capital Receipts"
  
      if rain_fall_type == "All"
        data = [
          "Public Debt etc.",
          "Recovery of Loan and Advances",
        ]
      else
        rain_fall_type
        data = [
          "Capital Receipts"
        ]    
      end
  
    elsif search == "Capital Expenditure, of which"
  
      if rain_fall_type == "All"
        data = [
          "Capital Outlay",
          "Loans and Advances",
          "Public Debt.",
        ]
      else
        rain_fall_type
        data = [
          "Capital Expenditure, of which"
        ]    
      end
  
    elsif search == "Total Expenditure"
  
      if rain_fall_type == "All"
        data = [
          "Plan Expenditure",
          "Non Plan Expenditure",
        ]
      else
        rain_fall_type
        data = [
          "Total Expenditure"
        ]    
      end
  
  
    elsif search == "Gross Fiscal Deficit"
  
      if rain_fall_type == "All"
        data = [
          "Plan Expenditure",
          "Non Plan Expenditure",
        ]
      else
        rain_fall_type
        data = [
          "Gross Fiscal Deficit"
        ]    
      end
  
  
  
    elsif search == "Primary Deficit"
  
      if rain_fall_type == "All"
        data = [
          "Plan Expenditure",
          "Non Plan Expenditure",
        ]
      else
        rain_fall_type
        data = [
          "Primary Deficit"
        ]    
      end
  
  
    elsif search == "Total Borrowings"
  
      if rain_fall_type == "All"
        data = [
          "Internal Debt Receipt",
          "Loans from Central Government",
        ]
      else
        rain_fall_type
        data = [
          "Total Borrowings"
        ]    
      end
  
    elsif search == "Repayment of Public Debt"
  
      if rain_fall_type == "All"
        data = [
          "Internal Debt Receipt",
          "Loans from Central Government",
        ]
      else
        rain_fall_type
        data = [
          "Repayment of Public Debt"
        ]    
      end
  
    elsif search == "Debt Outstanding"
  
      if rain_fall_type == "All"
        data = [
          "Internal Debt Receipt",
          "Loans from Central Government",
        ]
      else
        rain_fall_type
        data = [
          "Debt Outstanding"
        ]    
      end
  
    elsif search == "GSDP"
  
      if rain_fall_type == "All"
        data = [
          "Internal Debt Receipt",
          "Loans from Central Government",
        ]
      else
        rain_fall_type
        data = [
          "GSDP"
        ]    
      end
    end
  end


  def self.controller_comparison(rain_fall_type,compare,search)
    if rain_fall_type == 'Total Revenue Receipts'
      if compare == 'None'

      elsif compare == 'All'
        rain_fall_type = compare
        data = [
            "Tax revenues",
            "Non-Tax Revenues",
            "Grants and Contributions",
          ]
      else
        rain_fall_type = compare
        data = [
          "Tax revenues",
          "Non-Tax Revenues",
          "Grants and Contributions",
          ]
      end
    elsif rain_fall_type == 'None'
      rain_fall_type = search
      data = [
        'Revenue Account'
      ]
    else
      data = [
        "Total Revenue Receipts",
        "Total Revenue Expenditure",
        "Deficit Revenue A/c ",
        "Consolidated Fund Receipts",
        "Net Consolidated Fund (Receipt-Expenditure)",
        "Contingency Fund ",
        ]
    end


    if rain_fall_type == 'Total Revenue Expenditure'
      if compare == 'None'
        
      elsif compare == 'All'
        rain_fall_type = compare
        data = [
          "General Services",
          "Social Services",
          "Economic Services",
          "Grants and Contributions",
          ]
      else
        rain_fall_type = compare
        data = [
          "General Services",
          "Social Services",
          "Economic Services",
          "Grants and Contributions",
          ]
      end
    elsif rain_fall_type == 'None'
      rain_fall_type = search
      data = [
        'Revenue Account'
      ]
    else
      data = [
        "General Services",
          "Social Services",
          "Economic Services",
          "Grants and Contributions",
        ]
    end


    if rain_fall_type == 'Contingency Fund '
      if compare == 'None'
        
      elsif compare == 'All'
        rain_fall_type = compare
        data = [
          "General Services",
          "Social Services",
          "Economic Services",
          "Grants and Contributions",
          ]
      else
        rain_fall_type = compare
        data = [
          "General Services",
          "Social Services",
          "Economic Services",
          "Grants and Contributions",
          ]
      end
    elsif rain_fall_type == 'None'
      rain_fall_type = search
      data = [
        'Revenue Account'
      ]
    else
      data = [
        "General Services",
          "Social Services",
          "Economic Services",
          "Grants and Contributions",
        ]
    end


    if rain_fall_type == 'Total Receipts Public Account'
      if compare == 'None'
        
      elsif compare == 'All'
        rain_fall_type = compare
        data = [
          "General Services",
          "Social Services",
          "Economic Services",
          "Grants and Contributions",
          ]
      else
        rain_fall_type = compare
        data = [
          "General Services",
          "Social Services",
          "Economic Services",
          "Grants and Contributions",
          ]
      end
    elsif rain_fall_type == 'None'
      rain_fall_type = search
      data = [
        'Revenue Account'
      ]
    else
      data = [
        "General Services",
          "Social Services",
          "Economic Services",
          "Grants and Contributions",
        ]
    end




    if rain_fall_type == 'Total Disbursements Public Account'
      if compare == 'None'
        
      elsif compare == 'All'
        rain_fall_type = compare
        data = [
          "General Services",
          "Social Services",
          "Economic Services",
          "Grants and Contributions",
          ]
      else
        rain_fall_type = compare
        data = [
          "General Services",
          "Social Services",
          "Economic Services",
          "Grants and Contributions",
          ]
      end
    elsif rain_fall_type == 'None'
      rain_fall_type = search
      data = [
        'Revenue Account'
      ]
    else
      data = [
        "General Services",
          "Social Services",
          "Economic Services",
          "Grants and Contributions",
        ]
    end


    if rain_fall_type == 'Total Capital Receipts'
      if compare == 'None'
        
      elsif compare == 'All'
        rain_fall_type = compare
        data = [
          "General Services",
          "Social Services",
          "Economic Services",
          "Grants and Contributions",
          ]
      else
        rain_fall_type = compare
        data = [
          "General Services",
          "Social Services",
          "Economic Services",
          "Grants and Contributions",
          ]
      end
    elsif rain_fall_type == 'None'
      rain_fall_type = search
      data = [
        'Revenue Account'
      ]
    else
      data = [
        "General Services",
          "Social Services",
          "Economic Services",
          "Grants and Contributions",
        ]
    end


    if rain_fall_type == 'Total Capital Expenditure '
      if compare == 'None'
        
      elsif compare == 'All'
        rain_fall_type = compare
        data = [
          "General Services",
          "Social Services",
          "Economic Services",
          "Grants and Contributions",
          ]
      else
        rain_fall_type = compare
        data = [
          "General Services",
          "Social Services",
          "Economic Services",
          "Grants and Contributions",
          ]
      end
    elsif rain_fall_type == 'None'
      rain_fall_type = search
      data = [
        'Revenue Account'
      ]
    else
      data = [
        "General Services",
          "Social Services",
          "Economic Services",
          "Grants and Contributions",
        ]
    end


    if rain_fall_type == 'Deficit Capital Account'
      if compare == 'None'
        
      elsif compare == 'All'
        rain_fall_type = compare
        data = [
          "General Services",
          "Social Services",
          "Economic Services",
          "Grants and Contributions",
          ]
      else
        rain_fall_type = compare
        data = [
          "General Services",
          "Social Services",
          "Economic Services",
          "Grants and Contributions",
          ]
      end
    elsif rain_fall_type == 'None'
      rain_fall_type = search
      data = [
        'Revenue Account'
      ]
    else
      data = [
        "General Services",
          "Social Services",
          "Economic Services",
          "Grants and Contributions",
        ]
    end


    if rain_fall_type == 'Consolidated Fund Expenditure'
      if compare == 'None'
        
      elsif compare == 'All'
        rain_fall_type = compare
        data = [
          "General Services",
          "Social Services",
          "Economic Services",
          "Grants and Contributions",
          ]
      else
        rain_fall_type = compare
        data = [
          "General Services",
          "Social Services",
          "Economic Services",
          "Grants and Contributions",
          ]
      end
    elsif rain_fall_type == 'None'
      rain_fall_type = search
      data = [
        'Revenue Account'
      ]
    else
      data = [
        "General Services",
          "Social Services",
          "Economic Services",
          "Grants and Contributions",
        ]
    end
    return data, rain_fall_type
  end



  def self.comparison_all(rain_fall_type,compare,search)

    if search == 'Revenue Account'
      if rain_fall_type == "Agriculture, Forestry and Fishing"

        if compare == "None"
          # #search = "None"
          rain_fall_type
        elsif compare == "All"
          rain_fall_type = compare
          data = [
            "Crops",
            "Livestock",
            "Forestry and Logging",
            "Fishing and Aquaculture",
          ]
        else
          # #search = "None"
          rain_fall_type = compare
        end

      elsif rain_fall_type == "None"
        rain_fall_type

        data = [
          "Primary",
        ]

      else
        data = [
          "Total Revenue Expenditure",
          "Deficit Revenue A/c ",
          "Consolidated Fund Receipts",
          "Net Consolidated Fund (Receipt-Expenditure)",
          "Contingency Fund ",
        ]
      end

elsif search == 'Secondary'


  if rain_fall_type == "None"
    rain_fall_type

    data = [
      "Secondary",
    ]
    
  else
    data = [
      "Manufacturing",
      "Electricity and Utilitiy Services",
      "Construction",
     
    ]
    
  end


elsif search == 'Tertiary'
  if rain_fall_type == "Trade and Hospitality"

    if compare == "None"
      # #search = "None"

      rain_fall_type
    elsif compare == "All"
      rain_fall_type = compare
      data = [
        "Trade and Repair Services",
        "Hotels and Restaurants",
      ]

    else
      #search = "None"
      rain_fall_type = compare
      data = [
        "Trade and Repair Services",
        "Hotels and Restaurants",
      ]

    end

  elsif rain_fall_type == "Transport and Communication"

    if compare == "None"
      rain_fall_type
    elsif compare == "All"
      rain_fall_type = compare
      data = [
        "Railways",
        "Road Transport",
        "Water Transport",
        "Air Transport",
        "Services incidental to transport",
        "Storage",
        "Communication and Broadcasting",
      ]

    else
      rain_fall_type = compare
    end

  elsif rain_fall_type == "None"
    rain_fall_type

    data = [
      "Tertiary",
    ]

  else
    data = [
      "Trade and Hospitality",
      "Transport and Communication",
      "Financial Services",
      "Real Estate Services",
      "Public Administration",
      "Other Services",
    ]
  end


elsif search == 'All'
  if rain_fall_type == "Agriculture, Forestry and Fishing"
    if compare == "None"
      #search = "None"

      rain_fall_type
    elsif compare == "All"
      rain_fall_type = compare
      data = [
        "Crops",
        "Livestock",
        "Forestry and Logging",
        "Fishing and Aquaculture",
      ]

      elsif rain_fall_type == "None"
        rain_fall_type
  
        data = [
          "Tertiary",
          "Secondary",
          "Primary"
        ]

    else
      #search = "None"
      rain_fall_type = compare
      data = [
        "Agriculture, Forestry and Fishing",
        "Mining and Quarrying",
        "Manufacturing",
        "Electricity and Utilitiy Services",
        "Construction",
        "Trade and Hospitality",
        "Transport and Communication",
        "Financial Services",
        "Real Estate Services",
        "Public Administration",
        "Other Services",
        "Tertiary",
        "Total GSVA at basic prices",
      ]
    end
  elsif rain_fall_type == "Trade and Hospitality"

    if compare == "None"
      #search = "None"

      rain_fall_type
    elsif compare == "All"
      rain_fall_type = compare
      data = [
        "Trade and Repair Services",
        "Hotels and Restaurants",
      ]


    else
      #search = "None"
      rain_fall_type = compare
      data = [
        "Trade and Repair Services",
        "Hotels and Restaurants",
      ]

    end

  elsif rain_fall_type == "Transport and Communication"

    if compare == "None"
      rain_fall_type
    elsif compare == "All"
      rain_fall_type = compare
      data = [
        "Railways",
        "Road Transport",
        "Water Transport",
        "Air Transport",
        "Services incidental to transport",
        "Storage",
        "Communication and Broadcasting",
      ]

    else
      rain_fall_type = compare
    end


  elsif  rain_fall_type == "None"
    rain_fall_type

    data = [
      "Tertiary",
      "Secondary",
      "Primary"
    ]

  else
    data = [
      "Agriculture, Forestry and Fishing",
      "Mining and Quarrying",
      "Manufacturing",
      "Electricity and Utilitiy Services",
      "Construction",
      "Trade and Hospitality",
      "Transport and Communication",
      "Financial Services",
      "Real Estate Services",
      "Public Administration",
      "Other Services",
      "Total GSVA at basic prices",
    ]
  end
end

    return data, rain_fall_type
  end


  def self.search_all_rainfalltype_all(color,rain_fall_type,b,ji,compare,views)

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
        dataPoints: b.reject{|x| x["Type_of_Company_or_corporation"]== "Total"}.map do |el|
             { y: el[column_name],z:el[column_name], label: el["Type_of_Company_or_corporation"] }
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

  end

  def self.search_all(b,views,legend,remove,rain_fall_type,color)
    if views != "column" && views != "line" && views != "scatter"
      hash_data = b.reject{|x| x["#{legend}"]== "#{remove}"}.map do |col|
        {
          type:views,
          toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
          name:col["#{legend}"],
          legendText: col["#{legend}"],
          showInLegend: true,
          dataPoints: [{ y: col[rain_fall_type], label: col[:Year] }]
        }
      end
        
      else
        dataset = rain_fall_type.tr('_', ' ')
        hash_data =
        [{
        type: views,
        toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
        name:dataset,
        color: color,
        legendText: dataset,
        showInLegend: true,
        dataPoints: b.reject{|x| x["#{legend}"]== "#{remove}"}.map do |el|
            { y: el[rain_fall_type], label: el["#{legend}"] }
                    end
        }]
      end 
  end

  def self.search_elese_all(b,views,legend,remove,rain_fall_type,color)

    dataset = rain_fall_type.tr('_', ' ')
                  hash_data =  b.map do |el|
                    {
                      type:views,
                      toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                      name:"#{el["#{legend}"]}",
                      legendText:"#{el["#{legend}"]}",
                      showInLegend: true,
                      dataPoints: [{ y: el[rain_fall_type], label:  el["Year"] }]
                  }
  end
end



      def self.general_data_two_variable_year_all(b,views,legend,remove,rain_fall_type,color,search,compare)


        grouped_data = b.reject{|x| x["#{legend}"]== "#{remove}"}.group_by{ |data| data["#{legend}"]}
        if search == "All"
          hash_data1 = grouped_data.map{ |vegetable, values| 
                dataset = vegetable.to_s.gsub("_"," ")
                {
                type: views,
                toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                name:dataset,
                legendText: dataset,
                showInLegend: true,
                dataPoints: values.map { |value|
                { y: value[rain_fall_type], label: value["Year"] }
                }
                }
                }
            else


                  if views != "column" && views != "line" && views != "scatter"

                    hash_data1 =[]
                       grouped_data.map{ |vegetable, values| 
                        values.map do |value|
                          hash_data1.push(
                            {
                              type:views,
                              toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                              name:"#{value["Year"]}",
                              legendText:"#{value["Year"]}",
                              showInLegend: true,
                              dataPoints: [{ y: value[rain_fall_type], label:  value["#{legend}"] }]
                          }
                          )
                      
                        end
                  }
                      
                    else
                  
                      hash_data1 = grouped_data.map{ |vegetable, values| 
                        dataset = vegetable.to_s.gsub("_"," ")
                        {
                        type: views,
                        toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                        name:dataset,
                        color:color,
                        legendText: dataset,
                        showInLegend: true,
                        dataPoints: values.map { |value|
                        { y: value[rain_fall_type], label: value["Year"] }
                        }
                        }
                        }
                end
        end

        return hash_data1

      end



      def self.generaldata_rainfall_all(b,views,legend,remove,rain_fall_type,color,search,compare,ji,d)

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
                    { y: el[column_name], z: el[column_name], label: el[d] }
                            end
              }
            else
                if search == "All"
                    dataset = column_name.to_s.tr('_', ' ')
              {
                type: views,
                toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                name:dataset,
                legendText: dataset,
                showInLegend: true,
                dataPoints: b.reject{|x| x["#{legend}"]== "#{remove}"}.map do |el|
                    { y: el[column_name], z: el[column_name], label: el[d] }
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
                dataPoints: b.map do |el|
                    { y: el[column_name], z: el[column_name], label: el[d] }
                            end
              }
                end
            end
          end
        end
      end
end

