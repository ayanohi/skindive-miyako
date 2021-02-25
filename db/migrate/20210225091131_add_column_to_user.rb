class AddColumnToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string, null: false, default: '', limit: 30
    add_column :users, :image, :string
    add_column :users, :introduction, :text, limit: 500
    add_column :users, :pb, :string, limit: 5
    add_column :users, :sns, :string, limit: 50
    add_column :users, :admin, :integer, null: false, default: 0
  end
end
