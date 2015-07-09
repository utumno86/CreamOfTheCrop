class CardsController < ApplicationController
  before_action :authenticate_user!
  def index
    @match = Match.set_match(3, current_user.id)
  end

end
