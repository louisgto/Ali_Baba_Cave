class PiecesController < ApplicationController
  def index
    @pieces = Piece.all
    @categories = Category.all
  end

  def new
    @piece = Piece.new
  end

  def show
    @piece = Piece.find(params[:id])
  end

  def create
    @piece = Piece.new(piece_params)
    @piece.user = current_user
    if @piece.save
      redirect_to piece_path(@piece)
    else
      render :new
    end
  end

  def edit
    @piece = Piece.find(params[:id])
  end

  def update
    @piece = Piece.find(params[:id])
    @piece.update(piece_params)
    redirect_to piece_path(@piece)
  end

  def destroy
    @piece = Piece.find(params[:id])
    @piece.destroy
    redirect_to pieces_path
  end

  # ----- USER PIECES -----
  def user_index
    @user_pieces = []
    @pieces = Piece.all
    @pieces.each do |piece|
      @user_pieces << piece if piece.user == current_user
    end
    @categories = Category.all
  end

  private

  def piece_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:piece).permit(:title, :artist, :year, :category_id, :description, :price, :address)
  end
end
