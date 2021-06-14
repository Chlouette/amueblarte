class BookingMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def create_confirmation
    @booking = params[:booking]

    mail(
      to: @booking.user.email, 
      from: @booking.item.user.first_name,
      subject: "Thank you for purchasing some of my art."
    )
  end
end
