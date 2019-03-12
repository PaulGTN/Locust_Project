class CreateGigs < ActiveRecord::Migration[5.2]
  def change
    create_table :gigs do |t|
      t.string :name
      t.datetime :date
      t.belongs_to :bar, index: true

      t.timestamps
    end
  end
end
