class CreateMapbihars < ActiveRecord::Migration[5.2]
  def change
    create_table :mapbihars do |t|
      t.string :Districts
      t.float :indicator

      t.timestamps
    end
  end
end
