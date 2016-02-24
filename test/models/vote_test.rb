require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  test "vote authenticity" do
    a = Vote.create!(voter_id: "58011dh0", candidate_id: 1)
    assert a
    assert_equal a.candidate_id, "1"
  end
end
