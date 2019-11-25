class ArtPiecesController < ApplicationController
  def index
    @art_pieces = Art_iece.all
  end

  def new
    @art_piece = Art_piece.new
  end

  def show
    @art_piece = Art_piece.find(params[:id])
  end
end
