class CreateSocialSecurityForOldAndDisableds < ActiveRecord::Migration[5.2]
  def change
    create_table :social_security_for_old_and_disableds do |t|
      t.string :Name_of_the_Scheme
      t.float :Budget_Outlay
      t.float :Expenditure
      t.float :Physical_Achievement
      t.string :Year

      t.timestamps
    end
  end
end
