class WrestlersController < ApplicationController
  before_action :set_wrestler, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @wrestlers = Wrestler.all
    @main_event_babyfaces, @main_event_heels, @high_card_babyfaces, @high_card_heels, @mid_card_babyfaces,
        @mid_card_heels, @low_card_babyfaces, @low_card_heels, @undercard_babyfaces, @undercard_heels = Wrestler.sort!(current_user.id)
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
