class Product < ApplicationRecord
	before_destroy :not_referenced_by_any_line_item
	mount_uploader :image, ImageUploader
	serialize :image, JSON
	belongs_to :user
	has_many :line_items
	has_many :reviews

 

private
def not_referenced_by_any_line_item
	unless line_items.empty?
		errors.add(:base, "line Items Present")
		throw :abort
	end
end

end
