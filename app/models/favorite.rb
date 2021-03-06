class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates_uniqueness_of :user_id, :scope => [:category_id]

end
