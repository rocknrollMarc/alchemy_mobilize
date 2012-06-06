class AddShowOnMobileColumnsToAlchemy < ActiveRecord::Migration
  def change
    add_column :alchemy_pages, :show_on_mobile, :boolean, :default => true
    add_column :alchemy_elements, :show_on_mobile, :boolean, :default => true
  end
end
