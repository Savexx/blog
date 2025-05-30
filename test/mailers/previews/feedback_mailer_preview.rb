# Preview all emails at http://localhost:3000/rails/mailers/feedback_mailer
class FeedbackMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/feedback_mailer/new_feedback_email
  def new_feedback_email
    FeedbackMailer.new_feedback_email
  end

end
