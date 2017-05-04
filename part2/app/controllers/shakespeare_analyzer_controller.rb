
class ShakespeareAnalyzerController < ApplicationController

  def create
    ShakespeareAnalyzer.parse(strong_params[:uri])
    redirect_to('/shakespeare_analyzer')
  end

  def show
    @lines_per_speaker = ShakespeareAnalyzer.get_lines_per_speaker
  end



  private
  def strong_params
    params.permit(:uri)
  end

end
