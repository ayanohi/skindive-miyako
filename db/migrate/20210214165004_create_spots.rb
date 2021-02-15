class CreateSpots < ActiveRecord::Migration[6.0]
  def change
    create_table :spots do |t|
      t.string :name,     null: false
      t.text :description
      t.string :postal_code
      t.string :address
      t.string :image
      t.references :area, foreign_key: true
      t.timestamps
    end
  end
end
