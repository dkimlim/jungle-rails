class Rating < ActiveRecord::Base

	belongs_to :product
	belongs_to :user

	validates :user, presence: true
	validates :product, presence: true
	validates :rating, presence: true
	validates :rating, inclusion: { in: 1..5 }

end
