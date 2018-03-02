class Rating < ActiveRecord::Base

	belongs_to :product
	belongs_to :user

	validates :user_id, presence: true
	validates :product_id, presence: true
	validates :rating, presence: true
	validates :rating, inclusion: { in: 1..5 }

end
