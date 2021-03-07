class CreateSpotImages < ActiveRecord::Migration[6.0]
  def change
    create_table :spot_images do |t|
      t.references :spot, null: false, foreign_key: true
      t.string :spot_image

      t.timestamps
    end
  end
end
