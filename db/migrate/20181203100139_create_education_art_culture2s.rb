class CreateEducationArtCulture2s < ActiveRecord::Migration[5.2]
  def change
    create_table :education_art_culture2s do |t|
      t.string :Sector
      t.float :'2011-12'
      t.float :'2012-13'
      t.float :'2013-14'
      t.float :'2014-15'
      t.float :'2015-16'
      t.float :CAGR
      t.string :Indicator
      t.string :Indicator1

      t.timestamps
    end
  end
end
