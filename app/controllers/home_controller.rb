class HomeController < ApplicationController
  def index
    @proverb = Proverb.get_random_quote
  end
end