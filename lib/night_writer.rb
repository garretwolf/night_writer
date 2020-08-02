require "./lib/dictionary"

class NightWriter
  attr_reader :file_reader, :input_file, :output_file,
  :read_input, :read_output

  def initialize
    # @reader = FileReader.new
    @input_file = ARGV[0]
    @output_file = ARGV[1]
    @read_input = File.read(input_file)
    @read_output = File.read(output_file)
    @dictionary = Dictionary.new
  end

  def save_input_to_output #Saves the message contained in input to the output file
    File.open(output_file, "w") { |file| file.write(count_input_characters) }
  end

  def count_input_characters
    read_input.gsub("\n", "")
  end

  def print_to_terminal
    # require "pry"; binding.pry
    puts "Created '#{output_file}' containing #{count_input_characters} characters"
    #Added gsub to so it doesn't count newline as a character
  end

  def encode_to_braille(input)
    # you've taken in an INPUT string
    # do the magic
    # send out an OUTPUT string - this will be the braille characters
    line1 = ''
    line2 = ''
    line3 = ''
    input.each_char do |char|
      line1 += "#{@dictionary.braille_dictionary[input[char]][0..1]}"
      line2 += "#{@dictionary.braille_dictionary[input[char]][2..3]}"
      line3 += "#{@dictionary.braille_dictionary[input[char]][4..5]}"
    end
    "#{line1}\n#{line2}\n#{line3}" ## spacing in the output may be off, may need to adjust how this string is printed
  end

end


# night_writer = NightWriter.new
# night_writer.print_to_terminal


# Code from starter file
#
#   def encode_file_to_braille
#     # I wouldn't worry about testing this method
#     # unless you get everything else done
#     plain = reader.read
#     braille = encode_to_braille(plain)
#   end
#
# end
#
# puts ARGV.inspect
