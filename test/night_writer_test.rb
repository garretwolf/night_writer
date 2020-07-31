require "./test/test_helper"
require "./lib/night_writer"

class NightWriterTest < Minitest::Test

  def test_it_exists
    night_writer = NightWrighter.new

    assert_instance_of NightWrighter, night_writer
  end

end
