class CreateTransmission1s < ActiveRecord::Migration[5.2]
  def change
    create_table :transmission1s do |t|
      t.string :Demand_Capacity
      t.float :'2017-18'
      t.float :'2018-19'
      t.float :'2019-20'

      t.timestamps
    end
  end
end
