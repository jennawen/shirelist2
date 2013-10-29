class CreateListings < ActiveRecord::Migration
  def up
    create_table :listings do |t|
      t.string :title
      t.string :description
      t.string :price
      t.string :user_id
      t.string :listing_key

      t.timestamps
    end
  end

  def down
    drop_table :listings
  end
end
