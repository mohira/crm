class AddImageUrlToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :image_url, :text
  end
end
