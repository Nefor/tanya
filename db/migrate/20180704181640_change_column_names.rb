class ChangeColumnNames < ActiveRecord::Migration[5.2]
  def change
    remove_index :links, :link
    remove_index :links, :links_short

    change_table :links do |t|
      t.rename :links_short, :url_short
      t.rename :link, :url_long
    end

    add_index :links, :url_short
    add_index :links, :url_long
  end
end
