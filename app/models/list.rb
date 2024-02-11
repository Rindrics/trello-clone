class List < ApplicationRecord
  include Visible

  belongs_to :board
end
