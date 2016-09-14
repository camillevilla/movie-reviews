class CreateCommentsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :comments_tables do |t|
      t.references, :review
      t.references :user, foreign_key: true
    end
  end
end
