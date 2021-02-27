class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :content,      null: false
      t.date :visit_date
      t.time :visit_time
      t.references :spot,   null: false, foreign_key: true
      t.references :user,   null: false, foreign_key: true
      t.references :weather,             foreign_key: true
      t.references :tide,                foreign_key: true
      t.references :wind,                foreign_key: true

      t.timestamps
    end
  end
end
