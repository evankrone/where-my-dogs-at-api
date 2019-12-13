class CreateWalks < ActiveRecord::Migration[6.0]
  def change
    create_table :walks do |t|
      t.integer :owner_id
      t.integer :walker_id, default: nil
      t.boolean :completed, default: false
      
      t.timestamps
    end
  end
end
