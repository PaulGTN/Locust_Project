class CreateGigTags < ActiveRecord::Migration[5.2]
  def change
    create_table :gig_tags do |t|
      t.belongs_to :tag, index: true
      t.belongs_to :gig, index: true

      t.timestamps
    end
  end
end
