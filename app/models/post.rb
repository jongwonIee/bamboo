class Post < ApplicationRecord
  validates :title, length: { minimum: 10 }
  validates :body, length: { maximum: 200 }
end
