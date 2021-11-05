class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :google_image_url, :string
    add_column :users, :role, :integer
  end
end
