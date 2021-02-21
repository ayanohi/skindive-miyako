class CreateSpotCreatures < ActiveRecord::Migration[6.0]
  def change
    create_table :spot_creatures do |t|
      t.references :spot, null: false, foreign_key: true
      t.references :creature, null: false, foreign_key: true

      t.timestamps
    end
  end
end
