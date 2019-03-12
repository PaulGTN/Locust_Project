class CreateBarTags < ActiveRecord::Migration[5.2]
  def change
    create_table :bar_tags do |t|
      t.belongs_to :bar, index: true
      t.belongs_to :tag, index: true

      t.timestamps
    end
  end
end
