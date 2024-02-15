class Board < ApplicationRecord
  include Visible

  has_many :lists, dependent: :destroy

  validates :name, presence: true
end
