class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def show
    @board = Board.find(params[:id])
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params.merge(status: "active"))

    if @board.save
      redirect_to @board
    else
      puts @board.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    @board = Board.find(params[:id])

    if @board.update(board_params)
      redirect_to @board
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @board = Board.find(params[:id])
    @board.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def board_params
      params.require(:board).permit(:name, :status)
    end
end
