class AddPropsToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :title,   :string
    add_column :notes, :content, :string
  end
end
