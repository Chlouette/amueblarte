class UserMailerPreview < ActionMailer::Preview
  def create_confirmation
    user = User.first
    # This is how you pass value to params[:user] inside mailer definition!
    UserMailer.with(user: user).create_confirmation
  end
end