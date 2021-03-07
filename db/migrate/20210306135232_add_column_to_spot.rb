class AddColumnToSpot < ActiveRecord::Migration[6.0]
  def change
    add_column :spots, :latitude, :decimal, precision: 16, scale: 14
    add_column :spots, :longitude, :decimal, precision: 17, scale: 14
  end
end
