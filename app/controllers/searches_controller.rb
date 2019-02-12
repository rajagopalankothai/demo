class SearchesController < ApplicationController

	
	
	def new
		@search = Search.new
		#@categories = Product.uniq.pluck(:categories)
	end

	def create
		@search = Search.create(search_params)
		redirect_to @search
	end

	def show
		#@search = Search.find(params[:id])
	end

	def search_products
		
		#@search = products 
		products = Product.all

		products = products.where{["name LIKE ?", "%#{keywords}%"]} if keywords.present?
		products = products.where{["category LIKE ?", category]} if category.present?
		products = products.where{["price LIKE ?", price]} if price.present?
		products = products.where{["brand LIKE ?", brand]} if brand.present?
		
		
		return products
		
	end


	private

	def search_params
		params.require(:search).permit(:keywords, :categories, :brand, :price, :rating)
	end

	

end
