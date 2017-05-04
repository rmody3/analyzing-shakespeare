require 'nokogiri'
require 'open-uri'
require 'byebug'


class AnalyzeShakespeare
  attr_accessor :speeches, :uri, :lines_per_speaker

  def initialize(uri)
    @uri = uri
  end

  def get_speeches
    doc = Nokogiri::XML(open(uri))
    @speeches = doc.css("SPEECH")
  end

  def parse_lines
    @lines_per_speaker = @speeches.each_with_object({}) do |speech, hsh|
      speaker = (speech.css("SPEAKER").text).capitalize
      lines = speech.css("LINE").length
      if speaker != "All"
        hsh[speaker] ||= 0
        hsh[speaker] += lines
      end
    end
    @lines_per_speaker = @lines_per_speaker.sort_by(&:last).reverse
  end

end
