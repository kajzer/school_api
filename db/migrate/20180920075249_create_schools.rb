class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.string :university
      t.string :secondary_school
      t.string :degree
      t.string :campus
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
