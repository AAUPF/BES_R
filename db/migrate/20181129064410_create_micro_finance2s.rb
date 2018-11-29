class CreateMicroFinance2s < ActiveRecord::Migration[5.2]
  def change
    create_table :micro_finance2s do |t|
      t.string :Indicators
      t.float :'Mar-14'
      t.float :'Mar-15'
      t.float :'Mar-16'
      t.float :'Mar-17'

      t.timestamps
    end
  end
end
