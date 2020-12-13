class Todo < ApplicationRecord
  belongs_to :project

  validates :text, presence: true, length: { min: 3 }
end
