class CreateAgroBasedIndustries6s < ActiveRecord::Migration[5.2]
  def change
    create_table :agro_based_industries6s do |t|
      t.string :Industrial_Group
      t.float :India
      t.float :Bihar
      t.float :Bihar_Percentage_Share
      t.string :Indicator
      t.string :Indicator1

      t.timestamps
    end
  end
end
