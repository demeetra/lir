class CreatePorts < ActiveRecord::Migration[6.1]
  def change
    create_table :ports do |t|
      t.string :name
      t.string :address
      t.string :tel
      t.string :coordinates
      t.integer :rating
      t.string :cost
      t.boolean :electric
      t.boolean :wather
      t.integer :workload
      t.time :comfort_time

      t.timestamps
    end
  end
end
