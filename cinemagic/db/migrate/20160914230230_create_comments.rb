class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments_tables do |t|
      t.text :text
      t.references :review
      t.references :user, foreign_key: true
    end
  end
end
