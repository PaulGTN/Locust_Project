class AddDescriptionToGigs < ActiveRecord::Migration[5.2]
  def change
    add_column :gigs, :description, :text
  end
end
