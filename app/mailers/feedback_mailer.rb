class FeedbackMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.feedback_mailer.new_feedback_email.subject
  #
  def new_feedback_email
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
