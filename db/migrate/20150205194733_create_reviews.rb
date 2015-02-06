class CreateReviews < ActiveRecord::Migration
  def change
    create_table  :reviews do |t|
      t.integer   :author_id
      t.string    :review
      t.boolean   :fits
      t.integer   :votes

      t.timestamps
    end
  end
end
