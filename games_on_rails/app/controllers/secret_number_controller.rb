class SecretNumberController < ApplicationController

  def guess
    # render HTML
  end

  def result
    # params[:guess] is a string
    @random_num = generate_secret_number
    @result = params[:guess].to_i == @random_num
  end

  private
  def generate_secret_number
    rand(0..10) # it can be a random number here
  end

end
