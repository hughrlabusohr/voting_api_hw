require 'test_helper'

class CandidateTest < ActiveSupport::TestCase

  test "candidate exists" do
    a = Candidate.create!(name: "Donald Trump", hometown: "New York City, NY", district: 0, party: "Republican")

    assert a
    assert_equal "Donald Trump", a.name
  end
  test "candidate may drop out" do
    a = Candidate.create!(name: "Donald Trump", hometown: "New York City, NY", district: 0, party: "Republican")
    b = Candidate.create!(name: "Jeb Bush", hometown: "Midland, TX", district: 0, party: "Republican")

    republican_primary = []
    republican_primary << a
    republican_primary << b

    before = Candidate.count
    b.destroy
    after = Candidate.count

    assert a
    assert b
    assert republican_primary

    assert before > after
  end
end
