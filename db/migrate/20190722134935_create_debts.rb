class CreateDebts < ActiveRecord::Migration
  def change
    create_table :debts do |t|
      t.string :name
      t.float :start_bal
      t.float :remain_bal
      t.float :payment
      t.float :snowball
      t.integer :user_id
  end
end
