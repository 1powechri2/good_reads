class User < ApplicationRecord
  has_many :ratings
  has_many :reviews
end
