class AddDescriptionToBars < ActiveRecord::Migration[5.2]
  def change
    add_column :bars, :description, :text
  end
end
