class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string     :FirstName
      t.string     :LastName
      t.boolean    :Active
      t.string     :Location
      t.string     :Login
      t.smallmoney :Debt
      t.boolean    :Need_Reminder
      t.integer    :User_Gp

      t.timestamps null: false
    end
  end
end
