class AddRatingToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :comment, :text
    add_column :reviews, :rating, :integer
    add_reference :reviews, :list, null: false, foreign_key: true
  end
end
