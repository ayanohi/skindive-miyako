class CreateSpotFeatures < ActiveRecord::Migration[6.0]
  def change
    create_table :spot_features do |t|
      t.references :spot, null: false, foreign_key: true
      t.references :feature, null: false, foreign_key: true

      t.timestamps
    end
  end
end
