class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.integer :vote_value
      t.references :user
      t.references :review, index: true, foreign_key: true
    end
  end
end
