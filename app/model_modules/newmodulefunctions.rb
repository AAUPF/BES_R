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

    # if compare != "None"
    #   newname = "#{search} vs #{compare}"
    # else
    #   newname = search
     
  
    # end
  
  
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
    
end