require "test_helper"

class FeedbackMailerTest < ActionMailer::TestCase
  test "new_feedback_email" do
    mail = FeedbackMailer.new_feedback_email
    assert_equal "New feedback email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
