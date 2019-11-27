class TransactsController < ApplicationController
  def index
    @piece = Piece.find(params[:piece_id])
    @transacts = Transact.find(params[:user_id])
  end

  def new
    @piece = Piece.find(params[:piece_id])
    @transact = Transact.new
    @transact.piece = @piece
  end

  def create
    @piece = Piece.find(params[:piece_id])
    @transact = Transact.new
    @transact.piece = @piece
    @transact.user = current_user
    @transact.save
    @piece.sold = true
    @piece.save
    redirect_to pieces_path
  end

  def update
    @transact.update
  end

  def destroy
    @transact.destroy
    redirect_to pieces_path
  end
end
