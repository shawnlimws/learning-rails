class MagicBallController < ApplicationController

  def result
    @magic_answer = generate_random_response
    p generate_random_response
    p @magic_answer
  end

  private
  def generate_random_response
    all_responses = [
      "LGTM",
      "SGTM",
      "I hope this works",
      "Oh! Its working!",
      "Chum liao chum liao"
    ]
    all_responses.sample # selects a random answer
  end
end
