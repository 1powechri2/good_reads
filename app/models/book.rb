class Book < ApplicationRecord
  has_many :book_reviews
  has_many :book_ratings

  has_many :reviews, through: :book_review
  has_many :ratings, through: :book_ratings
end
