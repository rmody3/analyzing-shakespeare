class ShakespeareAnalyzer < ApplicationRecord
  @lines_per_speaker = []

  def self.parse(uri)
    shakespeare_play = AnalyzeShakespeare.new(uri)
    shakespeare_play.get_speeches
    @lines_per_speaker = shakespeare_play.parse_lines
  end

  def self.get_lines_per_speaker
    @lines_per_speaker
  end

end
