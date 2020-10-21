# Preview email at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def receipt_email_preview
    UserMailer.receipt_email(User.first, Order.first)
  end
end
