require "./test/test_helper"
require "./lib/night_writer"
require "./lib/dictionary"

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

  def test_it_can_encode_to_braille
    night_writer = NightWriter.new
    
    expected = "0.0.0.0.0....00.0.0.00\n00.00.0..0..00.0000..0\n....0.0.0....00.0.0..."

    assert_equal "00\n00\n..", night_writer.encode_to_braille('g')
    assert_equal "0", night_writer.encode_to_braille('r')[0]
    assert_equal expected, night_writer.encode_to_braille('hello world')
  end

end
