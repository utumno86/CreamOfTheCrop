class CardsController < ApplicationController

  def index
    @match = Match.set_match(3, current_user.id)
  end

end
