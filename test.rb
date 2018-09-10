          if views != "column" && views!="line"
            dataset = rain_fall_type.tr('_', ' ')
            hash_data =  b.reject { |x| x['Districts'] == 'Bihar' }.map do |el|
              {
                type:views,
                toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                name:"#{el["Districts"]}",
                legendText:"#{el["Districts"]}",
                showInLegend: true,
                dataPoints: [{ y: el[rain_fall_type], label:  el["Year"] }]
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





              








              if views != "column" && views!="line"
                
                dataset = rain_fall_type.tr('_', ' ')
                hash_data =  b.map do |el|
                  {
                    type:views,
                    toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                    name:"#{el["Districts"]}",
                    legendText:"#{el["Districts"]}",
                    showInLegend: true,
                    dataPoints: [{ y: el[rain_fall_type], label:  el["Year"] }]
                }
    
                end
            
                  else
                      hash_data  = grouped_data.map{ |vegetable, values| 
                dataset = vegetable.to_s.gsub("_"," ")
                {
                  type: views,
                  toolTipContent: "{label}<br/>{name}, <strong>{y}</strong>",
                  legendText: dataset,
                  color: color,
                  name:dataset,
                  showInLegend: true,
                  dataPoints: values.reject { |x| x['Districts'] == 'Bihar' }.map { |value|
                    { y: value[rain_fall_type], label: value["Year"] }
                  }
                }
             }
                  end