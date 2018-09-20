class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.string :index_nr
      t.integer :absence
      t.string :avatar_url
      t.string :phone_nr
      t.string :fav_prog

      t.timestamps
    end
  end
end
