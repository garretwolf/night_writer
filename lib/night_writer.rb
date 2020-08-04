require "./lib/dictionary"

class NightWriter
  attr_reader :file_reader, :input_file, :output_file,
  :read_input, :read_output

  def initialize
    @input_file = ARGV[0]
    @output_file = ARGV[1]
    @read_input = File.read(input_file)
    @read_output = File.read(output_file)
    @dictionary = Dictionary.new
  end

  def save_input_to_output
    File.open(output_file, "w") { |file| file.write(read_input) }
  end

  def count_input_characters
    read_input.gsub("\n", "").length
  end

  def print_to_terminal
    puts "Created '#{output_file}' containing #{count_input_characters} characters"
  end

  def encode_to_braille(input)
    line1 = ''
    line2 = ''
    line3 = ''
    input.each_char do |char|
      line1 += "#{@dictionary.braille_dictionary[input[char]][0..1]}"
      line2 += "#{@dictionary.braille_dictionary[input[char]][2..3]}"
      line3 += "#{@dictionary.braille_dictionary[input[char]][4..5]}"
    end
    "#{line1}\n#{line2}\n#{line3}"
  end

  def limit_characters_per_line(input)
    input.chars.each_slice(80) do |line|
      puts line.join("") + ("\n")
    end
  end

end


night_writer = NightWriter.new
