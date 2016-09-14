class CreateMoviesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :movies_tables do |t|
      t.string, :title
      t.integer, :year
      t.string, :director
      t.integer, :mpaa_rating
      t.references :category, foreign_key: true
    end
  end
end
