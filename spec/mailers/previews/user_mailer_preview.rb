# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/email_deleted_user
  def email_deleted_user
    UserMailer.email_deleted_user
  end

end
