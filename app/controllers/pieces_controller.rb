class PiecesController < ApplicationController
  def index
    @categories = Category.all
      @available_pieces = Piece.where(sold: false)
    if params[:query].present?
      @available_pieces = @available_pieces.where("title ILIKE ?", "%#{params[:query]}%")
    else
      @available_pieces = @available_pieces.where(sold: false)
    end
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
    redirect_to user_index_path
  end

  # ----- USER PIECES -----
  def user_index
    @categories = Category.all
    @user_pieces = Piece.where(user: current_user)
    @transacts = Transact.where(user: current_user)

    @bought_pieces = []
    @transacts.each do |transact|
      @bought_pieces << transact.piece if transact.user == current_user
    end
    @pieces
  end

  private

  def piece_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:piece).permit(:title, :artist, :category_id, :year, :description, :price, :address)
  end
end
