class CreateUsers < ActiveRecord::Migration
  def change
    t.string :username
    t.string :email
    t.string :password_digest
  end
end
