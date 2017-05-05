require "rspec"
require_relative "../lib/analyze_shakespeare"
require "nokogiri"
require "rspec"

describe "AnalyzeShakespeare" do

  before do
    @macbeth = AnalyzeShakespeare.new("http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml")
    @macbeth.get_speeches
    @lines_per_speaker = @macbeth.parse_lines

    @result = [["Macbeth", 718], ["Lady macbeth", 265], ["Malcolm", 212], ["Macduff", 180], ["Ross", 135], ["Banquo", 113], ["Lennox", 73], ["Duncan", 70], ["First witch", 62], ["Porter", 46], ["Doctor", 45], ["Lady macduff", 41], ["Hecate", 39], ["Sergeant", 35], ["Siward", 30], ["First murderer", 30], ["Second witch", 27], ["Third witch", 27], ["Gentlewoman", 23], ["Messenger", 23], ["Lord", 21], ["Angus", 21], ["Son", 20], ["Second murderer", 15], ["Menteith", 12], ["Old man", 11], ["Caithness", 11], ["Donalbain", 10], ["Third murderer", 8], ["Young siward", 7], ["Seyton", 5], ["Third apparition", 5], ["Servant", 5], ["Second apparition", 4], ["Lords", 3], ["First apparition", 2], ["Both murderers", 2], ["Fleance", 2], ["Attendant", 1], ["Macbethlennox", 1], ["Soldiers", 1]]
  end

  describe "#initialize" do
    it "initializes with an argument of a uri" do
      expect{@macbeth}.to_not raise_error
    end
  end

  describe "#get_speeches" do
    it "parses xml and returns a nokogiri NodeSet" do
      expect(@macbeth.speeches.class.to_s).to eq("Nokogiri::XML::NodeSet")
    end

    it "only contains speeches" do
      expect(@macbeth.speeches.any? {|speech| speech.name !="SPEECH"}).to be_falsey
    end
  end

  describe "#parse_lines" do
    it "creates an array of arrays with character and value" do
      expect(@lines_per_speaker).to eq(@result)
    end
  end

end
