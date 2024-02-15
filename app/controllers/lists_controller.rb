class ListsController < ApplicationController
  http_basic_authenticate_with name: ENV["BASIC_AUTH_USERNAME"], password: ENV["BASIC_AUTH_PASSWORD"], only: :destroy

  def create
    @board = Board.find(params[:board_id])
    @list = @board.lists.create(list_params.merge(status: 'active'))

    redirect_to board_path(@board)
  end

  def destroy
    @board = Board.find(params[:board_id])
    @list = @board.lists.find(params[:id])
    @list.destroy

    redirect_to board_path(@board), status: :see_other
  end

  private
    def list_params
      params.require(:list).permit(:name, :status)
    end
end
