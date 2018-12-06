class CreateEducationArtCulture9s < ActiveRecord::Migration[5.2]
  def change
    create_table :education_art_culture9s do |t|
      t.string :Type_of_Institutions
      t.float :'2013'
      t.float :'2014'
      t.float :'2015'
      t.float :'2016'
      t.string :Indicator

      t.timestamps
    end
  end
end
