class AddImageUrlToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :image_url, :text
  end
end
