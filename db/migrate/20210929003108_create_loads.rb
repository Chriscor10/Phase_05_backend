class CreateLoads < ActiveRecord::Migration[6.1]
  def change
    create_table :loads do |t|
      t.string :container_size
      t.string :load_weight
      t.string :origin
      t.string :destination
      t.integer :price
      t.string :pickup_time
      t.string :dropoff_time
      t.string :pickup_date
      t.string :dropoff_date
      t.references :shipper, null: false, foreign_key: true

      t.timestamps
    end
  end
end
