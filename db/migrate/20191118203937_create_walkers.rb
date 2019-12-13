class CreateWalkers < ActiveRecord::Migration[6.0]
  def change
    create_table :walkers do |t|
      t.string :imgUrl, default: "No Image"
      t.string :name
      t.string :email
      t.string :phone
      t.string :rate
      t.string :rating
      t.string :password_digest

      t.timestamps
    end
  end
end
