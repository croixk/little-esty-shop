class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :merchant, foreign_key: true
      t.string :name
      t.string :description
      t.string :unit_price
      t.integer :status

      t.timestamps
    end
  end
end
