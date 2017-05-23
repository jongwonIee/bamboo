class Post < ApplicationRecord
  belongs_to :category

  #validations
  validates :title, length: { minimum: 10 }
  validates :body, length: { maximum: 200 }

  before_validation :strip_whitespace, only: [:title, :body]

  private
  def strip_whitespace
    self.title = self.title.strip unless self.title.nil?
  end
end