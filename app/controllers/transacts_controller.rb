class TransactsController < ApplicationController
  def index
    @piece = Piece.find(params[:piece_id])
    @transacts = Transact.find(params[:user_id])
  end

  def new
    @transact = Transact.new
    @piece = Piece.find(params[:piece_id])
    @transact.piece = @piece
  end

  def create
    @transact = Transact.new(transaction_params)
    @transact.piece = Piece.find(params[:piece_id])
    @transact.user = current_user
    @transact.save
    redirect_to transactions_path
  end

  def destroy
    @transact.destroy
    redirect_to pieces_path
  end
end
