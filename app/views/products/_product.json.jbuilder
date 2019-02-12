json.extract! product, :id, :name, :category, :brand, :price, :quantity, :discount, :rate, :review, :image, :created_at, :updated_at
json.url product_url(product, format: :json)
