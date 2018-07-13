class CreateBookRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :book_ratings do |t|
      t.references :book, foreign_key: true
      t.references :rating, foreign_key: true
    end
  end
end
