class Search < ApplicationRecord
belongs_to :product
def search_products
		products = Product.all

		products = products.where{["name LIKE ?", "%#{keywords}%"]} if keywords.present?
		products = products.where{["category LIKE ?", category]} if category.present?
		products = products.where{["price LIKE ?", price]} if price.present?
		products = products.where{["brand LIKE ?", brand]} if brand.present?
		
		
		return products
		
	end
	
end
