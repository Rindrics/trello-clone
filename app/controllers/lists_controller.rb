class ListsController < ApplicationController
  def create
    @board = Board.find(params[:board_id])
    @list = @board.lists.create(list_params.merge(status: 'active'))

    redirect_to board_path(@board)
  end

  private
    def list_params
      params.require(:list).permit(:name, :status)
    end
end
