class Twitter < ApplicationRecord

  belongs_to :user

  validates :text, length: {maximum: 140 }

end
