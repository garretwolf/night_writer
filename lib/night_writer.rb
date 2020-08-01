class NightWriter
  attr_reader :file_reader, :input_file, :output_file, :read_input

  def initialize
    # @reader = FileReader.new
    @input_file = ARGV[0]
    @output_file = ARGV[1]
    @read_input = File.read(input_file)
  end

  def print_to_terminal
    puts "Created '#{output_file}' containing #{read_input.gsub("\n", "").length} characters"
    #Added gsub to so it doesn't count newline as a character
  end
end

night_writer = NightWriter.new
night_writer.print_to_terminal


# Code from starter file
#
#   def encode_file_to_braille
#     # I wouldn't worry about testing this method
#     # unless you get everything else done
#     plain = reader.read
#     braille = encode_to_braille(plain)
#   end
#
#   def encode_to_braille(input)
#     # you've taken in an INPUT string
#     # do the magic
#     # send out an OUTPUT string
#   end
# end
#
# puts ARGV.inspect
