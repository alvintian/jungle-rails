class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'
 
  def welcome_email(user,cart,order)
@receipent=user
@carts=cart
@orders=order
puts cart, "did the cart parameter get passed?"
#    @user = params[:user]
#    @url  = 'http://example.com/login'
    mail(to: @receipent.email, subject: 'your order is completed')
  end
end