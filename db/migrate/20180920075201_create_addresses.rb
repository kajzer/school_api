class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :street_adress
      t.string :zip_code
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
