class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :price
      t.string :city
      t.string :tags

      t.timestamps
    end
  end
end
