class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
 
  
  	def totall_price
  		if quantity <= 5	
        product.price = 500
        product.price.to_i * quantity.to_i
      else
        product.price = 400
        product.price.to_i * quantity.to_i
      end
  	end

    def totals_price
      product.price = 350
      product.price.to_i * quantity.to_i
    end
 

  
   def total_price
     product.price.to_i * quantity.to_i
   end
  
end
