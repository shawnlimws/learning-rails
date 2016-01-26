class RockPaperScissorsController < ApplicationController

  def throw
    # render HTML
  end

  def result
    @computer_move = computer_move
    @result = params[:throw].to_i == @computer_move
  end

  private
  def computer_move
    ["rock", "paper", "scissors"].sample
  end

end
