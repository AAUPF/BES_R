class CreateNonAgroBasedIndustries1s < ActiveRecord::Migration[5.2]
  def change
    create_table :non_agro_based_industries1s do |t|
      t.string :Districts
      t.string :Products

      t.timestamps
    end
  end
end
