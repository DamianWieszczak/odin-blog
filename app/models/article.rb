class Article < ApplicationRecord
  has_many :comments

  validates :title, presence: true, length: { minimum: 3 }
  validates :body, presence: true, length: { maximum: 50 }
end
