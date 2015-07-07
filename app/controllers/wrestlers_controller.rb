class WrestlersController < ApplicationController
  before_action :set_wrestler, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
     @wrestlers = Wrestler.all
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
      params.require(:wrestler).permit(:name, :image, :alignment, :position, :injured?, :user_id)
    end
end
