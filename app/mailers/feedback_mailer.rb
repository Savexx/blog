class FeedbackMailer < ApplicationMailer
  default from: 'test.user.rails1@gmail.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.feedback_mailer.new_feedback_email.subject
  #
  def new_feedback_email(feedback)
    @post = feedback.post
    @post_author = @post.user

    mail(
      to: @post_author.email,
      subject: 'New feedback to your post'
    )
  end
end
