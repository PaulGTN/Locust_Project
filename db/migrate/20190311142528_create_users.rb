class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name

      t.float :latitude
      t.float :longitude
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
