class RatingsController < ApplicationController
  def create
  	product_id = params[:product_id]
  	rating = params[:rating][:rating]
  	review = params[:rating][:description]
  	reviewer = session[:user_id]

  	new_review = Rating.new({product_id: product_id, user_id: reviewer, rating: rating, description: review})

  	if new_review.save
      flash[:success] = 'Thank you for reviewing our product!'
  		redirect_to :back
  	else
  		redirect_to :back
  		flash[:alert] = 'Your review was not saved.'
  	end
  end
end
