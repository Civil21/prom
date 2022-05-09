class Product < ApplicationRecord
  belongs_to :category, counter_cache: true
  has_one_attached :image
  has_many_attached :images

  def show_price
    Money.from_cents(price, "UAH").format 
  end
end
