class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :ta_name, null: false
      t.text :body, null: false 
      t.timestamps null: false
    end
  end
end
