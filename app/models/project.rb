class Project < ApplicationRecord
  has_many :todos, dependent: destroy

  validates :title, presence: true, length: { min: 3 }
end