class CreateDebtManagement2s < ActiveRecord::Migration[5.2]
  def change
    create_table :debt_management2s do |t|
      t.string :Sector
      t.float :'2015-16'
      t.float :'2016-17'
      t.float :'31_03_2016'
      t.float :'31_03_2017'
      t.float :'Percentage_increase_over_2017_from_2016'
      t.float :'Percentage_composition_of_outstanding_balance_as_on_31_03_17'

      t.timestamps
    end
  end
end
