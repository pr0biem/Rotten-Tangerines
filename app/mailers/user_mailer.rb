class UserMailer < ApplicationMailer
  def email_deleted_user(user)
    @user = user
    mail to: @user.email, subject: "Your account has been deleted."
  end
end
