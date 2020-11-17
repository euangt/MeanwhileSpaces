class CreateSpaces < ActiveRecord::Migration[6.0]
  def change
    create_table :spaces do |t|
      t.string :title
      t.integer :floor_space
      t.integer :price_per_day
      t.text :description
      t.text :address
      t.integer :longitude
      t.integer :latitude
      t.boolean :internet
      t.boolean :availability_status
      t.boolean :heating
      t.boolean :lighting
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
