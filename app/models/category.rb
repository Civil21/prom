class Category < ApplicationRecord
  belongs_to :category, optional: true
  has_many :categories, dependent: :nullify
  has_many :products
  has_one_attached :image

  validates :name, uniqueness: true
end
