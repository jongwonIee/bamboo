class User < ApplicationRecord
  has_many :posts
  has_many :categories, through: :favorites
  has_secure_password
  validates_uniqueness_of :email

  def favorites_addition(user_id, category_id)
    Favorite.create(user_id: user_id, category_id: category_id)
  end

  def favorites_deletion(user_id, category_id)
    favorite = Favorite.where('user_id = ? AND category_id = ?', user_id, category_id)
    Favorite.destroy(favorite.first.id)
  end
end