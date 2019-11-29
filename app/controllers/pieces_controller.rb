class PiecesController < ApplicationController
  def index
    @pieces = policy_scope(Piece)
    @available_pieces = Piece.where(sold: false)
    authorize @available_pieces
    @f_pieces = @available_pieces.where.not(user: current_user)
    if params[:query].present?
      @f_pieces = @f_pieces.where("title ILIKE ?", "%#{params[:query]}%")
    else
      @f_pieces = @f_pieces.where(sold: false)
    end
  end

  def new
    @piece = Piece.new
    authorize @piece
  end

  def show
    @piece = Piece.find(params[:id])
    authorize @piece
  end

  def create
    @piece = Piece.new(piece_params)
    authorize @piece
    @piece.user = current_user
    if @piece.save
      redirect_to piece_path(@piece)
    else
      render :new
    end
  end

  def edit
    @piece = Piece.find(params[:id])
    authorize @piece
  end

  def update
    @piece = Piece.find(params[:id])
    @piece.sold = false
    @piece.update(piece_params)
    redirect_to piece_path(@piece)
  end

  def destroy
    @piece = Piece.find(params[:id])
    @piece.destroy
    authorize @piece
    redirect_to dashboard_path
  end

  # ----- USER PIECES -----
  def dashboard
    @user_pieces = current_user.pieces
    authorize @user_pieces
    @bought_transacts = current_user.transacts
    @sells_transacts = Transact.where(piece_id: @user_pieces.ids)
  end

  private

  def piece_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:piece).permit(:title, :artist, :category_id, :year, :description, :price, :address)
  end
end
