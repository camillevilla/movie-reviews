class CreateReviewsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews_tables do |t|
      t.references, :user
      t.references, :movie
      t.string :star_rating
      t.string :integer
      t.text :text
    end
  end
end
