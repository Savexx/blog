require 'rails_helper'

RSpec.describe Post, type: :model do
  user = User.find_or_create_by(email: 'johnsaviourlacson@gmail.com') do |u|
    u.password = 'password'
    u.password_confirmation = 'password'
  end

  it 'is has a title' do
    post = Post.new(title: 'Hello Test', content: 'Testing', user:)
    expect(post).to be_valid
  end

  it 'is has a content' do
    post = Post.new(title: 'Hello Test', content: 'Testing', user:)
    expect(post).to be_valid
  end
end
