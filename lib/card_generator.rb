require './lib/card'

class CardGenerator
  attr_reader :filename
  def initialize(filename)
    @filename = filename
  end

  def cards
    card_text = File.readlines(@filename)
    lines_array = []
    card_text.each do |line|
      each_line = line.chomp.split(",")
      lines_array << Card.new(each_line[0].strip, each_line[1].strip, each_line[2].strip.to_sym)
    end
    lines_array
  end
end
