class UserMailer < ActionMailer::Base
  default from: "shanesrf@gmail.com"


  def pet_info_mailer(user)
  	@user = user
  	mail(to: @user.address, subject: "#{@email.name} has sent you info on their pets")
  end





end
