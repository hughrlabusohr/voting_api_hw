require 'test_helper'

class VoterTest < ActiveSupport::TestCase
  test "voter affiliation" do
    a = Voter.create!(name: "Hugh Labusohr", party: "2 Party System Sux", token: "8920diq4mx7481007")

    assert a
    assert_equal "2 Party System Sux", a.party
  end
end
