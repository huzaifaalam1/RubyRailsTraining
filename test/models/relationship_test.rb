require "test_helper"

class RelationshipTest < ActiveSupport::TestCase
  def setup
    @user1 = User.create!(name: "User One", email: "userone@example.com", password: "password", password_confirmation: "password")
    @user2 = User.create!(name: "User Two", email: "usertwo@example.com", password: "password", password_confirmation: "password")
    @relationship = Relationship.new(follower: @user1, followed: @user2)
  end

  test "should be valid" do
    assert @relationship.valid?
  end

  test "should require a follower_id" do
    @relationship.follower = nil
    assert_not @relationship.valid?
  end

  test "should require a followed_id" do
    @relationship.followed = nil
    assert_not @relationship.valid?
  end

  test "should belong to follower" do
    assert_equal @user1, @relationship.follower
  end

  test "should belong to followed" do
    assert_equal @user2, @relationship.followed
  end
end
