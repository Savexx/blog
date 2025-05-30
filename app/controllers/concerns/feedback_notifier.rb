module FeedbackNotifier
  extend ActiveSupport::Concern

  included do
    after_action :notify_user, only: [:create]
  end

  def notify_user
    return unless @feedback.persisted?

    puts 'Sending email to the post author'
    FeedbackMailer.new_feedback_email(@feedback).deliver_later
  end
end
