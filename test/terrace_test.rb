require "minitest/autorun"
require_relative "../terrace"

class TerraceTest < Minitest::Test
  def setup
    @terrace = Terrace.new(8, 3)
  end

  def test_size
    assert_equal 24, @terrace.size
  end

  def test_status_new
    assert_equal "The terrace is open", @terrace.status
  end

  def test_status_closed
    @terrace.close

    assert_equal "The terrace is closed", @terrace.status
  end

  def test_status_open
    @terrace.close
    @terrace.open

    assert_equal "The terrace is open", @terrace.status
  end
end
