class CreateSectoralShare8s < ActiveRecord::Migration[5.2]
  def change
    create_table :sectoral_share8s do |t|
      t.string :State
      t.float :Branches_as_on_March_30_2016
      t.float :'2014-15'
      t.float :'2015-16'
      t.string :Indicator

      t.timestamps
    end
  end
end
