class Comment < ApplicationRecord
  include Visible
  
  belongs_to :article

  validates :commenter, length: { maximum: 40 }
  validates :body, length: { maximum: 100 }
end
