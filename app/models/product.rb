class Product < ApplicationRecord
	validates :name, :price, :company, presence: true
end
