class Car < ActiveRecord::Base
	validates :summary, :make, presence: true
	validates :price_in_dollars, numericality: {only_integer: true}
end
