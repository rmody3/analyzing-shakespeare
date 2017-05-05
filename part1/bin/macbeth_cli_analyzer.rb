require_relative "../lib/analyze_shakespeare"
MACBETH_URI = "http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml"


def print_to_cli
  macbeth = AnalyzeShakespeare.new(MACBETH_URI)
  macbeth.get_speeches
  lines_per_speaker = macbeth.parse_lines
  lines_per_speaker.each do |character, lines|
    puts "#{lines} #{character}"
  end
end

print_to_cli
