class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :notes, :scribe_name, :string, default: "Jenn", null: false
  end
end
