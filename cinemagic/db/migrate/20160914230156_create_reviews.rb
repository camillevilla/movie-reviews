class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :user, index: true
      t.references :movie, index: true
      t.integer :star_rating
      t.text :text
    end
  end
end
