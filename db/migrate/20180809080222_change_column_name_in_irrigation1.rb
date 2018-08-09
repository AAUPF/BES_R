class ChangeColumnNameInIrrigation1 < ActiveRecord::Migration[5.2]
  def change
    rename_column :irrigation1s, :Ultimat_Potential, :Ultimate_Potential
  end
end
