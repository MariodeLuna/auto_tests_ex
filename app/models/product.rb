class Product < ActiveRecord::Base
	validates :name, :price, :description, presence: true
	validates :price, numericality: {greater_than: 0}
	has_many :bids

end
