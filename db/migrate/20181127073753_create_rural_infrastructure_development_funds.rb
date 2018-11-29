class CreateRuralInfrastructureDevelopmentFunds < ActiveRecord::Migration[5.2]
  def change
    create_table :rural_infrastructure_development_funds do |t|
      t.string :RIDF_Tranche
      t.float :Sanction
      t.float :Disbursement
      t.float :Disbursement_Percentage

      t.timestamps
    end
  end
end
