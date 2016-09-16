class CreateAssignedgenre < ActiveRecord::Migration[5.0]
  def change
    create_table :assignedgenres do |t|
      t.belongs_to :genre, index:true
      t.belongs_to :movie, index:true
    end
  end
end
