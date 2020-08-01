require "./test/test_helper"
require "./lib/dictionary"

class DictionaryTest < Minitest::Test

  def test_it_exists
    dictionary = Dictionary.new

    assert_instance_of Dictionary, dictionary
  end

  def test_it_has_keys
    dictionary = Dictionary.new

    assert_equal 26, dictionary.braille_dictionary.keys.length
  end

end
