class PagesController < ApplicationController
  def home
    @products = Product.limit(4)
  end
end
