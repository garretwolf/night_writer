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

  def test_it_can_print_message_to_terminal
    skip
    night_writer = NightWriter.new

    assert_equal "Created 'braille.txt' containing 11 characters", night_writer.print_to_terminal
  end

  def test_it_can_save_input_to_output
    night_writer = NightWriter.new
    night_writer.save_input_to_output

    assert_equal "hello world", night_writer.read_output
  end

end
