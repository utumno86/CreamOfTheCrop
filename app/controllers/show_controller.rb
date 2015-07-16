# This class is intended to get information about cards from the user and transfer them over into the cards controller
class ShowController < ApplicationController
  def index

  end

  def create
    Card.clear(current_user.id)
    redirect_to root_path
  end
end
