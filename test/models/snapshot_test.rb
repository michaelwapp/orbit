require "test_helper"

class SnapshotTest < ActiveSupport::TestCase
  def setup
    @user = users(:michael)
    @snapshot = @user.snapshots.build(content: "test")
  end

  test "should be valid" do
    assert @snapshot.valid?
  end

  test "user id should be present" do
    @snapshot.user_id = nil
    assert_not @snapshot.valid?
  end

  test "content should be present" do
    @snapshot.content = "    "
    assert_not @snapshot.valid?
  end

  test "content should ne no more than 250 characters" do
    @snapshot.content = "a" * 251
    assert_not @snapshot.valid?
  end

  test "order should be most recent feedback/snapshot first" do
    assert_equal snapshots(:most_recent), Snapshot.first
  end
end
