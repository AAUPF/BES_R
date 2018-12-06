class CreateEducationArtCulture3s < ActiveRecord::Migration[5.2]
  def change
    create_table :education_art_culture3s do |t|
      t.string :Indicator
      t.string :Sector
      t.float :'2011-12'
      t.float :'2012-13'
      t.float :'2013-14'
      t.float :'2014-15'
      t.float :'2015-16'

      t.timestamps
    end
  end
end
