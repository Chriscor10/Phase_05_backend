class CreateCarrierLoads < ActiveRecord::Migration[6.1]
  def change
    create_table :carrier_loads do |t|
      t.references :carrier, null: false, foreign_key: true
      t.references :load, null: false, foreign_key: true

      t.timestamps
    end
  end
end
