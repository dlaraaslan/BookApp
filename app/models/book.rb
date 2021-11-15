class Book < ApplicationRecord
  has_one_attached :image
  has_many :comments, dependent: :destroy
  has_many :likes

  validates :title, presence: true,length: { minimum: 2 }
  validates :body, presence: true, length: { minimum: 10 }
  validates :writer, presence: true, length: { minimum: 2 }
end
