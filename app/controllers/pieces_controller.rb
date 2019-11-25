class PiecesController < ApplicationController
  def index
    @pieces = Piece.all
  end

  def new
    @piece = Piece.new
  end

  def show
    @piece = Piece.find(params[:id])
  end

  def create
    @piece = Piece.new(piece_params)
    if @piece.save
      redirect_to cocktail_path(@piece)
    else
      render :new
    end
  end

  private

  def piece_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:piece).permit(:title, :artist, :year, :description, :price)
  end
end
