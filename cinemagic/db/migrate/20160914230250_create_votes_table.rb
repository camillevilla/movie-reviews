class CreateVotesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :votes_tables do |t|
      t.integer, :vote_value
      t.references, :user
      t.references :review, foreign_key: true
    end
  end
end
