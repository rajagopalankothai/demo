json.extract! product, :id, :name, :price, :brand, :category, :quantity, :image, :created_at, :updated_at
json.url product_url(product, format: :json)
