class CardsController < ApplicationController
  before_action :authenticate_user!
  def index
    @card = Card.set_card(current_user.id)
  end
end
