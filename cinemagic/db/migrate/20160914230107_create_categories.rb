class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories_tables do |t|
      t.string :name
    end
  end
end
