class WrestlersController < ApplicationController
  before_action :set_wrestler, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @main_event_babyfaces = Wrestler.set_main_event_babyfaces(current_user.id, true)
    @main_event_heels = Wrestler.set_main_event_heels(current_user.id, true)
    @high_card_babyfaces = Wrestler.set_high_card_babyfaces(current_user.id, true)
    @high_card_heels = Wrestler.set_high_card_heels(current_user.id, true)
    @mid_card_babyfaces = Wrestler.set_mid_card_babyfaces(current_user.id, true)
    @mid_card_heels = Wrestler.set_mid_card_heels(current_user.id, true)
    @low_card_babyfaces = Wrestler.set_low_card_babyfaces(current_user.id, true)
    @low_card_heels = Wrestler.set_low_card_heels(current_user.id, true)
    @undercard_babyfaces = Wrestler.set_undercard_babyfaces(current_user.id, true)
    @undercard_heels  = Wrestler.set_undercard_heels(current_user.id, true)
  end

  def show
  end

  def new
    @wrestler = Wrestler.new
  end

  def edit
  end

  def create
    @wrestler = Wrestler.new(wrestler_params)
    @wrestler.user_id = current_user.id
    if @wrestler.save
      redirect_to @wrestler, notice: 'Wrestler was successfully created.'
    else
      render :new
    end
  end

  def update
    if @wrestler.update(wrestler_params)
      redirect_to @wrestler, notice: 'Wrestler was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @wrestler.destroy
    redirect_to wrestlers_url, notice: 'Wrestler was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_wrestler
    @wrestler = Wrestler.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def wrestler_params
    params.require(:wrestler).permit(:name, :image, :alignment, :position, :injured, :user_id)
  end
end
