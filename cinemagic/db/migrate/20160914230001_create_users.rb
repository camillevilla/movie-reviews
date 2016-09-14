class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users_tables do |t|
      t.string, :username
      t.string, :email
      t.string :password_hash
    end
  end
end
