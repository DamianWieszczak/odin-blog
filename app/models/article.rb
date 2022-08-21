class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: { minimum: 3 }
  validates :body, presence: true, length: { maximum: 50 }

end
