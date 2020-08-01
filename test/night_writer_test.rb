require "./test/test_helper"
require "./lib/night_writer"

class NightWriterTest < Minitest::Test

  def test_it_exists
    night_writer = NightWriter.new

    assert_instance_of NightWriter, night_writer
  end

  def test_it_can_determine_number_of_characters
    night_writer = NightWriter.new

    assert_equal 11, night_writer.read_input.gsub("\n", "").length
  end

end
