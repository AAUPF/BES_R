class ChangeColumnNameInLands < ActiveRecord::Migration[5.2]
  def change
    rename_column :lands, :_ColourFallow_land, :Fallow_land_Colour
  end
end
