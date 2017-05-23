class Category < ApplicationRecord
  has_many :users, through: :favorites
  has_many :posts
end
