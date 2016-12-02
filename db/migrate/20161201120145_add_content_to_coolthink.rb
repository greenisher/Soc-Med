class AddContentToCoolthink < ActiveRecord::Migration
  def change
    add_column :coolthinks, :content, :text
  end
end
