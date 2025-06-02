require 'rails_helper'

RSpec.describe Feedback, type: :model do
  user = User.find_or_create_by(email: 'johnsaviourlacson@gmail.com') do |u|
    u.password = 'password'
    u.password_confirmation = 'password'
  end

  post = Post.create(title: 'Hello Test', content: 'Testing', user:)

  it 'is has a conntent' do
    feedback = Feedback.new(content: 'Testing', user:, post:)
    expect(feedback).to be_valid
  end
end
