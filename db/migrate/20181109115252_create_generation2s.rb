class CreateGeneration2s < ActiveRecord::Migration[5.2]
  def change
    create_table :generation2s do |t|
      t.string :Thermal_Plan
      t.string :'2015-16'
      t.string :'2016-17'
      t.string :'2017-18_Under_Progress'
      t.string :'2018-19'
      t.string :'By_2022_Upcoming_Projects'
      t.string :'Beyond_2022'

      t.timestamps
    end
  end
end
