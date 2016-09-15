class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :text
      t.references :review
      t.references :user, index: true, foreign_key: true
    end
  end
end
