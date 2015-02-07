class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.string    :brand
      t.string    :model
      t.integer   :price
      t.integer   :size

      t.timestamps
    end
  end
end
