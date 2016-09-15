class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.integer :up_vote_value, default: 0
      t.integer :down_vote_value, default: 0
      t.references :user
      t.references :review
    end
  end
end
