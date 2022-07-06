class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :type
      t.integer :cost
      t.boolean :availability
      t.string :photoUrl

      t.timestamps
    end
  end
end
