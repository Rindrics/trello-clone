class AddStatusToBoards < ActiveRecord::Migration[7.0]
  def change
    add_column :boards, :status, :string
  end
end
