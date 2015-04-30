require "minitest/autorun"
require_relative "../attendee"

class AttendeeTest < Minitest::Test
  def setup
    @name = "Andreas"
    @attendee = Attendee.new(@name)
  end

  def test_to_s
    assert_equal "This attendee is called #{@name}", @attendee.to_s
  end
end
