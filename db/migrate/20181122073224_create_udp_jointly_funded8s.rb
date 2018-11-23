class CreateUdpJointlyFunded8s < ActiveRecord::Migration[5.2]
  def change
    create_table :udp_jointly_funded8s do |t|
      t.string :Particulars
      t.float :Constructed
      t.float :Under_Construction

      t.timestamps
    end
  end
end
