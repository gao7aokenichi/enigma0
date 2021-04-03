class EnigmasController < ApplicationController
  before_action :set_enigma, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]
  
  def index
    @enigmas = Enigma.includes(:user).order("created_at DESC")
  end

  def new
    @enigma = Enigma.new
  end

  def create
    Enigma.create(enigma_params)
  end

  def destroy
    enigma = Enigma.find(params[:id])
    enigma.destroy
  end

  def edit
  end

  def update
    enigma = Enigma.find(params[:id])
    enigma.update(enigma_params)
  end

  def show
  end

  private
  def enigma_params
    params.require(:enigma).permit(:image, :text).merge(user_id: current_user.id)
  end

  def set_enigma
    @enigma = Enigma.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
