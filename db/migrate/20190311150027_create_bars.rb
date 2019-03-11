class CreateBars < ActiveRecord::Migration[5.2]
  def change
    create_table :bars do |t|
      t.string :name
      t.string :adress
      t.string :city
      t.string :zip_code
      t.belongs_to :price, index: true 

      t.timestamps
    end
  end
end
