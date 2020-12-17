class Ephemery < ApplicationRecord
  belongs_to :category

  delegate :description, to: :category, prefix: :category, allow_nil: true
end
