class AddLinkShortToLinks < ActiveRecord::Migration[5.2]
  def change
    add_column :links, :links_short, :string
    add_index :links, :links_short
    add_index :links, :link
  end
end
