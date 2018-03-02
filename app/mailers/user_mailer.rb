class UserMailer < ApplicationMailer
	default from: 'no-reply@jungle.com'

	def confirmation_email(order)

		mail(to: order.email, subject: 'Thank you for order #{order.id}')

	end
end
