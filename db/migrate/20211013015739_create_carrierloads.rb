class CreateCarrierloads < ActiveRecord::Migration[6.1]
  def change
    create_table :carrierloads do |t|
      t.references :carrier, null: false, foreign_key: true
      t.references :load, null: false, foreign_key: true

      t.timestamps
    end
  end
end
