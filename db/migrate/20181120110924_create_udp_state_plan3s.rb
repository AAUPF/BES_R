class CreateUdpStatePlan3s < ActiveRecord::Migration[5.2]
  def change
    create_table :udp_state_plan3s do |t|
      t.string :Coverage
      t.float :'2016-17'
      t.float :'2017-18'
      t.float :'2018-19'
      t.float :'2019-20'
      t.float :Total

      t.timestamps
    end
  end
end
