class CreateOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :dogname
      t.string :email
      t.string :address
      t.string :city
      t.string :addressstate
      t.string :zipcode
      t.string :password_digest

      t.timestamps
    end
  end
end
