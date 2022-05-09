ActiveAdmin.register Product do
  permit_params :name, :description, :present, :price, :category_id, :image, images: []

  form partial: "form"
end
