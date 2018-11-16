class CreateRuralDevelopmentProgrammes7s < ActiveRecord::Migration[5.2]
  def change
    create_table :rural_development_programmes7s do |t|
      t.string :Sector
      t.float :'2014-15'
      t.float :'2015-16'
      t.float :'2016-17'
      t.string :Indicator

      t.timestamps
    end
  end
end
