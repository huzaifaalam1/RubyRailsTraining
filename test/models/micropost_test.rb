require "test_helper"

class MicropostTest < ActiveSupport::TestCase
  def setup
    @user = User.create!(name: "Example User", email: "user@example.com", password: "password", password_confirmation: "password")
    @micropost = Micropost.new(content: "This is a sample post", user: @user)
  end

  test "should be valid" do
    assert @micropost.valid?
  end

  test "user id should be present" do
    @micropost.user = nil
    assert_not @micropost.valid?
  end

  test "content should be present" do
    @micropost.content = "   "
    assert_not @micropost.valid?
  end

  test "content should not be too long" do
    @micropost.content = "a" * 256
    assert_not @micropost.valid?
  end

  test "most recent micropost should appear first" do
    older_post = Micropost.create!(content: "Old post", user: @user, created_at: 1.day.ago)
    newer_post = Micropost.create!(content: "New post", user: @user, created_at: 1.hour.ago)
    assert_equal [newer_post, older_post], @user.microposts.to_a
  end
end
